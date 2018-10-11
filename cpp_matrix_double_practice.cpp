// Begin cpp_matrix_double_practice.cpp

#include <cassert>
#include <cmath>
#include <cstdint>
#include <exception>
#include <iostream>
#include <string>
#include <vector>

#include    "matrix_double.h"

int32_t main(int32_t argn, char *argv[]){
	double s[] = {1.0, 0.0,
                  0.0, 1.0};

    std::cout << "Matrix id (2u, 2u, s, \"identity\");\n";
	Matrix identity (2u, 2u, s, "id");

    identity.show();

    double r[] = {cos(M_PI/6.0), -sin(M_PI/6.0),
                  sin(M_PI/6.0), +cos(M_PI/6.0)};

    std::cout << "Matrix rotation (2u, 2u, r, \"rot\");\n";
    Matrix rotation (2u, 2u, r, "rot");
    identity.show();
    rotation.show();

}

// End cpp_matrix_double_practice.cpp
// Build command : g++ -Wall -g -std=c++14 cpp_matrix_double_practice.cpp vector_double.cpp matrix_double.cpp -o cpp_matrix_double_practice
