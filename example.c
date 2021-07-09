#include "example.h"

double sumarray(int n, double *v) {
  double c;
  for(int i = 0; i < n; i++) {
    c += v[i];
  }
  return c;
}