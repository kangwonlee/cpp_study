#include <iostream>
#include <iomanip>

using namespace std;

int main(int argn, char *argv[]){

    // This is a two dimensional array
    int a[][2][3] = {
        {
            {111, 112, 113},
            {121, 122, 123},
        },
        {
            {211, 212, 213},
            {221, 222, 223},
        },
        {
            {311, 312, 313},
            {321, 322, 323},
        },
        {
            {411, 412, 413},
            {421, 422, 423},
        },           
    };

    for (int i=0; 4 > i; ++i){
        for (int j=0; 2 > j; ++j){
            for (int k=0; 3 > k ; ++k){
                cout << a[i][j][k] << ' ';
            }
            cout << '\n';
        }
        cout << "============" << '\n';
    }

    return 0;
}

