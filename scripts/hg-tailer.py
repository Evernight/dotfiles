#!/usr/bin/env python
import subprocess
import select
import time
import sys
import os

filename = sys.argv[1]

f = subprocess.Popen(
    ['tail','-F', filename],
    stdout=subprocess.PIPE,
    stderr=subprocess.PIPE
)

f = subprocess.Popen(['tail','-F',filename], stdout=subprocess.PIPE, stderr=subprocess.PIPE)

last_update = time.time()
while True:
    if select.select([f.stdout], [], [], 1):
        print '111'
        print f.stdout.readline()
    print '@'
    time.sleep(1)

