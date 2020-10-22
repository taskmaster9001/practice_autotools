CC				= cc
CFLAGS			= -g
OUTPUT_OPTION	= -MMD -MP -o $@

SOURCE	= $(wildcard *.c)
OBJS	= $(SOURCE:.c=.o)
DEPS	= $(SOURCE:.c=.d)
-include ${DEPS}

ex:		${OBJS}
		${CC} -o ex ${OBJS}
