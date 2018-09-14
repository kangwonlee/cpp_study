#include <iostream>

using namespace std;

int main(int argn, char *argv[]) {
    int a_int;

    cout << "a = ?";
    cin >> a_int;
    
    if (a_int % 2){
        cout << "a is an odd number.\n";
    }
    
    if (a_int % 3){
        cout << "I don't think that you can divide 'a' with 3.\n";
    }

    return 0;
}

