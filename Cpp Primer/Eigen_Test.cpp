/* Test Eigen */

// Eigen Git: https://github.com/eigenteam/eigen-git-mirror

# include <iostream> 
# include <D:\Eigen\Eigen\Dense>            // windows
// # include <Eigen3\Dense>

using namespace std; 
using namespace Eigen;

int main()
{
    Matrix2d a(2, 2);   a << 1, 2, 3, 4; 
    MatrixXd b(2, 2);   b << 2, 3, 1, 4; 
    cout << "a + b =\n" << a + b << endl;
}