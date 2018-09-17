#include <iostream>

using namespace std;


class RowVector {
    protected:
        int n_col;
        double * columns;
    public:
        // constructor
        RowVector(const int n, double *values=NULL){
            n_col = n;
            columns = new double[n];
	    if (values){
		    for (int i=0; i<n; ++i){
			    columns[i] = values[i];
		    }
	    }
        }

	double operator[](const int i){
		return columns[i];
	}	
};


int main(int argn, char *argv[]){
	double s[] = {1.0, 2.0};
	RowVector row (2, s);

	cout << "row[0] = " << row[0] << '\n';
	cout << "row[1] = " << row[1] << '\n';

	return 0;
}

