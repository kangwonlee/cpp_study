// Begin lti_dt.cpp

#include <cassert>
#include <cstdint>
#include <exception>
#include <iostream>
#include <string>
#include <vector>

#include    "vector_double.h"
#include    "matrix_double.h"
#include    "lti_dt.h"

// Discrete Time State Space model
LTI_DT::LTI_DT(Matrix &new_A, Matrix &new_B, Matrix &new_C, Matrix &new_D, Matrix &new_X){
#ifdef LOG
    std::cout << '[' << &A << ']' << "LTI_DT::LTI_DT(" << &new_A << ", " << &new_B << ", " << &new_C << ", " << &new_D << ")\n";
#endif
    
#ifdef LOG
    std::cout << "LTI_DT::LTI_DT(): A = new_A;\n";
#endif
    A = new_A;    
#ifdef LOG
    std::cout << "LTI_DT::LTI_DT(): B = new_B;\n";
#endif
    B = new_B;    
#ifdef LOG
    std::cout << "LTI_DT::LTI_DT(): C = new_C;\n";
#endif
    C = new_C;    
#ifdef LOG
    std::cout << "LTI_DT::LTI_DT(): D = new_D;\n";
#endif
    D = new_D;    
#ifdef LOG
    std::cout << "LTI_DT::LTI_DT(): X = new_X;\n";
#endif
    X = new_X;

    // is A matrix square?
    assert(A.get_height() == A.get_width());

    // number of state variables
    n = A.get_height();

    // check number of rows of B matrix
    assert(B.get_height() == n);
    
    // expected size of input
    m = B.get_width();

}

LTI_DT::~LTI_DT(){
#ifdef LOG
    std::cout << '[' << &A << ']' << "LTI_DT::!LTI_DT()\n";
#endif
#ifdef LOG
    std::cout << "delete &A;\n";
#endif
    delete &A;
#ifdef LOG
    std::cout << "delete &B;\n";
#endif
    delete &B;
#ifdef LOG
    std::cout << "delete &C;\n";
#endif
    delete &C;
#ifdef LOG
    std::cout << "delete &D;\n";
#endif
    delete &D;
#ifdef LOG
    std::cout << "delete &X;\n";
#endif
    delete &X;
}

const Matrix LTI_DT::get_y(const double u){
    return Matrix (C * X + D * u);
}

void LTI_DT::get_next_x(const double u){
    Matrix next_X (A * X + B * u);

    delete &X;

    X = next_X;
}

// End lti_dt.cpp
