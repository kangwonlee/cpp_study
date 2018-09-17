#include <iostream>

using namespace std;


class RowVector {
    protected:
        int n_col;
        double * columns;
    public:
        // Default constructor
		RowVector(){
			n_col = 0;
			columns = NULL;
		}

        RowVector(const int n, double *values=NULL){
            n_col = n;
            columns = new double[n];
	    if (values){
		    for (int i=0; i<n; ++i){
			    columns[i] = values[i];
		    }
	    }
			else{
				for (int i=0; i<n; ++i){
					columns[i] = 0.0;
        }
			}
        }

	double operator[](const int i){
		return columns[i];
	}	
};


class Matrix {
	protected:
		int n_col;
		int n_row;
		RowVector * rows;
	public:
		//constructor
		Matrix(const int no_rows, const int no_columns, double ** value){

			n_row = no_rows;
			n_col = no_columns;

			rows = new RowVector[no_rows];
			for (int i=0; i<no_rows; ++i){
				rows[i] = RowVector(n_col, value[i]);
			}
		}

	RowVector operator[](const int i){
		return rows[i];
	}	
};


int main(int argn, char *argv[]){
	double s[] = {1.0, 2.0};
	RowVector row (2, s);

	cout << "row[0] = " << row[0] << '\n';
	cout << "row[1] = " << row[1] << '\n';

	return 0;
}

