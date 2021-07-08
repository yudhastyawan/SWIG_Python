%module example

%{
#define SWIG_FILE_WITH_INIT
#include "example.h"
#include <stdio.h>
const int CVAL = 4;
enum Colors {RED, BLUE, YELLOW, BLACK, WHITE};
struct Vector {
    double x, y, z;
    int arr[10]; /* it is still ambigued how to access that array */
};
%}

int fact(int n);
const int CVAL;
enum Colors {RED, BLUE, YELLOW, BLACK, WHITE};
FILE *fopen(const char *filename, const char *mode);
int fputs(const char *, FILE *);
int fclose(FILE *);
struct Vector {
    double x, y, z;
    int arr[10];
};