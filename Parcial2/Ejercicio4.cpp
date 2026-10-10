#include <iostream>
#include <string>
#include <random>
using namespace std;
int main () {
    double Arreglito[100];
     random_device rd;
    mt19937 gen(rd());
    uniform_real_distribution<double> dist(0.0, 1000.0);
    for (int i = 0; i < 100; i++) {
       Arreglito[i] = dist(gen);
    }
  for (int i = 1; i < 100; i++) {
       double sumado = Arreglito[i-1] + Arreglito[i];
       Arreglito[i] = sumado;
    }
    cout << "La suma de los elementos del arreglo es: " << Arreglito[99] << endl;
}
//CODIGO MANUAL
/*
#include <iostream>
#include <string>
using namespace std;
int main() {
    double Arreglito[100];
    for (int i = 0; i < 100; i++) {
         cout << "Ingrese el elemento " << i + 1 << ": ";
         cin >> Arreglito[i];
      }
    for (int i = 1; i < 100; i++) {
        double sumado = Arreglito[i-1] + Arreglito[i];
        Arreglito[i] = sumado;
    }
    cout << "La suma de los elementos del arreglo es: " << Arreglito[99] << endl;
}
*/