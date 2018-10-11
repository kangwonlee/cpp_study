// Begin lti_dt.h

#include <cassert>
#include <cstdint>
#include <exception>
#include <iostream>
#include <string>
#include <vector>

#include    "vector_double.h"
#include    "matrix_double.h"


#ifndef LTI_DT

// Discrete Time State Space model
class LTI_DT{
    protected:
        Matrix A;
        Matrix B;
        Matrix C;
        Matrix D;
        Matrix X;

        size_t m, n;

    public:
        LTI_DT(Matrix &new_A, Matrix &new_B, Matrix &new_C, Matrix &new_D, Matrix &new_X);
        ~LTI_DT();
        const Matrix get_y(const double u);
        void get_next_x(const double u);
};
#endif

// End lti_dt.h
