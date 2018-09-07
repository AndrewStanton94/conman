#!/usr/bin/env python3

from shells import *
from packageManagers import *
from packageManagement import getPackages

print(getPackages.get(activeShells, activePackageManagers))
