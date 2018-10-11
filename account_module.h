// Begin account_module.h
#include <cstdint>
#include <iostream>

int32_t balance;


void deposit (int32_t amount){
    std::cout << "Deposit\t" << amount << ' ';
    std::cout << "to\t" << & balance << '\n';
    balance += amount;
}


void withdraw (int32_t amount){
    std::cout << "Withdraw\t" << amount << ' ';
    std::cout << "from\t" << & balance << '\n';
    balance += -amount;
}


int32_t check(){
    std::cout << "(balance of " << & balance << ") ";
    return balance;
}
// End account_module.h
