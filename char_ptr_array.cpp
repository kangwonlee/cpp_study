#include <iostream>
#include <iomanip>

using namespace std;

int main(const int argn, char *argv[]){

    // This is an array of pointers
    const char *s[] = {
        "Is",
        "this",
        "sort of",
        "familiar ?",
    };

    for (int i=0; 4 > i; ++i){
            cout << s[i]<< ' ';
    }
    cout << '\n';

    // This is another array of pointers
    const char *t[] = {
        "If",
        "not",
        "certain,",
	"please",
        "run", "this", "with", "arguments.",
    };

    for (int i=0; 8 > i; ++i){
            cout << t[i]<< ' ';
    }
    cout << '\n';

    // Please run with arguments
    for (int i=0; argn > i; ++i){
            cout << "argv[" << i << "]= " << argv[i]<< '\n';
    }

    return 0;
}

