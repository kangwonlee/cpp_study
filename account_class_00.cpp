// Begin account_class_00.cpp

#include <cstdint>
#include <iostream>
#include "account_class.h"

using namespace std;


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

// End account_class_00.cpp
