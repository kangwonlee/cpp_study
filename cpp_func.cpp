#include <iostream>

using namespace std;

int add_int(int a, int b);
double add_double(double a, double b);

int main(int argn, char *argv[]){
    cout << add_int(1, 2) << '\n';
    cout << add_double(1.0, 2.0) << '\n';
}


int add_int(int a, int b){
    return a + b;
}


double add_double(double a, double b){
    return a + b;
}

