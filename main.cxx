#include "example.h"
#include <iostream>

int main() {
    List a;
    int b = 5;
    a.setter(b);
    std::cout << a.getter() << std::endl;
}