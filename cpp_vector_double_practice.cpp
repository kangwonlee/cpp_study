#include <cassert>
#include <cstdint>
#include <exception>
#include <iostream>
#include <string>
#include <vector>


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
            name = "None";
		}

        RowVector(const uint32_t n, const double *values=NULL, const char *new_name="None"){
            columns.resize(n);

            // If initial values available, copy each value
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
        RowVector(const uint32_t n, const char *new_name="None") : RowVector(n, NULL, new_name){
        }

        RowVector(const RowVector & other){
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
            // Return reference; otherwise, unable to assign
            return columns[i];
        }

        const std::string get_name(){
            // Return constant; to prevent change
            return name;
        }

        RowVector operator + (const RowVector & other){
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

            // Make a new vector to return
            RowVector temp(*this);

            // Element loop
            for (auto & element : temp.columns){
                element *= a;
            }

            // Returning a temporary image
            return temp;
        }

        void show(){
            for (uint32_t i=0; columns.size()> i; ++i){
                std::cout << name << '[' << i << "] = " << columns[i] << '\n';
            }
        }
};


int32_t main(int32_t argn, char *argv[]){
	double s[] = {1.0, 2.0};

	RowVector row (2, s, "row");

    row.show();

	RowVector another_row (row);
    std::cout << "RowVector another_row (row);\n";
    row.show();
    another_row.show();

    another_row[1] += 0.5;
    std::cout << "another_row[1] += 0.5;\n";
    row.show();
    another_row.show();

    RowVector row_plus_another(row + another_row);
    std::cout << "RowVector row_plus_another(row + another_row);\n";
    row.show();
    another_row.show();
    row_plus_another.show();

	RowVector zeros(3u, "zeros");
    std::cout << "RowVector zeros(3);\n";
    row.show();
    another_row.show();
    row_plus_another.show();
    zeros.show();
}

