// Name        : myIO.cc
// ENSC 351 Project Part 4.  March 2013  Prepared by:
//      - Craig Scratchley, Simon Fraser University, craig_scratchley@alumni.sfu.ca
//		- Eric Matthews (for myTcdrain)

//	Completed by:	Elaine Chiang (ST# 301116459)
//					Barry Yim (ST# 301118482)
// List below any people who helped you with the assignment
// Helpers     : ...
//			   :
// Version     : April 3th
// Copyright   : Copyright 2013, Craig Scratchley
// Description : Starting point for ENSC 351 Project Part 4
//============================================================================

#include <sys/socket.h>		// for socketpair
#include <unistd.h>			// for read,write,close,pipe
#include <fcntl.h>			// for open
#include <stdlib.h>			// for system()
#include <iostream>
#include <termios.h>		// for tcdrain()
#include <string.h>			// for strncmp()

using namespace std;

#include "myIO-private.h"
#include "VNPE.h"

#ifndef MY_SER
#include <errno.h>
#include <sched.h>			// for sched_yield()
#else
#include <pthread.h>		// for pthread_create(), pthread_join()
#include <sys/neutrino.h>
#include "serialThread.h"
#include "WcsPosix.h"

enum {TERM_SIDE, OTHER_SIDE};

static pthread_t SerialThrdId;
static int coidSer = 9999;

int otherSideD;

///channel to be used///
int channelSer;
#endif // else clause of #ifndef MY_SER

static int serD;

int myOpen( const char * path,
          int oflag, 
          ... )
{
	if (strncmp(path, "/dev/ser", 8))
		return open(path, oflag);
	else 
	{
		// slay all devc-ser8250 instances -- consider /bin/slay
		system("slay devc-ser8250");

#ifndef MY_SER
		// launch "/sbin/devc-ser8250 -b300 -u1 3f8,4 -u2 2f8,3 -u3 3e8,4 -u4 2e8,3"
		system("/sbin/devc-ser8250 -b300 -u1 3f8,4 -u2 2f8,3 -u3 3e8,4 -u4 2e8,3");

		// make sure that /sbin/devc-ser8250 has fully launched and initialized
		//      consider /bin/waitfor
		system("/sbin/devc-ser8250 -b300 -u1 3f8,4 -u2 2f8,3 -u3 3e8,4 -u4 2e8,3");
		system("/bin/waitfor devc-ser8250");

		return serD = open(path, oflag);
#else
		channelSer = PE(ChannelCreate(_NTO_CHF_FIXED_PRIORITY));
		
		int serSktPair[2]={9999,9999};
		// can pipe be used here?  No.  Pipes do not support what is necessary to implement myReadCond.
		PE(socketpair(AF_LOCAL, SOCK_STREAM, 0, serSktPair)); 
		otherSideD = serSktPair[OTHER_SIDE];
		
		//create SerialThrd
		PE_EOK(wcs_thread_create(&SerialThrdId, SerialThrd, (void*) path, 5, "SerThrd"));
	
		// get connection id
		coidSer = PE(ConnectAttach(0, 0, channelSer, _NTO_SIDE_CHANNEL, 0));
		
		return serD = serSktPair[TERM_SIDE];
#endif
	}
}

int mySocketpair( int domain, int type, int protocol, int fd[2] )
{
	return socketpair(domain, type, protocol, fd);
}

ssize_t myRead( int fildes, void* buf, size_t nbyte )
{
	return read(fildes, buf, nbyte );
}

ssize_t myWrite( int fildes, const void* buf, size_t nbyte )
{
#ifndef MY_SER
	return write(fildes, buf, nbyte );
#else
	if (fildes != serD)
		return write(fildes, buf, nbyte );
	else { // else not really necessary due to return.
		ClientMessageT imsg;
		iov_t iov[2];

		// set up a multi-part message,
		// sending buffer is a vector,
		imsg.type = MT_WRITE_DATA;
		imsg.dataMsgHeader.size = nbyte;
		SETIOV(iov + 0, &imsg, sizeof (imsg.dataMsgHeader));
		SETIOV(iov + 1, buf, nbyte);
		return MsgSendvs(coidSer, iov, 2, NULL, 0); 
	}
#endif
}

int myTcdrain(int fildes)
{
	if (fildes != serD) {
		//int retVal;
	    if (-1 == (/*retVal =*/ tcdrain(fildes))) {
	    	// do we need this for Assign4?
	    	if (errno == 103) { // ENOSYS -- no ) { // ENOTTY -- no ) {
	    		// the fd does not refer to a terminal device, assume a socketpair
	    		sched_yield(); // is yield adequate?
	    		return 0;
	    	}
	    	else
	    		return -1;
	    }
	    return 0;
	}
	else { // else not really necessary due to returns.
#ifndef MY_SER
		return tcdrain(fildes);
#else
    // ******  Modify this code for Step 4 ********
	ClientMessageT imsg;
	imsg.type = MT_TCDRAIN;
	cout << "tcdrain sent" << flush;
	return MsgSend(coidSer, &imsg, 1, NULL, 0);


   // return 0; returning immediately is often not proper behaviour
#endif
	}
}

int myClose( int fd )
{
#ifndef MY_SER
	return close(fd);
#else
	// check if belongs to serial port 
	if (fd != serD)
		return close(fd);
	else { // else not really necessary due to return.
		ClientMessageT imsg;
		imsg.type = MT_CLOSE_CMD;
		int retVal;
		if (-1 != (retVal = MsgSend(coidSer, &imsg, sizeof(imsg.type), NULL, 0))) {
			PE(ConnectDetach(coidSer));	
			PE_EOK(pthread_join(SerialThrdId, NULL));
			PE(ChannelDestroy(channelSer));
		}
	
		// close pipe
		PE(close(serD));
		PE(close(otherSideD));
	
		// restart the devc-ser8250 process (as was started above)
		system("/sbin/devc-ser8250");
		system("/bin/waitfor devc-ser8250");

		return retVal;
	}
#endif	
}
