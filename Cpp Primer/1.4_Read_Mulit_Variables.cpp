/* Read Multiple Variables */

# include <iostream>

int main()
{
    int sum     = 0;
    int value   = 0;
    while (std::cin >> value)
        sum = sum + value;
    std::cout << "Sum is " << sum << std::endl;
    return 0;
}