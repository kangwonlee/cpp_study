#include <iostream>
#include <exception>
#include <vector>


class RowVector 
{
    // automatic allocation
    // https://stackoverflow.com/questions/8553464/vector-as-a-class-member
    std::vector<double> columns;

    public:
        // Default constructor
		RowVector(){
		}

        RowVector(const int n, double *values=NULL){
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
        }

        double & operator [] (int i){
            return columns[i];
        }
};


int main(int argn, char *argv[]){
	double s[] = {1.0, 2.0};
	RowVector row (2, s);
	RowVector zeros(3);

	std::cout << "row[0] = " << row[0] << '\n';
	std::cout << "row[1] = " << row[1] << '\n';

	std::cout << "zeros[0] = " << zeros[0] << '\n';
	std::cout << "zeros[1] = " << zeros[1] << '\n';
	std::cout << "zeros[2] = " << zeros[2] << '\n';

}

