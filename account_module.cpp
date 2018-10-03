// Begin account_module.cpp
#include <iostream>

using namespace std;

int balance;


void deposit (int amount){
    cout << "Deposit " << amount << '\n';
    balance += amount;
}


void withdraw (int amount){
    cout << "Depowithdrawsit " << amount << '\n';
    balance += -amount;
}


int check(){
    return balance;
}
// End account_module.cpp
