#!/usr/bin/env python3
import os

import shells.bash
import shells.zsh

allShells = [bash, zsh]
activeShells = [shell for shell in allShells if os.path.exists(shell.historyPath)]
__all__ = ['activeShells']
