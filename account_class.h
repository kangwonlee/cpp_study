// Begin account_class.h

#include <cstdint>
#include <iostream>


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

// End account_class.h
