%module example

%{
#include "example.h"
%}

typedef struct Vector {
  double x, y, z;
} Vector;

%extend Vector {             // Attach these functions to struct Vector
  Vector(double x, double y, double z);
  ~Vector();
  double magnitude();
  void print();
};