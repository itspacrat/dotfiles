#!/bin/python3
import subprocess as sys
print('WELCOME TO THE AUTO INSTALLER.')
print(' ')
modelName = input('INPUT MODEL NAME: ')
def symrc ():
    sys.Popen(['ln', '-s', '$HOME/.clones/dotfiles/conky/' + modelName + '/def.conky $HOME/.conkyrc',] stdout=PIPE)

symrc()
