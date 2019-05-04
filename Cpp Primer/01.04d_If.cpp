/* If */

#include <iostream>

int main()
{
    // currVal is the number which we want to count.
    int currVal = 0;
    int val     = 0;
    // Write the first one
    if (std::cin >> currVal)
    {
        int cnt = 1;            //  Save the number of value we are processing.
        while (std::cin >> val)
        {
            if (val == currVal)
            {
                cnt = cnt + 1;
            }
            else
            {
                std::cout << currVal << " occurs " << cnt << " time(s) " << std::endl;
                currVal = val;  // Remember the new value.
                cnt = 1;        // Reset the counter.
            }
        }
        std::cout << currVal << " occurs " << cnt << " time(s) " << std::endl;
    }
    return 0;
}