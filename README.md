# CSProject
NCTU 2020 Computer Science and Engineering Projects. We research on the topic of binary code clone detection, so we reference many papers and implement some of them.


## GroundTruth]
### Introduction
Get the versions of packages and the binary in all openwrt versions. We use this as our testing data.

### Usage
1. `./main.sh`
2. `./mainbuild.sh`

## BINGO-E
### Introduction
Implement the first phase of BINGO-E.

### Usage
1. Use the function `backup(file1, file2)` in main.py to backup the structural and high-level information which have the file names `backup_<filename>`, or just use the function backupDir(dir1, dir2) to backup the whole file in the directory dir1, dr2.

2. So now we have the backup file in pickle format, then we can use the function Compare(file1, file2) in main.py to print the simularity of them, or just use compareDir(dir1, dir2) to estimate them, and the result will be written to a file called matching.

## asm2vec
### Introduction
Parse the binary to assembly to meet the [github repo](https://github.com/Lancern/asm2vec)

### Usage
Use Jupyter notebook to open the asm2vec.ipynb and run.

## Reference
* BINGO
* BINGO-E
* asm2vec
* bindiff
* CACompare
* Word2vec
