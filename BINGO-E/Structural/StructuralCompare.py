import pickle

class StructuralCompare():
    def __init__(self):
        self.tar_size = 0
        self.sig_size = 0
        self.tar_percent_index = 0
        self.sig_percent_index = 0

    def load(self, tar, sig):
        self.tar_filename = tar
        self.sig_filename = sig
        self.percent = 100
        with open(sig, 'rb') as handle:
            self.sig = pickle.load(handle)
        with open(tar, 'rb') as handle:
            self.tar = pickle.load(handle)

    def allWorks(self):
        self.countSize()
        self.sortBySize()
        self.getPercentIndex()
        return self.averageSimilarity()

    def countSize(self):
        #
        # Check: Caculate sum of the instructions
        # Complexity: O(n), n = number of functions of program
        #
        for t in self.tar:
            self.tar_size += t['w']
        for f in self.sig:
            self.sig_size += f['w']
        return self.tar_size, self.sig_size

    def sortBySize(self): 
        #
        # Check: Sort the function by weight of a program
        # Complexity: O(nlg(n)), n = number of functions of program
        #
        self.tar.sort(key = lambda e: e['w'], reverse = True)
        self.sig.sort(key = lambda e: e['w'], reverse = True)

    def getPercentIndex(self):
        #
        # Check: Get the index covering 50% of weight
        # Complexity: O(n), n = number of functions of program
        #
        tar_accum = 0
        for i in range(len(self.tar)):
            tar_accum += self.tar[i]['w']
            if float(tar_accum) / self.tar_size >= self.percent / float(100):
                self.tar_percent_index = i + 1
                break

        sig_accum = 0
        for i in range(len(self.sig)):
            sig_accum += self.sig[i]['w']
            if float(sig_accum) / self.sig_size >= self.percent / float(100):
                self.sig_percent_index = i + 1
                break        
        return self.tar_percent_index, self.sig_percent_index

    def averageSimilarity(self):
        #
        # Check: Compare two program
        # Complexity: O(n), n = number of functions of program
        #
        sim_sig = 0
        for s in self.sig[:self.sig_percent_index]:
            max_ = -1
            for t in self.sig[:self.tar_percent_index]:
                max_ = max(max_, 1 - self.fdd(s, t))
            sim_sig += max_
        sim_sig = sim_sig / self.sig_percent_index

        sim_tar = 0
        for t in self.tar[:self.tar_percent_index]:
            max_ = -1
            for s in self.sig[:self.sig_percent_index]:
                max_ = max(max_, 1 - self.fdd(s, t))
            sim_tar += max_
        sim_tar = float(sim_tar) / self.tar_percent_index

        similarity = (sim_sig + sim_tar) / 2
        similarity *= 1 - abs(self.sig_percent_index - self.tar_percent_index) / (self.sig_percent_index + self.tar_percent_index)
        #print(self.tar_filename, self.sig_filename, similarity)
        return similarity

    def cdd(self, c1, c2):
        #
        # Check: Compute Centroid Difference Degree of the two centroids c1, c2 (BingoE p.7)
        # Complexity: O(1)
        #
        w, x, y, z = 0, 0, 0, 0
        if c1['w'] + c2['w'] != 0: w = abs(c1['w']-c2['w'])/(c1['w']+c2['w'])
        if c1['x'] + c2['x'] != 0: x = abs(c1['x']-c2['x'])/(c1['x']+c2['x'])
        if c1['y'] + c2['y'] != 0: y = abs(c1['y']-c2['y'])/(c1['y']+c2['y'])
        if c1['z'] + c2['z'] != 0: z = abs(c1['z']-c2['z'])/(c1['z']+c2['z'])
        return max(w, x, y, z)

    def fdd(self, c1, c2):
        #
        # Check: Compute Function Difference Degree (BingoE p.7)
        # Complexity: O(1)
        #
        w, x, y, z, w2, x2, y2, z2 = 0, 0, 0, 0, 0, 0, 0, 0
        if c1['w'] + c2['w'] != 0: w = abs(c1['w']-c2['w'])/(c1['w']+c2['w'])
        if c1['x'] + c2['x'] != 0: x = abs(c1['x']-c2['x'])/(c1['x']+c2['x'])
        if c1['y'] + c2['y'] != 0: y = abs(c1['y']-c2['y'])/(c1['y']+c2['y'])
        if c1['z'] + c2['z'] != 0: z = abs(c1['z']-c2['z'])/(c1['z']+c2['z'])
        if c1['w2'] + c2['w2'] != 0: w2 = abs(c1['w2']-c2['w2'])/(c1['w2']+c2['w2'])
        if c1['x2'] + c2['x2'] != 0: x2 = abs(c1['x']-c2['x'])/(c1['x']+c2['x'])
        if c1['y2'] + c2['y2'] != 0: y2 = abs(c1['y']-c2['y'])/(c1['y']+c2['y'])
        if c1['z2'] + c2['z2'] != 0: z2 = abs(c1['z']-c2['z'])/(c1['z']+c2['z'])
        return max(w, x, y, z, w2, x2, y2, z2)
