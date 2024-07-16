from __future__ import print_function
import sys
import time


# define a little hello cruel world function
def cruel(run_number):
    # print out a simple statement to a file and include the run number
    with open('outfile{0}.dat'.format(run_number), 'w') as ofp:
        outmsg = 'Hello cruel world! I am but a number and it is {0}'.format(run_number)
        ofp.write(outmsg)

    # write some stuff to the screen as well just for fun
    print('Hi there, from number {0}\n'.format(run_number))
    print('Waiting for 5 long seconds')
    for i in range(5):
        sys.stdout.write(u'.')
        sys.stdout.flush()
        time.sleep(1)
    print('\n')
    return outmsg
    
if __name__ == '__main__':
    # get the run number from the command line
    run_number = int(sys.argv[1])    
    # run the cruel function
    outmsg = cruel(run_number)

