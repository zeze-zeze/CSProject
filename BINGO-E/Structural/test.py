from StructuralResult import *
from StructuralCompare import *

def SR():
    sr = StructuralResult()
    #sr.getAttributes('/coreutils/src/who')
    sr.scanDir(['/src_O2/'])

def SC():
    dir1 = 'src_O2/'
    dir2 = 'src_O3/'
    files1 = os.listdir(dir1)
    files2 = os.listdir(dir2)

    for f1 in files1:
        for f2 in files2:
            path1 = dir1 + f1
            path2 = dir2 + f2
            sc = StructuralCompare(path1, path2)
            similarity = sc.allWorks()
            print(path1, path2, similarity)
            e = open('evaluate', 'a')
            e.write('{}, {}, {}\n'.format(path1, path2, similarity))

SC()
