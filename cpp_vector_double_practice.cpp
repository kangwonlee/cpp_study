// Begin cpp_vector_double_practice.cpp

#include <cassert>
#include <cstdint>
#include <exception>
#include <iostream>
#include <string>
#include <vector>

#define LOG

class RowVector 
{
    // automatic allocation
    // https://stackoverflow.com/questions/8553464/vector-as-a-class-member
    std::vector<double> columns;

    protected:
        std::string name;

    public:
        // Default constructor
		RowVector(){
#ifdef LOG
            std::cout << '[' << &columns << ']' << "RowVector()" << '\n';
#endif
            name = "None";
		}

        ~ RowVector(){
#ifdef LOG
            std::cout << '[' << &columns << ']' << "~ RowVector()" << '\n';
#endif
        }

        // Default arguments
        // If the function could not find the argument in the call, it uses the default value.
        RowVector(const uint32_t n, const double *values=NULL, std::string new_name="None"){
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

        // Instead of implementing another constructor, reusing an existing one
        // c++ 11 or later
        RowVector(const uint32_t n, std::string new_name="None") : RowVector(n, NULL, new_name){
#ifdef LOG
            std::cout << '[' << &columns << ']' << "RowVector(" << n << ", " << new_name << ")\n";
#endif
        }

        RowVector(const RowVector & other){
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

        double & operator [] (const uint32_t i){
#ifdef LOG
            std::cout << '[' << &columns << ']' << "double & operator [] (" << i << ")\n";
#endif
            // Return reference; otherwise, unable to assign
            return columns[i];
        }

        const std::string get_name(){
#ifdef LOG
            std::cout << '[' << &columns << ']' << "void show()\n";
#endif
            // Return constant; to prevent change
            return name;
        }

        RowVector operator + (const RowVector & other){
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

        RowVector operator * (const double a){
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

        const double operator * (const RowVector & other){
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

        void show(){
#ifdef LOG
            std::cout << '[' << &columns << ']' << "void show()\n";
#endif
            for (uint32_t i=0; columns.size()> i; ++i){
                std::cout << name << '[' << i << "] = " << columns[i] << '\n';
            }
        }
};


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
// Build command : g++ -Wall -g -std=c++14 cpp_vector_double_practice.cpp -o cpp_vector_double_practice
