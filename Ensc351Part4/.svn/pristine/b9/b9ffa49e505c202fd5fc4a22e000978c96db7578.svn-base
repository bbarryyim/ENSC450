//  ENSC 351 -- March, 2013  Prepared by:
//      - Craig Scratchley, Simon Fraser University
//      - Zhenwang Yao

#include <iostream>
#include <fcntl.h>		// for O_RDWR
#include <stdlib.h> 	// for EXIT_SUCCESS
#include "myIO.h"
#include "terminal.h"
#include "VNPE.h"

#define SERIAL_PATH "/dev/ser2"

// use enum ?
//#define TERM1	0
#define TERM2	1

using namespace std;

int main()
{
	// lower priority of primary thread to 5
	int policy;
	struct sched_param  param;
	PE_EOK(pthread_getschedparam(pthread_self(),&policy,&param));
	param.sched_priority = 5;
	PE_EOK(pthread_setschedparam(pthread_self(), policy, &param));

	int mediumD;
	mediumD = PE(myOpen(SERIAL_PATH, O_RDWR));
	cout << "Term " << (TERM2 + 1) << " STARTED.  Connected to path " SERIAL_PATH
		".\n    Make sure vmwaregateway is running if using /dev/ser3." << endl;

	Terminal(TERM2 + 1, STDIN_FILENO, STDOUT_FILENO, mediumD);
	PE(myClose(mediumD));
	cout << "*Program exiting*" << endl;
	return EXIT_SUCCESS;
}
