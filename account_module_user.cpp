// Begin account_module_user.cpp
#include <iostream>
#include <cstdint>

namespace account_a{
    #include "account_module.h"
}

namespace account_b{
    #include "account_module.h"
}

using namespace std;

int32_t main(int32_t argn, char ** argv){

    cout << "account_a::check() = "<< account_a::check() <<'\n';
    cout << "account_b::check() = "<< account_b::check() <<'\n';

    account_a::deposit(10000);

    cout << "account_a::check() = "<< account_a::check() <<'\n';
    cout << "account_b::check() = "<< account_b::check() <<'\n';

    account_a::withdraw(3000);

    cout << "account_a::check() = "<< account_a::check() <<'\n';
    cout << "account_b::check() = "<< account_b::check() <<'\n';

    account_a::deposit(5000);

    cout << "account_a::check() = "<< account_a::check() <<'\n';
    cout << "account_b::check() = "<< account_b::check() <<'\n';

    return 0;
}
// End account_module_user.cpp