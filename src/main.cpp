#include <stdio.h>

// C interface to the Fortran code
#include "calculator.h"

int main()
{
    printf("2 + 3 = %i\n", add_integers(2, 3));
    printf("2 - 3 = %i\n", subtract_integers(2, 3));

    return 0;
}
