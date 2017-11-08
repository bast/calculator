#include <stdio.h>

// C interface to the Fortran code
#include "calculator.h"

// provides version information
#include "version.h"

int main()
{
    printf("Running calculator version v%i.%i.%i\n", VERSION_MAJOR, VERSION_MINOR, VERSION_PATCH);
    printf("Configure-time Git hash: %s\n\n", GIT_HASH);

    printf("2 + 3 = %i\n", add_integers(2, 3));
    printf("2 - 3 = %i\n", subtract_integers(2, 3));

    return 0;
}
