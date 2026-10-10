#include <iostream>
#include <string>

using namespace std;  
void intercambiar(double &a, double &b) {
    double temp = a;
    a = b;
    b = temp;
}
int main() {
    cout << "Ingrese el valor de x: ";
    double x, y;
    cin >> x;
    cout << "Ingrese el valor de y: ";
    cin >> y;
    std::cout << "Antes:   x = " << x << ", y = " << y << std::endl;
    intercambiar(x, y);
    std::cout << "Despues: x = " << x << ", y = " << y << std::endl;

    return 0;
}
