#include <iostream>
#include <exception>

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

	double & operator[](const int i){
		return columns[i];
	}	
};


// http://www.cplusplus.com/doc/tutorial/exceptions/
class exception_mat_mul_size_mismatch: public exception{
  virtual const char* what() const throw()
  {
    return "Matrix multiplication size mismatch";
  }
} sz_mismatch;


class Matrix {
	protected:
		int n_col;
		int n_row;
		RowVector * rows;
	public:
		//Default constructor
		Matrix(){
			n_row = n_col = 0;
			rows = NULL;
		}

		Matrix(const int no_rows, const int no_columns, double ** value=NULL){

			n_row = no_rows;
			n_col = no_columns;

			rows = new RowVector[no_rows];
			if (value){
			for (int i=0; i<no_rows; ++i){
				rows[i] = RowVector(n_col, value[i]);
			}
		}
			else{
				for (int i=0; i<no_rows; ++i){
					rows[i] = RowVector(n_col);
				}
			}
		}

		RowVector operator[](const int i){
			return rows[i];
		}

		Matrix operator * (Matrix B){

			if (n_col != B.n_row){
				throw sz_mismatch;
			}

			Matrix result(n_row, B.n_col);

			for (int i=0; i<n_row; ++i){
				for (int j=0; j < B.n_col; ++j){
					result[i][j] = 0.0;
					for (int k=0; j< n_col; ++k){
						result[i][j] += rows[i][k] * B[k][j];
					}
				}
			}

			return result;
		}

};


int main(int argn, char *argv[]){
	double s[] = {1.0, 2.0};
	RowVector row (2, s);
	RowVector zeros(3);

	cout << "row[0] = " << row[0] << '\n';
	cout << "row[1] = " << row[1] << '\n';

	cout << "zeros[0] = " << zeros[0] << '\n';
	cout << "zeros[1] = " << zeros[1] << '\n';
	cout << "zeros[2] = " << zeros[2] << '\n';

	double id_0[] = {1.0, 0.0};
	double id_1[] = {0.0, 1.0};
	double * id_01 [] = {id_0, id_1};

	Matrix id(2, 2, id_01);

	for (int i=0; i < 2; ++i){
		for (int j=0; j < 2; ++j){
			cout << id[i][j] << ' ';
		}
		cout << '\n';
	}

	double m_0[] = {1.0, 2.0};
	double m_1[] = {3.0, 4.0};
	double * m_1234 [] = {m_0, m_1};

	Matrix m1234(2, 2, m_1234);

	for (int i=0; i < 2; ++i){
		for (int j=0; j < 2; ++j){
			cout << m1234[i][j] << ' ';
		}
		cout << '\n';
	}

	return 0;
}

