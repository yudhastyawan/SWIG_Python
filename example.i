%module example

%include "std_vector.i"

namespace std {
    %template(VectorDouble) vector<double>;
};

%{
#define SWIG_FILE_WITH_INIT
#include "example.h"
%}

%include "example.h"