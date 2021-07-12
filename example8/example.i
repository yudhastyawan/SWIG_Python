%module example

%{
#include "example.h"
%}

%include "example.h"
%extend Vec {
    Vec(double x, double y, double z) {
        Vec *v = (Vec *)malloc(sizeof(Vec));
        v->x = x;
        v->y = y;
        v->z = z;
        return v;
    }
    ~Vec() {
        free($self);
    }

    char *__str__() {
        static char temp[1024];
        sprintf(temp, "Vec(%.2f, %.2f, %.2f)", $self->x, $self->y, $self->z);
        return temp;
    }
};