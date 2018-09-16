#include <iostream>

using namespace std;

int main(int argn, char * argv []){
    char s[] = "Hello World!";
    int n = sizeof(s);
    
    for (int i = 0; i < n; ++i){
    cout << "s[" << i <<"] = " << s[i] << '\n';
    }
    
}

