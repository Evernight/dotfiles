#!/usr/bin/env python

import os
import shutil
from datetime import datetime

backup_dir = './backup/' + datetime.now().strftime('%y-%m-%d_%H-%M-%S')
os.makedirs(backup_dir)

def backup_file(filename):
    if os.path.exists(filename):
        #print 'Path exists, creating backup in %s' % backup_dir
        shutil.copy(filename, backup_dir)

def copy_files():
    for file in os.listdir('copy/'):
        src = './copy/' + file
        dest = os.path.expanduser('~/' + file)
        print 'Copying %s to %s' % (src, dest)
        backup_file(dest)
        shutil.copy(src, dest)

def link_files():
    for file in os.listdir('link/'):
        src = os.path.abspath('./link/' + file)
        dest = os.path.expanduser('~/' + file)
        print 'Linking %s to %s' % (src, dest)
        backup_file(dest)
        if os.path.lexists(dest):
            os.remove(dest)
        os.symlink(src, dest)

copy_files()
link_files()
