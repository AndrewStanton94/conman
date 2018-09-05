#!/usr/bin/env python3
import os
import re

bashHistory = os.path.expanduser("~/.bash_history")
zshHistory = os.path.expanduser("~/.zsh_history")

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


def get():
    commands = getCommands(['~/.bash_history'])
    programs = [extractProgramName(command) for command in commands if "apt install" in command]
    print(programs)
    return programs
