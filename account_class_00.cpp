// Begin account_class_00.cpp

#include <cstdint>
#include <iostream>


using namespace std;


class BankAccount
{
    protected:
        uint32_t balance;
    public:
        BankAccount();
        BankAccount(BankAccount&);
        uint32_t deposit(uint32_t amount);
        uint32_t withdraw(uint32_t amount);
        uint32_t check_balance();
};


void sample_transactions(BankAccount&, BankAccount&);


int32_t main(const int32_t argn, const char * argv[]){
    BankAccount a;
    BankAccount b;

    sample_transactions(a, b);

    return 0;
}


BankAccount::BankAccount(){
    balance = 0;
}


BankAccount::BankAccount(BankAccount& other){
    balance = other.check_balance();
}


uint32_t BankAccount::deposit(uint32_t amount){
    balance += amount;
    return amount;
}


uint32_t BankAccount::withdraw(uint32_t amount){
    balance -= amount;
    return amount;
}


uint32_t BankAccount::check_balance(void){
    return balance;
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

// End account_class_00.cpp
