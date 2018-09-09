#!/usr/bin/env python3

from shells import historyBuiltin
from packageManagers import *
from packageManagement import getPackages
from fileSystem import folders

def findLocalPackages():
    packages = getPackages.get(historyBuiltin.getHistory(), activePackageManagers)
    print(packages)

    categories = ['std', 'dev', 'machine']

    sortedPackages = getPackages.categoriseApps(packages, categories)
    print(sortedPackages)

    folders.makeStructure(sortedPackages, 'pm/')

findLocalPackages()
