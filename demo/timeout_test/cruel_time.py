from __future__ import print_function
import sys
import time

# set how long run times should increment per run, in seconds
# wait time will be run_number * TIMEINC + 5 seconds
TIMEINC=170

# define a little hello cruel world function
def cruel(run_number):
    # print out a simple statement to a file and include the run number
    with open('outfile{0}.dat'.format(run_number), 'w') as ofp:
        outmsg = 'Hello cruel world! I am but a number and it is {0}'.format(run_number)
        ofp.write(outmsg)
    # set time based on timeout constraints
    timeout = run_number*TIMEINC + 5
    # write some stuff to the screen as well just for fun
    print ('Hi there, from number {0}\n'.format(run_number))
    print ('Waiting for {0} long seconds'.format(timeout))
    for i in range(int(timeout)):
        sys.stdout.write(u'.')
        sys.stdout.flush()
        time.sleep(1)
    print ('All Done!!\n')
    return outmsg
    
if __name__ == '__main__':
    # get the run number from the command line
    run_number = float(sys.argv[1])    
    # run the cruel function
    outmsg = cruel(run_number)

