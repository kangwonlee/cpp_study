#include <iostream>
#include <iomanip>

using namespace std;

int main(int argn, char *argv[]){
    // These are variables
    int a[] = {1, 2, 3, 4};

    // This is a pointer variable
    int *p = a;

    // Value of the first element of the array
    cout << "a[0] = " << setw(16) << hex <<  a[0] << '\n';
    // Address of the first element of the array
    cout << "a    = " << setw(16) << (a + 0) << '\n';
    // Address of the array variable;
    cout << "&a   = " << setw(16) << &a << '\n';

    // Integer value at the location p
    cout << "*p   = " << setw(16) << hex << *p << '\n';
    // Value of the pointer variable p
    cout << "p    = " << setw(16) <<  p << '\n';
    // Address of the pointer variable p
    cout << "&p   = " << setw(16) << &p << '\n';

    return 0;
}

