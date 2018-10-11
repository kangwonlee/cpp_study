// Begin lti_dt_example.cpp

#include <cassert>
#include <cstdint>
#include <exception>
#include <iostream>
#include <string>
#include <vector>

#include    "vector_double.h"
#include    "matrix_double.h"
#include    "lti_dt.h"

int32_t main(int32_t argn, char *argv[]){
    // https://ccrma.stanford.edu/~jos/fp/State_Space_Simulation_Matlab.html

    const double A_d[] = {0, 1, -1, 0};
    Matrix A(2u, 2u, A_d, "A");

    const double B_d[] = {0, 1};
    Matrix B(2u, 1u, B_d, "B");

    const double C_d[] = {1, 0, 0, 1, 0, 1};
    Matrix C(3u, 2u, C_d, "C");

    const double D_d[] = {0, 0, 0};
    Matrix D(3u, 1u, D_d, "D");

    const uint32_t n = 10;
    const double u[n] = {1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0};

    std::vector<Matrix> y_list;

    Matrix X(2u, 1u, "x");

    LTI_DT ss_dt(A, B, C, D, X);

    for(uint32_t k=0; n > k; ++k){
        Matrix y_now(ss_dt.get_y(u[k]));
        y_list.push_back(y_now);
        ss_dt.get_next_x(u[k]);
    }

    for(uint32_t i=0; n>i; ++i){
        std::cout << "i = " << i << '\n';
        y_list[i].show();
    }

    return 0;
}
// End lti_dt_example.cpp
// Build command : g++ -Wall -g -std=c++14 lti_dt_example.cpp vector_double.cpp matrix_double.cpp lti_dt.cpp -o lti_dt_example

