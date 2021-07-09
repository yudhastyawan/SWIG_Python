#include <stdio.h>
#include <malloc.h>
#include "example.h"

int main() {
    int n = 5;
    double *arr;
    arr = (double *)malloc(n*sizeof(double));
    for(int i = 0; i < n; i++) {
        *(arr+i) = (double)i;
        printf("%.2f\n",*(arr+i));
    }
    double res = sumarray(n, arr);
    printf("%.2f\n", res);
    free(arr);
    return 0;
}