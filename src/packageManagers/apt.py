#!/usr/bin/env python3

_installationString = 'apt install'

def extractInstalledPrograms(commands):
    installationCommands = [command for command in commands if _installationString in command]
    aptPrograms = []
    for command in installationCommands:
        appsIndex = command.find(_installationString) + len(_installationString)
        apps = command[appsIndex:]
        # breakdown single line multi installs
        aptPrograms.append(apps)
    return aptPrograms
