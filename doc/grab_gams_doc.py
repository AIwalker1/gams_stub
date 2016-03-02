#!/usr/bin/env python

import errno
import os
import shutil
import fnmatch

def files(match='*.gms', ext='rst'):
    """return all input files in ../model matching `match` and their associated
    output files with the given extension
    """
    pth = os.path.join('..', 'model')
    ins = [os.path.join(d, f) \
           for d, _, files in os.walk(pth) \
           for f in fnmatch.filter(files, match)]

    outs = []
    for inf in ins:
        p, f = os.path.split(inf)
        outf = os.path.join('source', 'model', 
                            p[len(pth) + 1:], 
                            '{}.{}'.format(os.path.splitext(f)[0], ext))
        outs.append(outf)

    return ins, outs

def read_docs(lines):
    """Pull out all documentation lines"""
    ret = []
    on = False
    for line in lines:
        if line.strip().startswith('***'):
            on = not on
        elif on:
            base = "".join(line.split('*')[1:])[1:]
            base = base.rstrip() # get rid of windows carriage return
            ret.append('{}\n'.format(base))
    return ret

def mkdir(d):
    """make a directory if it doesn't already exist"""
    if not os.path.exists(d):
        try:
            os.makedirs(d)
        except OSError as exc: # Guard against race condition
            if exc.errno != errno.EEXIST:
                raise

def main():
    """writes all documentation files from gams files in a mirrored directory
    structure in ./doc
    """
    print('Generating GAMS documentation')
    ins, outs = files()
    for inf, outf in zip(ins, outs):
        print('Reading {}'.format(inf))
        with open(inf, 'r') as f:
            lines = f.readlines()
        doc_lines = read_docs(lines)
        
        if len(doc_lines) > 0:
            print('Writing {}'.format(outf))
            mkdir(os.path.dirname(outf))
            with open(outf, 'w') as f:
                f.writelines(doc_lines)
        else:
            print('No docs found, moving on')
    print('Finished Generating GAMS documentation')
            
if __name__ == "__main__":
    main()
    
    ## for previous testing
    # print(read_docs([
    #     ' ** foo bar\n', 
    #     '   *** bz baz1\n',
    #     '   * bz baz2\n',
    #     '   * bz * baz2\n',
    #     '   *** bz baz3\n',
    #     "***fig newton"]))
