#!/usr/bin/env python3

import os
import json

configPath = os.path.expanduser("~/.conmanrc")

def getConfig():
    fIn = open(bashHistory, "r")
    jsonIn = fIn.read();
    print(jsonIn)

def saveConfig(configObject):
    jsonList = json.dumps(configObject)
    fOut = open(configPath, "w")
    fOut.write(jsonList)
    fOut.close()
