#include <iostream>
#include <iomanip>

using namespace std;

int main(int argn, char *argv[]){
    // This is an integer array
    int a[] = {1, 2, 3, 4};

    // This is a pointer variable to the array
    int *p = a;
    int *p_inc = a;

    for (int i=0; 4 > i; ++i){
        

        // Value of the first element of the array
        cout << "a[" << i << "]     = " << setw(16) << hex <<  a[i] << '\n';
        // Address of the first element of the array
        cout << "a + " << i << "    = " << setw(16) << (a + i) << '\n';
        // Address of the array variable;
        cout << "&(a[" << i << "])  = " << setw(16) << &(a[i]) << '\n';

        // Integer value at the location p + i
        cout << "*(p + " << i << ") = " << setw(16) << hex << *(p+i) << '\n';
        // Address where p + i is pointing to
        cout << "p + " << i << "    = " << setw(16) <<  (p+i) << '\n';

        // Integer value at the location p_inc
        cout << "*(p_inc) = " << setw(16) << hex << *(p_inc) << '\n';
        // Value of the pointer variable p
        cout << "p_inc    = " << setw(16) <<  (p_inc) << '\n';
	p_inc ++;
    }

    return 0;
}

