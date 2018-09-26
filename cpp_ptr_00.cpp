#include <iostream>

using namespace std;

int main(int argn, char *argv[]){
    int i = 0;
    int *p = &i;
    
    cout << "i = " << i << '\n';
    cout << "&i = " << &i << '\n';
    
    cout << "*p = " << *p << '\n';
    cout << "p = " << p << '\n';
    cout << "&p = " << &p << '\n';
    
    return 0;
}

