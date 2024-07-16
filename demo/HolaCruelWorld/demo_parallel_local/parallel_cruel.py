# import the hello cruel world function
from cruel import cruel
from multiprocessing import Pool
import sys

# read in the arguments passed from command line 
args = [int(i) for i in sys.argv[1:]]

# set up a pool 
pool = Pool(4)

# run all the arguments
results = pool.map(cruel, args)

# now write out the results to a file
with open('alldata.dat', 'w') as ofp:
    for cresult in results:
        ofp.write('{0}\n'.format(cresult))

