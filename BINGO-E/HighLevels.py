import os
import pickle
import csv
import re
import r2pipe
import HighLevel.HighLevelFeatures as HLF
import HighLevel.HighLevelCompare as HLC

def highLevelFeatures(p):
    hlf = HLF.HighLevelFeatures(p)
    hlf.allWorks()
    return hlf

def highLevelResult(dst, hlf):
    with open(dst, 'wb') as handle:
        pickle.dump(hlf.function_info, handle)
    return dst

def highLevelCompare(sf, tf):
    hlc = HLC.HighLevelCompare()
    return hlc.getSimilarity(sf, tf)
