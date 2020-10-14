from Preprocess import *
from StructuralFeatures import *
from TestStructuralFeatures import *
import os
import pickle

class StructuralResult():
    def __init__(self):
        self.dirs = ''
        self.files = []
        self.type = 'ELF'

    def scanDir(self, dirs):
        self.dirs = dirs
        for d in self.dirs:
            if not os.path.isdir('.' + d):
                os.system('mkdir .' + d)
            
            all_files = os.listdir(d)
            for f in all_files:
                if self.type in os.popen('file ' + d + f).read():
                    self.files.append(f)

            for f in self.files:
                self.getAttributes(d + f)


    def getAttributes(self, p):
        if os.path.isfile('.' + p) or os.path.isfile(p + '_res'):
            return
        print(p)
        pr = Preprocess(p)
        pr.allWorks()
        #print('Preprocessor')
        #pr.displayBlock()
        
        sf = StructuralFeatures(pr)
        sf.getAll()
        #print('\n\nStructuralFeatures')
        #sf.display()

        test = TestStructuralFeatures(sf)
        test.getCentroid()
        #print('\n\nTestStructuralFeatures')
        #test.displayFunction()
        if p[0] != '.':
            p = '.' + p
        else:
            p = p + '_res'
        with open(p, 'wb') as handle:
            pickle.dump(test.function_info, handle)
