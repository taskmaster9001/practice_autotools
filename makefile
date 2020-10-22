CC		= cc
CFLAGS	= -g
ex:		ex.o util.o
		${CC} -o ex ex.o util.o
util.o:	util.h
