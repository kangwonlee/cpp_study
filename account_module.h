// Begin account_module.h
#include <cstdint>
#include <iostream>

int32_t balance;


void deposit (int32_t amount){
    std::cout << "Deposit " << amount << '\n';
    std::cout << "to " << & balance << '\n';
    balance += amount;
}


void withdraw (int32_t amount){
    std::cout << "Withdraws " << amount << '\n';
    std::cout << "from " << & balance << '\n';
    balance += -amount;
}


int32_t check(){
    std::cout << "balance of " << & balance << '\n';
    return balance;
}
// End account_module.h
