#include <iomanip>
#include <iostream>
#include <cstdlib>

using namespace std;

int main(const int argn, const char * argv[]){
    const int n = 16;
    int * m = (int *) malloc(sizeof(int) * n);
    int * c = (int *) calloc(n, sizeof(int));

    // must check if OS could successfully allocate memory
    if (!m){
        cout << "Unable to allocate m = malloc(" << (sizeof(int) * n)
             << ")\n";
        exit(EXIT_FAILURE);
    }

    if (!c){
        cout << "Unable to allocate c = calloc(" << n
             << ", " << sizeof(int)
             << ")\n";
        exit(EXIT_FAILURE);
    }

    cout << "sizeof m = " << sizeof m << "\n";

    for (int i=0; n > i; ++i){
        cout << "m[" << setw(2) << dec << i << "] = " 
	     << hex << m[i] << '\t';
        cout << "c[" << setw(2) << dec << i << "] = " 
	     << hex << c[i] << '\n';
    }

    free(c);
    free(m);

    return 0;
}

