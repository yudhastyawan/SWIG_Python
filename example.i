%module example

%{
#include "example.h"
%}

%typemap(in) (int n, double *v) {
  if (!PyList_Check($input)) {
    PyErr_SetString(PyExc_ValueError, "Expecting a list");
    return NULL;
  }
  $1 = PyList_Size($input);
  $2 = (double *)malloc(($1)*sizeof(double));
  for (int i = 0; i < $1; i++) {
    PyObject *s = PyList_GetItem($input, i);
    $2[i] = PyFloat_AsDouble(s);
  }
}

%typemap(freearg) (int n, double *v) {
  if ($2) free($2);
}

%include "example.h"