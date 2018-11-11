// https://www.geeksforgeeks.org/virtual-function-cpp/

// CPP program to illustrate  
// concept of Virtual Functions 
#include<cstdint>
#include<iostream> 

class base { 
public: 
    virtual void print () { 
        std::cout<< "print base class" <<'\n'; 
    } 
  
    void show () { 
        std::cout<< "show base class" <<'\n'; 
    } 
};


class derived:public base 
{ 
public: 
    void print () { 
        std::cout<< "print derived class" <<'\n';
    } 
  
    void show () { 
        std::cout<< "show derived class" <<'\n';
    } 
};
  

int32_t main()
{
    base *bptr; 
    derived d; 
    bptr = &d; 
      
    //virtual function, binded at runtime 
    bptr->print();  
      
    // Non-virtual function, binded at compile time 
    bptr->show();  
}
