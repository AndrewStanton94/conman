#!/usr/bin/env python3

from shells import historyBuiltin
from packageManagers import *
from packageManagement import getPackages

packages = getPackages.get(historyBuiltin.getHistory(), activePackageManagers)
print(packages)

categories = ['std', 'dev', 'machine', 'se']

sortedPackages = getPackages.categoriseApps(packages, categories)
#print(sortedPackages)
