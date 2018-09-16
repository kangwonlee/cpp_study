#include <cstdio>

int main(int argn, char *argv[]){
    int i = 0;
    double s = 0.1, q = 2.3;
    
    double pi_float = i + q + s;
    int pi_int = (int)(i + q + s);
    
    char c = 'c';

    printf("pi_float = %f\n", pi_float);
    printf("pi_int = %d\n", pi_int);
    printf("c (in char) = %c\n", c);
    printf("c (in int) = %d\n", (int) c);
    
}

