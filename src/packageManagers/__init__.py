#!/usr/bin/env python3

import packageManagers.apt

allPackageMangers = [apt]
activePackageManagers = allPackageMangers
# Filter this list
__all__ = ['activePackageManagers']
