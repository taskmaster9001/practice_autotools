#include <stdlib.h>
#include <stdio.h>
#include "util.h"

#if defined(HAVE_STRING_H)
#include <string.h>
#elif defined(HAVE_STRINGS_H)
#include <strings.h>
#endif

int util(int argc)
{
	printf("argc %d\n", argc);
	return 0;
}