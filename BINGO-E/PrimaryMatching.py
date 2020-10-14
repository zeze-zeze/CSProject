import pickle
import Preprocess as P
import Structurals as S
import HighLevels as HL

class PrimaryMatching():
    def __init__(self, sig_file, tar_file):
        self.sig_file = sig_file
        self.tar_file = tar_file

    def preprocess(self, filename):
        p = P.Preprocess(filename)
        p.allWorks()
        return p

    def extract(self):
        sig_p = self.preprocess(self.sig_file)
        sig_sf = S.structuralFeatures(sig_p)
        sig_sgc = S.structuralGetCentroid(sig_sf)
        sig_hlf = HL.highLevelFeatures(sig_p)

        tar_p = self.preprocess(self.tar_file)
        tar_sf = S.structuralFeatures(tar_p)
        tar_sgc = S.structuralGetCentroid(tar_sf)
        tar_hlf = HL.highLevelFeatures(tar_p)
        return sig_sgc, sig_hlf, tar_sgc, tar_hlf

    def matching(self, sig_f, tar_f):
        sim_structural = S.structuralCompare(sig_f, tar_f)
        sim_high_level = HL.highLevelCompare(sig_f, tar_f)
        W = min(sig_f['instructions_num'] / tar_f['instructions_num'], tar_f['instructions_num'] / sig_f['instructions_num'])
        sim = (1 - W / 2) * sim_high_level + W / 2 * sim_structural
        return sim

    def backup(self, sig_dst, sig, tar_dst, tar):
        with open(sig_dst, 'wb') as handle:
            pickle.dump(sig, handle)
        with open(tar_dst, 'wb') as handle:
            pickle.dump(tar, handle)
