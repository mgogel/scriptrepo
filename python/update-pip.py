#!/usr/bin/env python

"""
(i.e. with `sudo pip install`).

"""

from __future__ import (absolute_import, division, print_function,
                        unicode_literals)

import os

import pip


dists = []
for dist in pip.get_installed_distributions():
    dists.append(dist.project_name)

dists = sorted(dists, key=lambda s: s.lower())
dists.insert(0, 'pip')  # let 'pip' be the first

for dist_name in dists:
    cmd = "sudo pip install {0} -U".format(dist_name)
    print('#', cmd)
    os.system(cmd)