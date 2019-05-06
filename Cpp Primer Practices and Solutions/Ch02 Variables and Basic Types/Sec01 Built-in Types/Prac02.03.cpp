/* Practice 2.3 */

#include<iostream>

int main() {
    unsigned u1 = 10;
    unsigned u2 = 42;
    int i = 10;
    int j = 42;
    std::cout << "unsigned u1: " << u1 << std::endl;
    std::cout << "unsigned u2: " << u2 << std::endl;
    std::cout << "int i: " << i << std::endl;
    std::cout << "int j: " << j << std::endl;
    std::cout << "u2 - u1: " << u2 - u1 << std::endl;
    std::cout << "u1 - u2: " << u1 - u2 << std::endl;
    std::cout <<  "j - i: "  <<  j - i  << std::endl;
    std::cout <<  "i - j: "  <<  i - j  << std::endl;
    std::cout <<  "i - u1: " <<  i - u1 << std::endl;
    std::cout << "u1 - i: "  << u1 - i  << std::endl;
    std::cout <<  "j - u1: " <<  j - u1 << std::endl;
    std::cout << "u1 - j: "  << u1 - j  << std::endl;
}