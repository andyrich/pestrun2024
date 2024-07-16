import os

if os.path.exists('results'):
    cpath = os.path.join(os.getcwd(),'results')
else:
    cpath = os.getcwd()

# list the files in the results directory
allfiles = os.listdir(os.path.join(cpath))

# grab the number from each filename
filenums = []
for cf in allfiles:
    if cf.endswith('.dat'):
        cn = ''.join([i for i in cf if i.isdigit()])
        if len(cn) >0:
            filenums.append(int(cn))
filenums.sort()

with open('alldata.dat', 'w') as ofp:
    for i in filenums:
        # make sure the file is in place
        try:
            ifp = open(os.path.join(cpath,'outfile{0}.dat'.format(i)), 'r')
            # if you were able to open the file, write to the consolidated file    
            for line in ifp.readlines():
                ofp.write('{0}\n'.format(line))
        except:
            print ('Warning! Could not find outfile{0}.dat'.format(i))
