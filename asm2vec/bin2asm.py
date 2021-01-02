#!/usr/bin/env python3
import re
import os
import click
import r2pipe
import hashlib

def sha3(m):
    return hashlib.sha3_256(m.encode()).hexdigest()

def validEXE(filename):
    magics = [bytes.fromhex('7f454c46')]
    with open(filename, 'rb') as f:
        header = f.read(4)
        if header not in magics:
            return False
    return True

def bin2asm(filename, output_dir, minLen=5):
    if not validEXE(filename):
        return
    r = r2pipe.open(filename)
    r.cmd('aaaa')
    for func in r.cmdj('aflj'):
        name, offset = func['name'], func['offset']
        r.cmd(f's {offset}')
        ops = r.cmdj('pdfj')['ops']
        if len(ops) < minLen:
            continue
        if 'invalid' not in [op['type'] for op in ops]:
            labels, scope = {}, [op['offset'] for op in ops]
            for i, op in enumerate(ops):
                if i == 0:
                    labels.setdefault(op['offset'], i)
                elif op.get('jump') and op['jump'] in scope:
                    labels.setdefault(op.get('jump'), i)
            output = ''
            for op in ops:
                if labels.get(op['offset']) is not None:
                    output += f'LABEL{labels.get(op["offset"])}:\n'
                if labels.get(op.get('jump')) is not None:
                    output += f' {op["type"]} LABEL{labels[op["jump"]]}\n'
                else:
                    # normalization
                    opcode = re.sub(r'0x[0-9a-f]+', 'CONST', op['opcode'])
                    output += f' {opcode}\n'
            uid = sha3(output)
            if not os.path.exists(f'{output_dir}/{uid}'):
                with open(f'{output_dir}/{uid}', 'w') as f:
                    f.write(output)
                print(f'[INFO] Write function at {offset:016x} in {filename} to {uid}')

@click.command()
@click.argument('path')
@click.option('-o', '--output-dir', default='asm', help='Output directory')
@click.option('-l', '--len', 'minLen', default=5, help='Only output assembly code larger or equal to this length')
def cli(path, output_dir, minLen):
    '''
    Extract assembly functions from binary executable
    '''
    if len(path) > 1:
        path = path.rstrip('/')
    if len(output_dir) > 1:
        output_dir = output_dir.rstrip('/')
    if not os.path.exists(output_dir):
        os.mkdir(output_dir)
    if os.path.isdir(path):
        for f in os.listdir(path):
            if not os.path.islink(f'{path}/{f}'):
                bin2asm(f'{path}/{f}', output_dir, minLen)
    elif os.path.exists(path):
        bin2asm(path, output_dir, minLen)
    else:
        print(f'[Error] No such file or directory: {path}')

cli()
