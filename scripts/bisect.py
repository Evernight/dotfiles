#!/bin/env python

import argparse
import subprocess
import sys

parser = argparse.ArgumentParser(description='bisect')
parser.add_argument('--pre')
parser.add_argument('--post')
args = parser.parse_args()

print "Running pre-script"
if args.pre:
    process = subprocess.Popen(args.pre, stdout=subprocess.PIPE, shell=True)
    print process.communicate()[0]

while True:
    t = raw_input("Is revision good? (y/n)")
    if t.capitalize() == "Y":
        revision_is_bad = False
        break
    if t.capitalize() == "N":
        revision_is_bad = True
        break

print "Running post-script"
if args.post:
    process = subprocess.Popen(args.post, stdout=subprocess.PIPE, shell=True)
    print process.communicate()[0]

sys.exit(revision_is_bad)
