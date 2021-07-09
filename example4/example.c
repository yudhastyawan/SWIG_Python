// #include <Python.h>
#include <stdio.h>
#include <malloc.h>

typedef struct {
    int num;
} vec;

vec *sum(vec *a, vec *b) {
    vec *c;
    c = (vec *)malloc(sizeof(vec));
    c->num = a->num + b->num;
    return c;
}

int main(){
    int n = 5;
    int *a = (int *)malloc(sizeof(int)*n);
    for(int i = 0; i < n; i++){
        // *(a+i) = i;
        a[i] = i;
        printf("%d\n",*(a+i));
    }
    free(a);

    printf("------\n");
    vec *x;
    if(!(x = (vec *)malloc(sizeof(vec)))) {
        printf("x is allocated\n");
    }
    x->num = 5;
    vec *y = (vec *)malloc(sizeof(vec)); y->num = 6;
    vec *z = (vec *)malloc(sizeof(vec));
    z = sum(x, y);
    printf("%d\n", z->num);
    free(x);
    free(y);
    free(z);
    // int *x, *y, *z;
    // *x = 1;
    // *y = 2;
    // z = isum(x, y);
    // printf("%d\n", *z);
    return 0;
}