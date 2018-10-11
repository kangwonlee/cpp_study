// Begin dt_ss.cpp

#include <cassert>
#include <cstdint>
#include <exception>
#include <iostream>
#include <string>
#include <vector>

#include    "vector_double.h"
#include    "matrix_double.h"
#include    "dt_ss.h"

// Discrete Time State Space model
LTI_DT::LTI_DT(Matrix &new_A, Matrix &new_B, Matrix &new_C, Matrix &new_D, Matrix &new_X){
#ifdef LOG
    std::cout << '[' << &A << ']' << "LTI_DT::LTI_DT(" << &new_A << ", " << &new_B << ", " << &new_C << ", " << &new_D << ")\n";
#endif
    A = new_A;
    B = new_B;
    C = new_C;
    D = new_D;
    X = new_X;
}

LTI_DT::~LTI_DT(){
#ifdef LOG
    std::cout << '[' << &A << ']' << "LTI_DT::!LTI_DT()\n";
#endif
    delete &A;
    delete &B;
    delete &C;
    delete &D;
    delete &X;
}
// End dt_ss.cpp
