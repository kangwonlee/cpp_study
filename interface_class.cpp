// https://www.tutorialspoint.com/cplusplus/cpp_interfaces.htm

#include <cstdint>
#include <iostream>
 
 
// Base class
class Shape {
   public:
      // pure virtual function providing interface framework.
      virtual int getArea() = 0;
      void setWidth(int w) {
         width = w;
      }
   
      void setHeight(int h) {
         height = h;
      }
   
   protected:
      int width;
      int height;
};
 
// Derived classes
class Rectangle: public Shape {
   public:
      int getArea() { 
         return (width * height); 
      }
};

class Triangle: public Shape {
   public:
      int getArea() { 
         return (width * height)/2; 
      }
};
 
int32_t main(void) {
   Rectangle Rect;
   Triangle  Tri;
 
   Rect.setWidth(5);
   Rect.setHeight(7);
   
   // Print the area of the object.
   std::cout << "Total Rectangle area: " << Rect.getArea() << '\n';

   Tri.setWidth(5);
   Tri.setHeight(7);
   
   // Print the area of the object.
   std::cout << "Total Triangle area: " << Tri.getArea() << '\n'; 

   return 0;
}