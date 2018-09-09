#!/usr/bin/env python3
import os

def getInstallationCommands(commands, pms):
    programs = {}
    for pm in pms:
        programs[pm.name] = pm.extractInstalledPrograms(commands)
    return programs

def get(commands, pms):
    programs = getInstallationCommands(commands, pms)
    return programs

def generateCategories(categories):
    dictionary = {}
    for category in categories:
        dictionary[category] = []
    return dictionary

def generatePrompt(app, categories):
    categoryString = '\n[' + ', '.join(categories) + ']'
    return 'Choose category for ' + app + categoryString + ':'

def validateInput(category, categories):
    if category in categories:
        return True, category, categories
    else:
        matches = [potentialMatch for potentialMatch in categories if potentialMatch.startswith(category)]
        if len(matches) > 1:
            return False, '', matches
        if len(matches) == 1:
            return True, matches[0], categories
        else:
            return False, '', categories

def getValidCategory(categories, app):
    valid = False
    while not valid:
        os.system('clear')
        category = input(generatePrompt(app, categories))
        valid, category, categories = validateInput(category, categories)
    return category

def sortAppsForPM(apps, categories):
    categorisedApps = generateCategories(categories)
    for app in apps:
        selectedCategory = getValidCategory(categories, app)
        categorisedApps[selectedCategory].append(app)
        os.system('clear')
    print(categorisedApps)

def categoriseApps(appsByPM, categories):
    for pm in appsByPM:
        print('PM:', pm)
        appsByPM[pm] = sortAppsForPM(appsByPM[pm], categories)
