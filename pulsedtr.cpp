#include <sys/ioctl.h>
#include <unistd.h>
#include <fcntl.h>

int pulseDTR(int fd)
{
    int status;

    // get the current modem control lines status
    if (ioctl(fd, TIOCMGET, &status) == -1) {
        // handle the error
    }

    // Now set DTR high
    status |= TIOCM_DTR;
    // and apply  
    if (ioctl(fd, TIOCMSET, &status) == -1) {
        // handle the error
    }
    // wait a bit
    usleep (400*1000);
    // Now set DTR low
    status &= ~TIOCM_DTR;
    // and apply  
    if (ioctl(fd, TIOCMSET, &status) == -1) {
        // handle the error
    }

    return 0;
}

/*
 * Send a break
 */
void m_break(int fd)
{
#ifdef USE_SOCKET
  if (portfd_is_socket)
    return;
#endif
#ifdef POSIX_TERMIOS
  tcsendbreak(fd, 0);
#else
#  ifdef _V7
#    ifndef TIOCSBRK
  {
    struct sgttyb sg, ng;

    ioctl(fd, TIOCGETP, &sg);
    ioctl(fd, TIOCGETP, &ng);
    ng.sg_ispeed = ng.sg_ospeed = B110;
    ng.sg_flags = BITS8 | RAW;
    ioctl(fd, TIOCSETP, &ng);
    write(fd, "\0\0\0\0\0\0\0\0\0\0", 10);
    ioctl(fd, TIOCSETP, &sg);
  }
#    else
  ioctl(fd, TIOCSBRK, 0);
  sleep(1);
  ioctl(fd, TIOCCBRK, 0);
#    endif
#  endif
#endif
} 

int main()
{
	int port = open("/dev/ttyS1", O_RDWR | O_NOCTTY | O_NDELAY);                

	if (port < 0)
		return 1;
	pulseDTR(port);
	return 0;
}
