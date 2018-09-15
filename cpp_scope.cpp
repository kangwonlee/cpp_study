#include <iostream>

using namespace std;

int add_int(int a, int b);
double add_double(double a, double b);

int a = 0;
char c[] = "zzz";


int main(int argn, char *argv[]){
    
    cout << "main() : c = " << c << '\n';
    cout << add_int(1, 2) << '\n';
    cout << add_double(1.1, 2.04) << '\n';
    cout << "main() : c = " << c << '\n';
}


int add_int(int a, int b){
    int c = a + b;
    cout << "add_int() : c = " << c << '\n';
    return c;
}


double add_double(double a, double b){
    double c = a + b;
    cout << "add_double() : c = " << c << '\n';
    return c;
}

