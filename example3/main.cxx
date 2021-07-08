// #include "example.h"
#include <iostream>
#include <vector>

std::vector<double> operator+(std::vector<double> &a, std::vector<double> &b) {
    std::vector<double> c;
    if (a.size() == b.size()) {
        for (int i = 0; i < a.size(); i++) {
            c.push_back(a[i] + b[i]);
        }
    }
    return c;
}

int main() {
    std::vector<double> a {10., 20., 30.}, b {20., 30., 40.}, c;
    c = a + b;
    std::cout << c.size() << std::endl;
    return 0;
}