#include "example.h"
#include <iostream>

List::List() {
    val = 0;
}

List::List(int i) {
    val = i;
}

void List::setter(int i) {
    val = i;
}

int List::getter() {
    return val;
}

List List::operator+(const List &v) {
    List res;
    res.val = val + v.val;
    return res;
}