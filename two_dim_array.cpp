#include <iostream>
#include <iomanip>

using namespace std;

int main(int argn, char *argv[]){
    
    // This is a two dimensional array
    int a[][4] = {
        {11, 12, 13, 14},
        {21, 22, 23, 24},
        {31, 32, 33, 34},
        {41, 42, 43, 44},
    };

    for (int i=0; 4 > i; ++i){
        for (int j=0; 4 > j; ++j){
            cout << a[i][j] << ' ';
        }        
        cout << '\n';
    }

    return 0;
}

