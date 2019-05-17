#ifndef MYIOPRIVATE_H_
#define MYIOPRIVATE_H_

/* serial implementation for ENSC-351, Simon Fraser University -- 2013, By
 *  - Craig Scratchley
 */

// the presence or absence of this #define controls whether to use our own UART
// interfacing code or to use devc-ser8250
#define MY_SER

#ifdef MY_SER
//#include <sys/dispatch.h>	// for _IO_MAX ? //#include <sys/iomsg.h>
#include <sys/neutrino.h>	// for _pulse
#include <stdint.h>

enum {MT_OPEN_CMD /*=_IO_MAX+1*/, MT_CLOSE_CMD, /*MT_READ_DATA,*/ MT_WRITE_DATA, MT_TCDRAIN};

struct _data_msg_header {
	uint16_t type;          // contains message type
	size_t size;            // number of bytes to transfer
};

// Client message
typedef union
{
	uint16_t              	type;
	struct _data_msg_header dataMsgHeader;
	struct _pulse			pulse;
} ClientMessageT;

#endif // MY_SER

#endif /*MYIOPRIVATE_H_*/
