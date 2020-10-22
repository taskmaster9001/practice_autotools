CC				= cc
CFLAGS			= -g
OUTPUT_OPTION	= -MMD -MP -o $@

SOURCE	= $(wildcard *.c)
OBJS	= $(SOURCE:.c=.o)
DEPS	= $(SOURCE:.c=.d)
-include ${DEPS}

libex.a : libex(${OBJS})


help:
		-@echo "make ex: make the executable"
