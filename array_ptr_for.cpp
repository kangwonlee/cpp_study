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

        // Integer value at the location p
        cout << "*(p + " << i << ") = " << setw(16) << hex << *(p+i) << '\n';
        // Value of the pointer variable p
        cout << "p + " << i << "    = " << setw(16) <<  (p+i) << '\n';
        // Address of the pointer variable p
        cout << "&p   = " << setw(16) << &p << '\n';

    }

    return 0;
}

