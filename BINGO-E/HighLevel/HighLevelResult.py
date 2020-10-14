from Preprocess import *
from HighLevelFeatures import *
import os
import pickle

class HighLevelResult():
    def __init__(self):
        self.dirs = ''
        self.files = []
        self.type = 'ELF'

    def scanDir(self, dirs):
        self.dirs = dirs
        for d in self.dirs:
            if not os.path.isdir('.' + d):
                os.system('mkdir .' + d)
            print(d)
            
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
        
        hlf = HighLevelFeatures(pr)
        hlf.getAll()

        if p[0] != '.':
            p = '.' + p
        else:
            p = p + '_res'
        with open(p, 'wb') as handle:
            pickle.dump(hlf.function_info, handle)
        return p
