#ifndef _NONPOSIX_H
#define _NONPOSIX_H 1

#include <sys/stat.h>
#include <io.h>

#ifndef PIPE_BUF
# define PIPE_BUF 0
#endif /* PIPE_BUF  */

#define _stat  _stati64
#define stat   _stati64
#define _fstat _fstati64
#define fstat  _fstati64
#define off_t  __int64

#define lseek _lseeki64

struct timespec
  {
    time_t tv_sec;          /* Seconds.  */
    long int tv_nsec;         /* Nanoseconds.  */
  };

#define pipe(p)     _pipe(p, 0, _O_BINARY | _O_NOINHERIT)

#endif /* _NONPOSIX_H */
