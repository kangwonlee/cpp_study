// Begin matrix_double.cpp

#include <cassert>
#include <cstdint>
#include <exception>
#include <iostream>
#include <string>
#include <vector>

#include    "vector_double.h"
#include    "matrix_double.h"


Matrix::Matrix(){
#ifdef LOG
    std::cout << '[' << &rows << ']' << "Matrix()" << '\n';
#endif
    name = "None";
}


Matrix::~ Matrix(){
#ifdef LOG
    std::cout << '[' << &rows << ']' << "~ Matrix()" << '\n';
#endif
}


Matrix::Matrix(const uint32_t m, const uint32_t n, const double *values, std::string new_name){
#ifdef LOG
    std::cout << '[' << &rows << ']' 
    << "Matrix(" << m << ", "<< n << ", " << values << ", " << new_name << ")\n";
#endif
    name = new_name;

    rows.resize(m);

    // If initial values available, copy
    if (values){
        // row loop
        for (uint32_t i = 0; m > i; ++i){
            rows[i].resize(n);
            // column loop
            for (uint32_t j = 0; n > j; ++j){
                rows[i][j] = *(values + i * n + j) ;
            }
        }
    }
    // If no initial values, set all values zero
    else{
        // row loop
        for (uint32_t i = 0; m > i; ++i){
            rows[i].resize(n);
            // column loop
            for (uint32_t j = 0; n > j; ++j){
                rows[i][j] = 0.0;
            }
        }
    }

}

// Instead of implementing another constructor, calling an existing one
// c++ 11 or later
Matrix::Matrix(const uint32_t m, const uint32_t n, std::string new_name) : Matrix(m, n, NULL, new_name){
#ifdef LOG
    std::cout << '[' << &rows << ']' << "Matrix(" << m << ", " << n << ", " << new_name << ")\n";
#endif
}


Matrix::Matrix(const Matrix & other){
#ifdef LOG
    std::cout << '[' << &rows << ']' << "Matrix(" << & other << ")\n";
#endif
    // https://codereview.stackexchange.com/questions/149669/c-operator-overloading-for-matrix-operations-follow-up
    // http://www.cplusplus.com/reference/vector/vector/resize/
    rows.resize(other.rows.size());
    // row loop
    for(uint32_t i=0; rows.size() > i; ++i){
        rows[i].resize(other.rows[i].size());
        // column loop

        for(uint32_t j=0; other.rows[i].size() > j; ++j){
            rows[i][j] = other[i][j];
        }
        
    }

    // Copy name of the other one
    name = other.name;
    // Then append
    name.append("2");
}


RowVector & Matrix::operator [] (const uint32_t i){
#ifdef LOG
    std::cout << '[' << &rows << ']' << "RowVector & Matrix::operator [] (" << i << ")\n";
#endif
    // Return reference; otherwise, unable to assign
    return rows[i];
}

const RowVector Matrix::operator [] (const uint32_t i) const {
#ifdef LOG
    std::cout << '[' << &rows << ']' << "const RowVector Matrix::operator [] (" << i << ")\n";
#endif
    // Return reference; otherwise, unable to assign
    return rows[i];
}


const std::string Matrix::get_name(){
#ifdef LOG
    std::cout << '[' << &rows << ']' << "const std::string Matrix::get_name()\n";
#endif
    // Return constant; to prevent change
    return name;
}


Matrix Matrix::operator + (const Matrix & other){
#ifdef LOG
    std::cout << '[' << &rows << ']' << "Matrix Matrix::operator + ("<< & other <<")\n";
#endif
    // Check size
    assert(rows.size() == other.rows.size());

    // Make a new vector to return
    Matrix temp(other);

    // Element loop
    for (uint32_t i=0; rows.size() > i; ++i){
        temp[i] += rows[i];
    }

    // Returning a temporary image
    return temp;
}


Matrix Matrix::operator * (const double a){
#ifdef LOG
    std::cout << '[' << &rows << ']' << "Matrix Matrix::operator * (" << a << ")\n";
#endif

    // Make a new vector to return
    Matrix temp(*this);

    // Element loop in `for each` style
    // c++ 11 or later
    for (auto & element : temp.rows){
        element *= a;
    }

    // Returning a temporary image
    return temp;
}


Matrix Matrix::operator * (const Matrix & other){
#ifdef LOG
    std::cout << '[' << &rows << ']' << "Matrix Matrix::operator * (" << &other << ")\n";
#endif

    // Check size
    assert(rows[0].size() == other.rows.size());

    Matrix temp(rows.size(), other[0].size());

    // row loop
    for (uint32_t i = 0; rows.size() > i; ++i){
        // column loop
        for(uint32_t j = 0; other[0].size() > j; ++j){
            // dummy index loop
            for(uint32_t k = 0; rows[0].size() > k; ++k){
                temp[i][j] += rows[i][k] * other[k][j];
            }
        }
    }

    // Returning a temporary image
    return temp;
}


void Matrix::show(){
#ifdef LOG
    std::cout << '[' << &rows << ']' << "void Matrix::show()\n";
#endif
    // row loop
    for (uint32_t i=0; rows.size()> i; ++i){
        // column loop
        for (uint32_t j=0; rows[i].size()> j; ++j){
            std::cout << rows[i][j] << '\t';
        }
        std::cout << '\n';
    }
}

// End matrix_double.cpp
// Build command : g++ -Wall -g -std=c++14 matrix_double.cpp -fsyntax-only
