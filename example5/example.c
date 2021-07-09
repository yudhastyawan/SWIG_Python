#include <malloc.h>
#include "example.h"

Mystruct *func() {
    Mystruct *mystruct = (Mystruct *)malloc(sizeof(Mystruct));
    return mystruct;
}