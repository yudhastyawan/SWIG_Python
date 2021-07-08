#ifndef __EXAMPLE_H
#define __EXAMPLE_H

class List {
    private:
        int val;
    
    public:
        List();
        List(int i);
        List operator+(const List &v);
        void setter(int i);
        int getter();
};

std::vector<double> operator+(std::vector<double> &a, std::vector<double> &b); // cannot be used
#endif