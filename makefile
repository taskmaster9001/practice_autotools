CC				= cc
CFLAGS			= -g
OUTPUT_OPTION	= -MMD -MP -o $@
SHARED_LIBRARY_EXTENSION = so
SHARED_LIBRARY_FLAG		 = -shared

SOURCE	= $(wildcard *.c)
OBJS	= $(SOURCE:.c=.o)
DEPS	= $(SOURCE:.c=.d)
-include ${DEPS}

lib: libex(${OBJS})

libex.${SHARED_LIBRARY_EXTENSION}: ${OBJS}
									${CC} ${SHARED_LIBRARY_FLAG} -o $(@) $(^)


help:
		-@echo "make ex: make the executable"
