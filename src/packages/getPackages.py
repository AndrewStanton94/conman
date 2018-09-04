#!/usr/bin/env python3
import os
import re
import json

bashHistory = os.path.expanduser("~/.bash_history")
f = open(bashHistory, "r")
commands = []
for line in f:
	commands.append(f.readline())
f.close()

def extractProgramName(command):
	return re.sub(r'\n', '', re.sub(r'(sudo )?apt install ([a-zA-Z]+)', r'\2', command))

programs = [extractProgramName(line) for line in commands if "apt install" in line]

print(programs)
jsonList = json.dumps(programs)
