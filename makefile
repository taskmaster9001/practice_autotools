CC		= cc
CFLAGS	= -g

SOURCE	= $(wildcard *.c)
OBJS	= $(SOURCE:.c=.o)

ex:		${OBJS}
		${CC} -o ex ${OBJS}
util.o:	util.h
