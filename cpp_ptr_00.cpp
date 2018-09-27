#include <iostream>
#include <iomanip>

using namespace std;

int main(int argn, char *argv[]){
    // These are variables
    int i = 0, j = 0x01020304;

    // This is a pointer variable
    int *p = &i;

    // This is a reference to i
    int &r = i;

    // Value of the variable i
    cout << "i  = " << setw(16) << hex <<  i << '\n';
    // Address of the variable i
    cout << "&i = " << setw(16) << &i << '\n';

    // Integer value at the location p
    cout << "*p = " << setw(16) << hex << *p << '\n';
    // Value of the pointer variable p
    cout << "p  = " << setw(16) <<  p << '\n';
    // Address of the pointer variable p
    cout << "&p = " << setw(16) << &p << '\n';

    // Value of reference variable r
    cout << "r  = " << setw(16) << hex << r << '\n';
    // Address of the reference variable r
    cout << "&r = " << setw(16) << &r << '\n';

    // Reassigning the pointer variable p
    p = &j;
    // Now p points to the variable j

    // Value of the variable j
    cout << "j  = " << setw(16) <<  j << '\n';
    // Address of the variable j
    cout << "&j = " << setw(16) << &j << '\n';

    // Integer value at the location p
    cout << "*p = " << setw(16) << *p << '\n';
    // Value of the pointer variable p
    cout << "p  = " << setw(16) <<  p << '\n';
    // Address of the pointer variable p
    cout << "&p = " << setw(16) << &p << '\n';
    
    return 0;
}

