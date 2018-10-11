// Begin cpp_vector_double_practice.cpp

#include <cassert>
#include <cstdint>
#include <exception>
#include <iostream>
#include <string>
#include <vector>

#include    "vector_double.h"

int32_t main(int32_t argn, char *argv[]){
	double s[] = {1.0, 2.0};

    std::cout << "RowVector row (2u, s, \"row\");\n";
	RowVector row (2u, s, "row");

    row.show();

    std::cout << "RowVector another_row (row);\n";
	RowVector another_row (row);
    row.show();
    another_row.show();

    std::cout << "another_row[1] += 0.5;\n";
    another_row[1] += 0.5;
    row.show();
    another_row.show();

    std::cout << "RowVector row_plus_another(row + another_row);\n";
    RowVector row_plus_another(row + another_row);
    row.show();
    another_row.show();
    row_plus_another.show();

    std::cout << "RowVector zeros(3);\n";
	RowVector zeros(3u, "zeros");
    row.show();
    another_row.show();
    row_plus_another.show();
    zeros.show();

    double t[] = {2.0, -1.0};
	RowVector ortho (2u, t, "ortho");
    double dot = row * ortho;
    std::cout << "double dot = row * ortho;\n";
    std::cout << "dot  = " << dot << '\n';

    std::cout << "dot = row * row;\n";
    dot = row * row;
    std::cout << "dot  = " << dot << '\n';

}

// End cpp_vector_double_practice.cpp
// Build command : g++ -Wall -g -std=c++14 cpp_vector_double_practice.cpp vector_double.cpp -o cpp_vector_double_practice
