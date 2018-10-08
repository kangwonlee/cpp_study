#include <cassert>
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

        RowVector(const int n, double *values=NULL, const char *new_name="None"){
            columns.resize(n);

            // If initial values available, copy each value
            if (values){
                for (int i=0; i<n; ++i){
                    columns[i] = values[i];
                }
            }
            // If no initial values, set all values zero
            else{
                    for (int i=0; i<n; ++i){
                        columns[i] = 0.0;
                }
            }

            name = new_name;
        }

        RowVector(const int n, const char *new_name="None"){
            columns.resize(n);
            name = new_name;
            for (int i=0; i<n; ++i){
                columns[i] = 0.0;
            }
        }

        RowVector(const RowVector & other){
            // https://codereview.stackexchange.com/questions/149669/c-operator-overloading-for-matrix-operations-follow-up
            // http://www.cplusplus.com/reference/vector/vector/resize/
            columns.resize(other.columns.size());
            for(unsigned int i=0; columns.size() > i; ++i){
                columns[i] = other.columns[i];
            }

            name = other.name;
            name.append("2");
        }

        double & operator [] (int i){
            return columns[i];
        }

        const std::string get_name(){
            // Return constant; to prevent change
            return name;
        }

        RowVector operator + (RowVector & other){
            // Check size
            assert(columns.size() == other.columns.size());

            // Make a new vector to return
            RowVector temp(other);

            // Element loop
            for (unsigned int i=0; columns.size() > i; ++i){
                temp[i] += columns[i];
            }

            // Returning a temporary image
            return temp;
        }

        void show(){
            for (unsigned int i=0; columns.size()> i; ++i){
                std::cout << name << '[' << i << "] = " << columns[i] << '\n';
            }
        }
};


int main(int argn, char *argv[]){
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

	RowVector zeros(3);
    std::cout << "RowVector zeros(3);\n";
	std::cout << "zeros[0] = " << zeros[0] << '\n';
	std::cout << "zeros[1] = " << zeros[1] << '\n';
	std::cout << "zeros[2] = " << zeros[2] << '\n';

}

