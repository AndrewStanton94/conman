#!/usr/bin/env python3
from subprocess import Popen, PIPE, STDOUT
# https://stackoverflow.com/questions/5460923/run-bash-built-in-commands-in-python

def getHistory():
    shell_command = 'bash -i -c "history -r; history"'
    event = Popen(shell_command, shell=True, stdin=PIPE, stdout=PIPE, stderr=STDOUT)

    output = event.communicate()[0].decode('utf-8')
    output = output.splitlines()
    return output
