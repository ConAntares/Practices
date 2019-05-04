/* Test Armadillo */

// Armadillo Download: http://arma.sourceforge.net/download.html

# include <iostream> 
# include <D:\Armadillo\include\armadillo>            // windows
// # include <armadillo>

using namespace arma;
int main()
{
    mat A = randu<mat>(5,5);
    mat B = A.t();

    A.print("A   = \n");
    B.print("A.T = \n");
}