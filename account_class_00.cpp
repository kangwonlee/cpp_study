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

}


// End account_class_00.cpp
