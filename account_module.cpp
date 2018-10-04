// Begin account_module.cpp
#include <iostream>
#include <cstdint>

#include "account_module.h"

using namespace std;

int32_t balance;


void deposit (int32_t amount){
    cout << "Deposit " << amount << '\n';
    balance += amount;
}


void withdraw (int32_t amount){
    cout << "Depowithdrawsit " << amount << '\n';
    balance += -amount;
}


int32_t check(){
    return balance;
}
// End account_module.cpp
