#!/usr/bin/env python3
import os
import re

def getCommands(historyFiles):
    commands = []
    for historyFile in historyFiles:
        filePath = os.path.expanduser(historyFile)
        if os.path.exists(filePath):
            f = open(filePath, "r")
            for line in f:
                    commands.append(f.readline())
            f.close()
    return commands

def extractProgramName(command):
	return re.sub(r'\n', '', re.sub(r'(sudo )?apt install ([a-zA-Z]+)', r'\2', command))

def get(shells = ['~/.bash_history']):
    commands = getCommands(shells)
    programs = [extractProgramName(command) for command in commands if "apt install" in command]
    return programs
