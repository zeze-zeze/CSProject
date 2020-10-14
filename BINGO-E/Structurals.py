import pickle
import Structural.StructuralFeatures as SF
import Structural.StructuralGetCentroid as SGC
import Structural.StructuralCompare as SC

def structuralFeatures(p):
    sf = SF.StructuralFeatures(p)
    sf.allWorks()
    return sf

def structuralGetCentroid(sf):
    sgc = SGC.StructuralGetCentroid(sf)
    sgc.getCentroid()
    return sgc

def structuralResult(dst, sgc):
    with open(dst, 'wb') as handle:
        pickle.dump(sgc,function_info, handle)
    return dst

def structuralCompare(sf, tf):
    sc = SC.StructuralCompare()
    return 1 - sc.fdd(sf, tf)
