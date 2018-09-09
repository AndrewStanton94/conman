#!/usr/bin/env python3
import os
import json

configRoot = '~/conman/config/'

def makeStructure(structure, start):
    basePath = configRoot + start
    for item in structure:
        path = os.path.expanduser(basePath + item.lower())
        print(path)
        if not os.path.exists(path):
            os.makedirs(path)
        if type(structure[item]) is dict:
            makeStructure(structure[item], start + item.lower() + '/')
        elif type(structure[item]) is list:
            with open(path + "/install.json", 'w') as f:
                json.dump(structure[item], f, ensure_ascii=False)


def jsonFromFiles(start = '~/conman/config/'):
    masterPath = []
    mypath = os.path.expanduser(start)
    for (dirpath, dirnames, filenames) in os.walk(mypath):
        print(dirpath, dirnames, filenames)
        fullPaths = [dirpath + '/' + filename for filename in filenames]
        masterPath.extend(fullPaths)
    print('masterPath', masterPath)
    for path in masterPath:
        with open(path, 'r') as f:
            d = json.load(f)
            print(d)
