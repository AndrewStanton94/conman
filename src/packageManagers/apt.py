#!/usr/bin/env python3
import re

name = 'Apt'
_installationString = 'apt install'

def getEndOfMatch(command):
    it = re.finditer('[\|&]', command)
    end = next(it, False)
    if end != False:
        end = end.span()[0]
    else:
        end = len(command)
    return end

def extractInstalledPrograms(commands):
    installationCommands = [command for command in commands if _installationString in command]
    #print(installationCommands)
    aptPrograms = []
    for command in installationCommands:
        startOfMatch = command.find(_installationString) + 1
        endOfMatch = getEndOfMatch(command)
        if startOfMatch < endOfMatch:
            appsIndex = startOfMatch + len(_installationString)
            apps = command[appsIndex:endOfMatch].split(' ')
            aptPrograms += apps
    return [program for program in aptPrograms if len(program) > 0]
