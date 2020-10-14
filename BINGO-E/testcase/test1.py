import angr

proj = angr.Project('./test1', load_options={'auto_load_libs': False})

# Generate a static CFG
cfg = proj.analyses.CFGFast()

def node():
    nodes = cfg.graph.nodes()
    print('{} nodes:\n'.format(len(nodes)))
    for node in nodes:
        print(node)

def edges():
    edges = cfg.graph.edges()
    print('\n\n{} edges:\n'.format(len(edges)))
    for edge in edges:
        print(edge)

def symbol2addr(symbol):
    print(proj.loader.find_symbol(symbol))

def blocks():
    block = proj.factory.block(main+0x56)
    print(block.pp())

blocks()
