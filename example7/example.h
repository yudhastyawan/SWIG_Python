#ifndef __EXAMPLE_H
#define __EXAMPLE_H

typedef struct Vector {
  double x, y, z;
} Vector;

Vector *new_Vector(double x, double y, double z);
void delete_Vector(Vector *v);
double Vector_magnitude(Vector *v);
void Vector_print(Vector *v);

#endif