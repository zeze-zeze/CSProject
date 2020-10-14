import pickle
import re
import r2pipe

class HighLevelFeatures():
    def __init__(self, preprocess):
        self.filename = preprocess.filename
        self.block_info = preprocess.block_info
        self.plts = preprocess.plts
        #
        # systags: list, system call tags sequence
        # opcode: list, opcode sequence
        # localvar: list, local variable
        # parameter: list, number of function parameter
        # optype: list, type of opcode
        # callseq: list, call sequence of longest program path
        #
        self.function_info = preprocess.function_info
        for func in self.function_info:
            func['systags'] = []
            func['opcode'] = []
            func['localvar'] = []
            func['parameter'] = []
            func['optype'] = []
            func['callseq'] = []

    def displayFunction(self):
        for f in self.function_info:
            print(f)

    def allWorks(self):
        print('getOpcode')
        self.getOpcode()
        print('getOptype')
        self.getOptype()
        print('getSystemCallTags')
        self.getSystemCallTags()
        print('getFunctionParameter')
        self.getFunctionParameter()
        print('getLocalVarParameter')
        self.getLocalVariable()
        print('getFunctionCallSequence')
        self.getFunctionCallSequence()

    def getOpcode(self):
        #
        # Check: Get opcode from assembly in the order of address
        # Complexity: O(n), n = number of instructions in a program
        #
        for func in self.function_info:
            for asm in func['asm'].strip().split('\n'):
                try:
                    op = asm.split('\t')[1]
                    func['opcode'].append(op)
                except:
                    pass
        
    def getOptype(self):
        #
        # Check: Get optype from assembly in the order of address
        # Complexity: O(n), n = number of instructions in a program
        # Reference: https://docs.oracle.com/cd/E19620-01/805-4693/805-4693.pdf 
        #
        opcode_table = pickle.load(open('HighLevel/opcode_table.pkl', 'rb'))
        for func in self.function_info:
            for asm in func['asm'].strip().split('\n'):
                try:
                    op = asm.split('\t')[1]
                    func['optype'].append(opcode_table[op][1])
                except:
                    pass
        return

    def getSystemCallTags(self):
        #
        # Check: Get system call tags from assembly in the order of address of call
        # Complexity: O(n), n = number of instructions in a program
        # Reference: https://www.gnu.org/software/libc/manual/html_node/Function-Index.html 
        #
        syscall_table = pickle.load(open('HighLevel/syscall_table.pkl', 'rb'))
        for func in self.function_info:
            for asm in func['asm'].split('\n'):
                if 'call' in asm:
                    callee = asm.split('\t')[2].strip()
                    try:
                        func['systags'].append(syscall_table[self.plts[int(callee[2:], 16)][1]][1])
                    except:
                        try:
                            for sub in self.plts[int(callee[2:], 16)][1].split('_'):
                                func['systags'].append(syscall_table[sub][1])
                        except:
                            pass
    
    def getFunctionCallSequence(self):
        #
        # Check: First calculate longest program path, then get system call tags from assembly call of longest program path
        # Complexity: O(n + m), n = number of edges in a program, m = number of instructions in a program
        # Implement:
        #     1. BFS to find longest program path
        #     2. get call sequence
        #
        def getLongestProgramPath(func):
            range0, range1 = func['function_range'][0], func['function_range'][1]
            blocks = [[] for i in range(range1 - range0)]
            stack = [range0]
            blocks[0] = [range0]
            count = 0
            while stack:
                count += 1
                if count > (range1 - range0) * 3:
                    break
                now = stack.pop(0)
                for out in self.block_info[now]['outgoing_nodes']:
                    #print(now, out, range0, range1)
                    #print(blocks)
                    if out not in self.block_info[now]['dominators'] and out < range1 and out >= range0 and len(blocks[now - range0]) + 1 > len(blocks[out - range0]):
                        stack.append(out)
                        blocks[out - range0] = blocks[now - range0] + [out]
            #print(blocks) 
            max_block = []
            for block in blocks:
                if len(block) > len(max_block):
                    max_block = block

            return max_block
        
        for func in self.function_info:
            blocks = getLongestProgramPath(func)
            for block in blocks:
                for asm in self.block_info[block]['asm'].split('\n'):
                    if 'call' in asm:
                        callee = asm.split('\t')[2].strip()
                        try:
                            func['callseq'].append(self.plts[int(callee[2:], 16)][1])
                        except:
                            pass

    def getFunctionParameter(self): 
        #
        # Check: Get function parameter from assembly function prologue
        # Complexity: O(n * r2pipe analysis complexity), n = number of function in a program
        #
        r = r2pipe.open(self.filename)
        r.cmd('aaa')
        for func in self.function_info:
            res = r.cmd('s {}; afi~arg'.format(func['addr16']))
            try:
                res = int(res.split('\n')[0].split(' ')[1])
            except:
                res = 0
            func['parameter'] = [i for i in range(res)]
    
    def getLocalVariable(self): 
        #
        # Check: Get local variable from assembly mov in the form of [rbx - XX]
        # Complexity: O(n), n = number of instructions in a program
        #
        for func in self.function_info:
            for asm in func['asm'].split('\n'):
                asm = asm.split(',')[0]
                res = re.search('\[[re][bs]p [+-]', asm)
                if 'mov' in asm and res:
                    func['localvar'].append(asm[res.span()[0]:])
