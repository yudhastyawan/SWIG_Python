%module example

%{
#include "example.h"
%}

// %newobject func;
Mystruct *func();
// %include "example.h"