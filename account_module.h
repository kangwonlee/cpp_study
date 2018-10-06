// Begin account_module.h
#include <cstdint>
#include <iostream>

int32_t balance;


void deposit (int32_t amount){
    std::cout << "Deposit " << amount << '\n';
    balance += amount;
}


void withdraw (int32_t amount){
    std::cout << "Withdraw " << amount << '\n';
    balance += -amount;
}


int32_t check(){
    return balance;
}
// End account_module.h
