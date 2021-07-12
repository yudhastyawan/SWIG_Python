%module example

%{
#include "example.h"
%}

%typemap(in) (double *array, int size) {
    if (!PyList_Check($input)) return NULL;
    $2 = PyList_Size($input);
    $1 = (double *) malloc(($2)*sizeof(double));
    for (int i = 0; i < $2; i++) {
        PyObject *o = PyList_GetItem($input, i);
        if (PyNumber_Check(o)) {
            $1[i] = PyFloat_AsDouble(o);
        } else {
            Py_DECREF(o);
            return NULL;
        }
        Py_DECREF(o);
    }
}

%include "example.h"
%extend Vec {
    Vec(double *array, int size) {
        Vec *v = (Vec *)malloc(sizeof(Vec));
        v->array = array;
        v->size = size;
        return v;
    }
    ~Vec() {
        free($self);
    }

    double __getitem__(int key) {
        return $self->array[key];
    }

    void __setitem__(int key, double value) {
        $self->array[key] = value;
    }

    char *__str__() {
        static char *strpy;
        int length = 0;
        length += snprintf(0,0, "[");
        for(int i = 0; i < $self->size; i++) {
            length += snprintf(0,0, "%f", $self->array[i]);
            if (i != ($self->size - 1)) {
                length += snprintf(0,0, ", ");
            }
        }
        length += snprintf(0,0, "]");
        length += 1;
        strpy = malloc(length);
        strcpy(strpy, "[");
        for(int i = 0; i < $self->size; i++) {
            length = snprintf(0,0, "%f", $self->array[i]);
            char *temp = malloc(length);
            snprintf(temp, length, "%f", $self->array[i]);
            strcat(strpy, temp);
            free(temp);
            if (i != ($self->size - 1)) {
                strcat(strpy, ", ");
            }
        }
        strcat(strpy, "]");
        return strpy;
    }
};