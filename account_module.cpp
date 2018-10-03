int balance;


void deposit (int amount){
    balance += amount;
}


void withdraw (int amount){
    balance += -amount;
}


int check(){
    return balance;
}
