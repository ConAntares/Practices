/* Practice 1.16 */

#include <iostream>

int main()
{
    int ele = 0;
    int sum = 0;
    int cou = 0;
    while(std::cin >> ele) {
        sum = sum + ele;
        cou = cou + 1;
        if (cou >= 10) {
            break;
        }
    }
    std::cout << "Sum is " << sum << std::endl;
}