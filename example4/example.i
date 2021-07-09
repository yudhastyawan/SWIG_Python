%module example

%{
// #include <math.h>
extern double sin(double x);
%}

double sin(double x);
#define STATUS 50
#define VERSION "1.1"