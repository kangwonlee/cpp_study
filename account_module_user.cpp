#include <iostream>
#include <cstdint>

#include "account_module.h"

using namespace std;

int32_t main(int32_t argn, char ** argv){

    cout << "account_module.check() = "<< account::check() <<'\n';

    account::deposit(10000);

    cout << "account_module.check() = "<< account::check() <<'\n';

    account::withdraw(3000);

    cout << "account_module.check() = "<< account::check() <<'\n';

    account::deposit(5000);

    cout << "account_module.check() = "<< account::check() <<'\n';

    return 0;
}
