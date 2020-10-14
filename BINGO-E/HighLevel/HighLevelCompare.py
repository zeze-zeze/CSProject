class HighLevelCompare():
    def __init__(self):
        return

    def jaccardContainmentSimilarity(self, sig, tar):
        #
        # Check: implement of jacaard similarity
        # Complexity: average O(n), n = min(len(sig), min(tar)) 
        # Reference: https://zh.wikipedia.org/wiki/%E9%9B%85%E5%8D%A1%E5%B0%94%E6%8C%87%E6%95%B0 
        #
        try:
            return len(set(sig) & set(tar)) / len(set(sig))
        except:
            return 1

    def minimumEditDistance(self, sig, tar):
        #
        # Check: implement of minimum edit distance
        # Complexity: O(nm), n,m = len(sig),len(tar)
        # Reference: https://www.geeksforgeeks.org/edit-distance-dp-5/ 
        #
        dp = [[] for i in range(2)]
        for i in range(len(sig) + 1):
            dp[0].append(i)
        dp[1] = [0 for i in range(len(sig) + 1)]

        for i in range(1, len(tar) + 1):
            for j in range(len(sig) + 1):
                if j == 0:
                    dp[i % 2][j] = i
                elif sig[j - 1] == tar[i - 1]:
                    dp[i % 2][j] = dp[(i - 1) % 2][j - 1]
                else:
                    dp[i % 2][j] = 1 + min(dp[(i - 1) % 2][j], dp[i % 2][j - 1], dp[(i - 1) % 2][j - 1])

        return dp[len(tar) % 2][len(sig)]

    def getSimilarity(self, sf, tf):
        sim_systags = self.jaccardContainmentSimilarity(sf['systags'], tf['systags'])
        sim_opcode = self.jaccardContainmentSimilarity(sf['opcode'], tf['opcode'])
        sim_localvar = self.jaccardContainmentSimilarity(sf['localvar'], tf['localvar'])
        sim_parameter = self.jaccardContainmentSimilarity(sf['parameter'], tf['parameter'])
        sim_optype = self.jaccardContainmentSimilarity(sf['optype'], tf['optype'])
        sim_callseq = self.jaccardContainmentSimilarity(sf['callseq'], tf['callseq'])
        return (sim_systags + sim_opcode + sim_localvar + sim_parameter + sim_optype + sim_callseq) / 6

    #def averageSimilarity(self):
    #    accum_sig = 0
    #    for sf in self.sig:
    #        max_ = -1
    #        for tf in self.tar:
    #            max_ = max(max_, self.getSimilarity(sf, tf))
    #        accum_sig += max_
    #    accum_sig /= len(self.sig)
    #    
    #    accum_tar = 0
    #    for tf in self.tar:
    #        max_ = -1
    #        for sf in self.sig:
    #            max_ = max(max_, self.getSimilarity(sf, tf))
    #        accum_tar += max_
    #    accum_tar /= len(self.tar)

    #    accum = (accum_sig + accum_tar) / 2 
    #    accum *= 1 - abs(len(self.sig) - len(self.tar)) / (len(self.sig) + len(self.tar))
    #    return accum
