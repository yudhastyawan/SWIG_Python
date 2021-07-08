#include <vector>
#include "example.h"

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

std::vector<double> operator+(std::vector<double> &a, std::vector<double> &b) {
    std::vector<double> c;
    if (a.size() == b.size()) {
        for (int i = 0; i < a.size(); i++) {
            c.push_back(a[i] + b[i]);
        }
    }
    return c;
}