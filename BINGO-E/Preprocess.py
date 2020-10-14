import angr
import sys
import os
import r2pipe

class Preprocess():
    def __init__(self, filename):
        self.filename = filename
        self.proj = angr.Project(self.filename, load_options={'auto_load_libs': False, 'main_opts': {'custom_base_addr': 0}})
        self.cfg = self.proj.analyses.CFGFast(normalize=True)
        self.block_info = []
        self.function_info = []

        #
        # Key: address
        # Value: hex(address), function name
        #
        self.plts = {} 
       
    def displayBlock(self):
        for i in self.block_info:
            print(i)

    def displayFunction(self):
        for i in self.function_info:
            print(i) 

    def initBlockInfo(self):
        #
        # Check: Initialize a block info which has following keys
        #     self.block_info - basic block structure: 
        #     index: int
        #     symbol: string
        #     addr: int
        #     addr16: string
        #     is_function: boolean
        #     ingoing_nodes: list of int
        #     outgoing_nodes: list of int
        #     dominators: set
        #     instructions_num: int
        #     asm: string
        #
        return {'index': 0, 'symbol': '', 'addr': 0, 'addr16': '', 'is_function': False, 'ingoing_nodes': [], 'outgoing_nodes': [], 'dominators': set(), 'instructions_num': 0, 'asm': ''}

    def initFunctionInfo(self):
        #
        # Check: Initialize a function info which has following keys
        #     function_index: int
        #     index, symbol, addr, addr16: same as block_info
        #     function_range: list of int
        #     asm: string
        #
        return {'function_index': 0, 'index': 0, 'symbol': '', 'addr': 0, 'addr16': '', 'function_range': [0, 0], 'instructions_num': 0, 'asm': ''}

    def allWorks(self):
        self.getSymbol()
        self.getAddress()
        self.getPlts()
        self.getRelationNodes()
        self.getInstructionsNum()
        self.getFunctionInfo()
        self.getAssembly()
        self.deleteFunction()
        self.getFunctionDominator()

    def getPlts(self):
        #
        # Check: Get the function name, address, system call tag from objdump
        # Complexity: O(n), n = lines of objdump of a program
        # 
        os.system('objdump -M intel -d {} > tmp'.format(self.filename))
        objdump = open('tmp', 'r').read().split('\n')
        for line in objdump:
            if '@plt>:' in line:
                addr = int(line.split(' ')[0], 16)
                func = line.split('<')[1].split('@')[0]
                self.plts[addr] = [hex(addr), func]
        os.system('rm tmp')


    def getSymbol(self):
        #
        # Check: Get the symbols in the binary and initialize self.block_info
        # Complexity: O(n), n = number of nodes of a program
        #
        nodes = self.cfg.graph.nodes()
        for n in nodes:
            symbol = str(n).split('[')[0].split(' ')[1].strip()
            if symbol != '':
                block = self.initBlockInfo()
                block['symbol'] = symbol
                self.block_info += [block]

    def getAddress(self):
        #
        # Check: Get the addresses of symbols
        #        Determine which address is the start of function
        #        Sort the order of block_info by comparing the addr
        # Complexity: O(nlog(n)), n = number of nodes of a program
        #        
        function_addr = [i for i in self.cfg.kb.functions] 
        for block in self.block_info:
            symbol = block['symbol']
            if '+' in symbol:
                try:
                    symbol_name, offset = symbol.split('+')[0], int(symbol.split('+')[1][2:], 16)
                except:
                    symbol_name, offset = symbol, 0
            elif '-' in symbol:
                try:
                    symbol_name, offset = symbol.split('-')[0], int('-' + symbol.split('-')[1][2:], 16)
                except:
                    symbol_name, offset = symbol, 0
            else:
                symbol_name, offset = symbol, 0
            try:
                symbol_addr = self.proj.loader.find_symbol(symbol_name).rebased_addr
            except:
                try:
                    symbol_addr = int(symbol_name[2:], 16)
                except:
                    pass
            block['addr'] = symbol_addr + offset
            block['addr16'] = hex(block['addr'])
            if block['addr'] in function_addr:
                block['is_function'] = True
                function_addr.remove(block['addr'])
        
        self.block_info.sort(key = lambda e: e['addr'])
        for i in range(len(self.block_info)):
            self.block_info[i]['index'] = i

    def getRelationNodes(self):
        #
        # Check: Get the nodes from ingoing edges
        #        Get the nodes from outgoing edges
        # Complexity: O(nm), n = number of edges of a program, m = number of nodes of a program
        #
        edges = self.cfg.graph.edges()
        for edge in edges:
            ingoing = str(edge).split(' ')[1]
            if '>' in ingoing:
                outgoing = str(edge).split(' ')[3]
            else:
                outgoing = str(edge).split(' ')[4]
            
            outgoing_id = -1
            ingoing_id = -1

            for i in range(len(self.block_info)):
                if ('>' in ingoing and self.block_info[i]['symbol'] in ingoing) or (self.block_info[i]['symbol'] == ingoing):
                    ingoing_id = i
                if ('>' in outgoing and self.block_info[i]['symbol'] in outgoing) or (self.block_info[i]['symbol'] == outgoing):
                    outgoing_id = i
                if outgoing_id != -1 and ingoing_id != -1:
                    break
            if outgoing_id != -1:
                self.block_info[ingoing_id]['outgoing_nodes'] += [outgoing_id]
            if ingoing_id != -1:
                self.block_info[outgoing_id]['ingoing_nodes'] += [ingoing_id]

    def getInstructionsNum(self):
        #
        # Check: Get the number of instructions in each block
        # Complexity: O(n), n = number of nodes
        #
        for block in self.block_info:
            try:
                block['instructions_num'] = self.proj.factory.block(block['addr']).instructions
            except:
                pass
    
    def getFunctionInfo(self):
        #
        # Check: Get function_info, construct a structure to log some information of function
        # Complexity: O(n), n = number of nodes in a program
        #
        def cutFunction(start):
            while start < len(self.block_info) and not self.block_info[start]['is_function']:
                start += 1
            return start

        now_index, next_index = 0, 0
        sequential = 0
        while now_index < len(self.block_info):
            next_index = cutFunction(now_index + 1)
            new_func = self.initFunctionInfo()
            new_func['function_index'] = sequential
            sequential += 1
            new_func['index'] = now_index
            new_func['symbol'] = self.block_info[now_index]['symbol']
            new_func['addr'] = self.block_info[now_index]['addr']
            new_func['addr16'] = self.block_info[now_index]['addr16']
            new_func['function_range'] = [now_index, next_index]
            for i in range(now_index, next_index):
                new_func['instructions_num'] += self.block_info[i]['instructions_num']
            self.function_info.append(new_func)
            now_index = next_index

    def getAssembly(self):
        #
        # Check: Get assembly code of each block
        # Complexity: O(n), n = number of nodes in a program
        #
        stdout = sys.stdout
        for block in self.block_info:
            try:
                tmp = open('tmp', 'w')
                sys.stdout = tmp
                self.proj.factory.block(block['addr']).pp()
                sys.stdout = stdout
                tmp.close()
                block['asm'] = open('tmp', 'r').read()
            except:
                pass
        os.system('rm tmp')

        for func in self.function_info:
            for i in range(func['function_range'][0], func['function_range'][1]):
                func['asm'] += self.block_info[i]['asm']

    def deleteFunction(self):
        #
        # Check: Delete the functions that are not recognized as function (no ret)
        # Complexity: O(n), n = number of instructions in a program
        #
        index = len(self.function_info) - 1
        r = r2pipe.open(self.filename)
        r.cmd('aaa')
        while index >= 0:
            if not r.cmd('s {}; afi~arg'.format(self.function_info[index]['addr16'])):
                self.function_info.pop(index)
            index -= 1
        return len(self.function_info)
        

    def getFunctionDominator(self):
        #
        # Check: Get dom(n) of every node n in a function
        # Implement:
        #     https://en.wikipedia.org/wiki/Dominator_(graph_theory) 
        # Reference:
        #     https://www.cs.utexas.edu/~pingali/CS375/2010Sp/lectures/LoopOptimizations.pdf
        # Complexity: O(fn^2), f = number of functions in a program, n = number of nodes of a function, m = number of edges of a function
        #
        for block in self.block_info:
            block['dominators'] |= set([block['index']])
        for func in self.function_info:
            times = 0
            dead = 2 * pow(func['function_range'][1] - func['function_range'][0], 2)
            changed = True
            while changed:
                times += 1
                changed = False
                for now_node in range(func['function_range'][0], func['function_range'][1]):
                    now_set = set()
                    for ingoing_node in self.block_info[now_node]['ingoing_nodes']:
                        if not func['function_range'][1] > ingoing_node >= func['function_range'][0] or now_node in self.block_info[ingoing_node]['dominators']:
                            continue
                        if not now_set: now_set = self.block_info[ingoing_node]['dominators']
                        else: now_set = now_set & self.block_info[ingoing_node]['dominators']
                    #print(now_node, now_set)
                    now_set = now_set | set([now_node])
                    if now_set != self.block_info[now_node]['dominators']:
                        self.block_info[now_node]['dominators'] = now_set
                        changed = True
                if times > dead:
                    break
