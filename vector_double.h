// Begin vector_double.h

#include <cassert>
#include <cstdint>
#include <exception>
#include <iostream>
#include <string>
#include <vector>

#ifndef VECTOR_DOUBLE
#define VECTOR_DOUBLE

#ifndef LOG
#define LOG
#endif


class RowVector 
{
    // automatic allocation
    // https://stackoverflow.com/questions/8553464/vector-as-a-class-member
    std::vector<double> columns;

    protected:
        std::string name;

    public:
        // Default constructor
		RowVector();

        ~ RowVector();

        // Default arguments
        // If the function could not find the argument in the call, it uses the default value.
        RowVector(const uint32_t n, const double *values=NULL, std::string new_name="None");

        RowVector(const uint32_t n, std::string new_name="None");

        RowVector(const RowVector & other);

        double & operator [] (const uint32_t i);

        double operator [] (const uint32_t i) const;

        const std::string get_name();

        RowVector operator + (const RowVector & other);

        RowVector operator * (const double a);

        const double operator * (const RowVector & other);

        void show();

        void resize(std::size_t new_size);

        std::size_t size() const noexcept;

        RowVector & operator += (const RowVector & other);

        RowVector & operator *= (const double a);
};

#endif
// End vector_double.h
