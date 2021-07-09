%module example

%{
#include "example.h"
%}

%include "example.h"

%extend Vector {             // Attach these functions to struct Vector
  Vector(double x, double y, double z) {
    Vector *v;
    v = (Vector *) malloc(sizeof(Vector));
    v->x = x;
    v->y = y;
    v->z = z;
    return v;
  }
  ~Vector() {
    free($self);
  }
  double magnitude() {
    return sqrt($self->x*$self->x+$self->y*$self->y+$self->z*$self->z);
  }
  void print() {
    printf("Vector [%g, %g, %g]\n", $self->x, $self->y, $self->z);
  }
};