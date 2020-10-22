CC		= cc
CFLAGS	= -g

SOURCE	= ex.c util.c
OBJS	= $(SOURCE:.c=.o)

ex:		${OBJS}
		${CC} -o ex ${OBJS}
util.o:	util.h
