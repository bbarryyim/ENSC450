#ifndef MYSOCKET_H_
#define MYSOCKET_H_

#include <unistd.h>	// for ssize_t

int mySocketpair( int domain, int type, int protocol, int fd[2] );
ssize_t myRead( int fildes, void* buf, size_t nbyte );
ssize_t myWrite( int fildes, const void* buf, size_t nbyte );
int myTcdrain(int fildes);
int myClose(int fd);
int myOpen( const char * path,
          int oflag, 
          ... ); 

#endif /*MYSOCKET_H_*/

