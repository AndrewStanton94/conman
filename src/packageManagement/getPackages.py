#!/usr/bin/env python3
import os
import re

def getCommands(shells):
    commands = []
    for shell in shells:
        with open(shell.historyPath, "r") as f:
            for line in f:
                commands.append(f.readline())
    return commands

def extractProgramName(command):
	return re.sub(r'\n', '', re.sub(r'(sudo )?apt install ([a-zA-Z]+)', r'\2', command))

def get(shells):
    commands = getCommands(shells)
    programs = [extractProgramName(command) for command in commands if "apt install" in command]
    return programs
