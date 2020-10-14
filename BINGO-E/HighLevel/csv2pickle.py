import pickle
import csv

def getAll():
    getSyscallTable()
    getOpcodeTable()

def getSyscallTable():
    syscall_table = {}
    with open('syscall_table.csv') as f:
        rows = csv.reader(f)
        for row in rows:
            syscall_table[row[2]] = row

    with open('syscall_table.pkl', 'wb') as f:
        pickle.dump(syscall_table, f)

def getOpcodeTable():
    opcode_table = {}
    with open('opcode_table.csv') as f:
        rows = csv.reader(f)
        for row in rows:
            opcode_table[row[2]] = row

    with open('opcode_table.pkl', 'wb') as f:
        pickle.dump(opcode_table, f)

getAll()
