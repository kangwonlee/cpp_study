#include "account_module.h"
#include <iostream>

using namespace std;

int main(int argn, char * argv[]){

    cout << "account_module.check() = "<< check() <<'\n';

    deposit(10000);

    cout << "account_module.check() = "<< check() <<'\n';

    withdraw(3000);

    cout << "account_module.check() = "<< check() <<'\n';

    deposit(5000);

    cout << "account_module.check() = "<< check() <<'\n';

    return 0;
}
