#include "example.h"
#include <malloc.h>
#include <math.h>

Vector *new_Vector(double x, double y, double z) {
  Vector *v;
  v = (Vector *) malloc(sizeof(Vector));
  v->x = x;
  v->y = y;
  v->z = z;
  return v;
}
void delete_Vector(Vector *v) {
  free(v);
}

double Vector_magnitude(Vector *v) {
  return sqrt(v->x*v->x+v->y*v->y+v->z*v->z);
}

void Vector_print(Vector *v) {
    printf("Vector [%g, %g, %g]\n", v->x, v->y, v->z);
}