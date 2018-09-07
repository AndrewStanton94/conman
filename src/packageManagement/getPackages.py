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

def getInstallationCommands(commands, pms):
    programs = []
    print(pms)
    for pm in pms:
        programs.append(pm.extractInstalledPrograms(commands))
    return programs

def extractProgramName(command):
	return re.sub(r'\n', '', re.sub(r'(sudo )?apt install ([a-zA-Z]+)', r'\2', command))

def get(shells, pms):
    commands = getCommands(shells)
    programs = getInstallationCommands(commands, pms)
    # programs = [extractProgramName(command) for command in commands if "apt install" in command]
    return programs
