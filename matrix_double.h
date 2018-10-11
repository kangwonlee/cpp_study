// Begin matrix_double.h

#include <cassert>
#include <cstdint>
#include <exception>
#include <iostream>
#include <string>
#include <vector>

#include    "vector_double.h"

#ifndef MATRIX_DOUBLE
#define MATRIX_DOUBLE

class Matrix
{
    std::vector<RowVector> rows;

    protected:
        std::string name;

    public:
		Matrix();

        ~ Matrix();

        Matrix(const uint32_t m, const uint32_t n, const double *values, std::string new_name="None");

        Matrix(const uint32_t m, const uint32_t n, std::string new_name="None");

        Matrix(const Matrix & other);

        RowVector & operator [] (const uint32_t i);

        const RowVector operator [] (const uint32_t i) const;

        const std::string get_name();

        Matrix operator + (const Matrix & other);

        Matrix operator * (const double a);

        Matrix operator * (const Matrix & other);

        void show();
};

#endif
// End matrix_double.h
