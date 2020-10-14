import os
import pickle
import PrimaryMatching as PM

def backup(p1, p2):
    pm = PM.PrimaryMatching(p1, p2)
    sig_sgc, sig_hlf, tar_sgc, tar_hlf = pm.extract()

    assert len(sig_sgc.function_info) == len(sig_hlf.function_info) and len(tar_sgc.function_info) == len(tar_hlf.function_info)
    sig = [sig_sgc.function_info, sig_hlf.function_info]
    tar = [tar_sgc.function_info, tar_hlf.function_info]

    pm.backup('backup{}'.format(p1), sig, 'backup{}'.format(p2), tar)

def backupDir(dir1, dir2):
    files1 = os.listdir(dir1)
    files2 = os.listdir(dir2)
    for f1, f2 in zip(files1, files2):
        path1 = dir1 + f1
        path2 = dir2 + f2
        if not 'ELF' in os.popen('file {}'.format(path1)).read():
            continue
        print(path1, path2) 
        backup(path1, path2)

def compare(p1, p2):
    pm = PM.PrimaryMatching(p1, p2)
    with open(p1, 'rb') as handle:
        sig = pickle.load(handle)
        sig_structural, sig_highlevel = sig[0], sig[1]
        sig = sig_structural
        for s, h in zip(sig, sig_structural):
            s['systags'] = h['systags']
            s['opcode'] = h['opcode']
            s['localvar'] = h['localvar']
            s['parameter'] = h['parameter']
            s['optype'] = h['optype']
            s['callseq'] = h['callseq']

    with open(p2, 'rb') as handle:
        tar = pickle.load(handle)
        tar_structural, tar_highlevel = tar[0], tar[1]
        tar = tar_structural
        for t, h in zip(tar, tar_highlevel):
            t['systags'] = h['systags']
            t['opcode'] = h['opcode']
            t['localvar'] = h['localvar']
            t['parameter'] = h['parameter']
            t['optype'] = h['optype']
            t['callseq'] = h['callseq']
    
    size = 0
    for t in tar:
        size += t['instructions_num']
    
    program_similarity = 0
    for t in tar:
        if 'main' != t['symbol']: continue
        max_ = -1
        for s in sig:
            if 'main' == t['symbol'] and 'main' == s['symbol']:
                max_ = max(max_, pm.matching(s, t))
                program_similarity = max_
        #program_similarity += max_ * t['instructions_num'] / size
    
    print(p1, p2, program_similarity)
    return program_similarity

def compareDir(dir1, dir2):
    files1 = os.listdir(dir1)
    files2 = os.listdir(dir2)
    for f1 in files1:
        for f2 in files2:
            sim = compare(dir1 + f1, dir2 + f2) 
            matching = open('matching', 'a')
            matching.write('{}\t{}\t{}\n'.format(f1, f2, sim))

def rank1Percent(matching_file, total):
    matching = open(matching_file).read().strip().split('\n')
    count = 0
    for i in range(0, len(matching), total):
        max_ = -1
        for j in range(i, i + total):
            m = matching[j].split('\t')
            f1, f2, sim = m[0], m[1], float(m[2])
            if sim > max_:
                now = m
                max_ = sim
        #print(now)
        if now[0] == now[1]:
            count += 1
        else:
            print(now)

    print('rank 1: {}%\n'.format(count / total * 100))
 
rank1Percent('matching', 109)   
#compareDir('backup/coreutils_O2/', 'backup/coreutils_O3/')
