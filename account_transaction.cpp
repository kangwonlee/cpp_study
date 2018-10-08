// Begin account_transaction.cpp

#include <cstdint>
#include <iostream>
#include "account_class.h"

using namespace std;

void sample_transactions(BankAccount&, BankAccount&);


int32_t main(const int32_t argn, const char * argv[]){
    BankAccount a;
    BankAccount b;

    sample_transactions(a, b);

    return 0;
}


void sample_transactions(BankAccount& account_a, BankAccount& account_b){
    cout << "balance A = " << account_a.check_balance() << '\n';
    cout << "balance B = " << account_b.check_balance() << '\n';

    cout << "deposit " << account_a.deposit(100) << " to A" << '\n';
    cout << "deposit " << account_b.deposit(200) << " to B" << '\n';

    cout << "balance A = " << account_a.check_balance() << '\n';
    cout << "balance B = " << account_b.check_balance() << '\n';

    cout << "withdraw " << account_a.withdraw(10) << " from A" << '\n';
    cout << "withdraw " << account_b.withdraw(20) << " from B" << '\n';

    cout << "balance A = " << account_a.check_balance() << '\n';
    cout << "balance B = " << account_b.check_balance() << '\n';

    cout << "withdraw " << account_a.withdraw(100) << " from A" << '\n';
    cout << "withdraw " << account_b.withdraw(200) << " from B" << '\n';

    cout << "balance A = " << account_a.check_balance() << '\n';
    cout << "balance B = " << account_b.check_balance() << '\n';
}


// End account_transaction.cpp
// Build command : g++ -Wall -g account_transaction.cpp account_class.cpp -o account_transaction
