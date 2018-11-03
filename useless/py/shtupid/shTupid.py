#!/bin/python3
ver = "0.0.01"
from subprocess import call as cmd

# a fucking useless python shell wrapper.
# litterally just uses os/subprocess to send python input to the shell
# why the fuck would you want to ever use this what the FUCK
# oh version 0.0.01 by the way. it's even got a fucking versioning system LMAO THIS SHIT IS HILARIOUS
##########################################################################
# import base/libSHtupid.py
# import plugs/SHTupPlugLoader.py
# import plugs/.shtupidrc
tst = str("SHTUPID "+ver)
# going to add a random array of splashes later
def terminal():
    lnin = input("shtype>>>")
    lnout = cmd(lnin, shell=True)
    print(str(lnout))
    terminal()
terminal()
