// Begin vector_double.cpp

#include <cassert>
#include <cstdint>
#include <exception>
#include <iostream>
#include <string>
#include <vector>

#include    "vector_double.h"

RowVector::RowVector(){
#ifdef LOG
    std::cout << '[' << &columns << ']' << "RowVector()" << '\n';
#endif
    name = "None";
}


RowVector::~ RowVector(){
#ifdef LOG
    std::cout << '[' << &columns << ']' << "~ RowVector()" << '\n';
#endif
}


RowVector::RowVector(const uint32_t n, const double *values, std::string new_name){
#ifdef LOG
    std::cout << '[' << &columns << ']' 
    << "RowVector(" << n << ", " << values << ", " << new_name << ")\n";
#endif
    columns.resize(n);

    // If initial values available, copy
    if (values){
        for (uint32_t i = 0; columns.size() > i; ++i){
            columns[i] = values[i];
        }
    }
    // If no initial values, set all values zero
    else{
        for (uint32_t i = 0; columns.size() > i; ++i){
            columns[i] = 0.0;
        }
    }

    name = new_name;
}

// Instead of implementing another constructor, calling an existing one
// c++ 11 or later
RowVector::RowVector(const uint32_t n, std::string new_name) : RowVector(n, NULL, new_name){
#ifdef LOG
    std::cout << '[' << &columns << ']' << "RowVector(" << n << ", " << new_name << ")\n";
#endif
}


RowVector::RowVector(const RowVector & other){
#ifdef LOG
    std::cout << '[' << &columns << ']' << "RowVector(" << & other << ")\n";
#endif
    // https://codereview.stackexchange.com/questions/149669/c-operator-overloading-for-matrix-operations-follow-up
    // http://www.cplusplus.com/reference/vector/vector/resize/
    columns.resize(other.columns.size());
    for(uint32_t i=0; columns.size() > i; ++i){
        columns[i] = other.columns[i];
    }

    // Copy name of the other one
    name = other.name;
    // Then append
    name.append("2");
}


double & RowVector::operator [] (const uint32_t i){
#ifdef LOG
    std::cout << '[' << &columns << ']' << "double & operator [] (" << i << ")\n";
#endif
    // Return reference; otherwise, unable to assign
    return columns[i];
}


const std::string RowVector::get_name(){
#ifdef LOG
    std::cout << '[' << &columns << ']' << "void show()\n";
#endif
    // Return constant; to prevent change
    return name;
}


RowVector RowVector::operator + (const RowVector & other){
#ifdef LOG
    std::cout << '[' << &columns << ']' << "RowVector operator + (" << & other << ")\n";
#endif
    // Check size
    assert(columns.size() == other.columns.size());

    // Make a new vector to return
    RowVector temp(other);

    // Element loop
    for (uint32_t i=0; columns.size() > i; ++i){
        temp[i] += columns[i];
    }

    // Returning a temporary image
    return temp;
}


RowVector RowVector::operator * (const double a){
#ifdef LOG
    std::cout << '[' << &columns << ']' << "RowVector operator * (" << a << ")\n";
#endif

    // Make a new vector to return
    RowVector temp(*this);

    // Element loop in `for each` style
    // c++ 11 or later
    for (auto & element : temp.columns){
        element *= a;
    }

    // Returning a temporary image
    return temp;
}


const double RowVector::operator * (const RowVector & other){
#ifdef LOG
    std::cout << '[' << &columns << ']' << "RowVector operator * (" << & other << ")\n";
#endif

    // Check size
    assert(columns.size() == other.columns.size());

    double dot_product = 0.0;

    // Element loop
    for (uint32_t i = 0; columns.size() > i; ++i){
        dot_product += columns[i] * other.columns[i];
    }

    // Returning a temporary image
    return dot_product;
}


void RowVector::show(){
#ifdef LOG
    std::cout << '[' << &columns << ']' << "void show()\n";
#endif
    for (uint32_t i=0; columns.size()> i; ++i){
        std::cout << name << '[' << i << "] = " << columns[i] << '\n';
    }
}

// End vector_double.cpp
// Build command : g++ -Wall -g -std=c++14 vector_double.cpp -fsyntax-only
