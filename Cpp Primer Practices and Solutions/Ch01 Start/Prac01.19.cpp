/* Practice 1.19 */

#include <iostream>

int main() {
    int start = 0, stop = 0;
    std::cout << "Please enter the number of begin and end.";
    std::cin  >> start >>  stop;
    if (start <= stop) {
        while (start <= stop) {std::cout << start << " "; start = start + 1;}
        std::cout << std::endl;
    } else {
        while (start >= stop) {std::cout << start << " "; start = start - 1;}
        std::cout << std::endl;
    } 
    return 0;
}