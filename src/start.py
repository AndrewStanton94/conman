#!/usr/bin/env python3

from shells import bash
from shells import zsh

from packageManagement import getPackages

from libs import fileUtils

shells = [bash.historyPath]
print(getPackages.get(shells))
