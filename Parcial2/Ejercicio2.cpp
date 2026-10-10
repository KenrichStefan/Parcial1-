#include <iostream>
#include <string>
#include <random>
using namespace std;
int main () {
     random_device rd;
    mt19937 gen(rd());
    uniform_real_distribution<double> dist(0.0, 10.0);
float arreglo0[5];
float arreglo1[5];
float arreglo2[5];
cout << "ingrese los promedio del primer grupo" << endl;
for (int i = 0; i < 5; i++) {
arreglo0[i] = dist(gen);

}
cout << "ingrese los promedio del segundo grupo" << endl;
for (int i = 0; i < 5; i++) {
arreglo1[i] = dist(gen);
}
for (int i = 0; i < 5; i++) {
     if (arreglo0[i] < arreglo1[i])
     arreglo2[i] = arreglo1[i];
     else
        arreglo2[i] = arreglo0[i];
}
cout  << "Promedio del primer grupo: " << " " << "Promedio del segundo grupo: " << " " << "Mejor promedio: " << endl;
for (int i = 0; i < 5; i++) {
cout  << arreglo0[i] << " " << arreglo1[i] << " " << arreglo2[i] << endl;
}
}
// CODIGO MANUAL
/*#include <iostream>
#include <string>
#include <random>
using namespace std;
int main () {
   
float arreglo0[5];
float arreglo1[5];
float arreglo2[5];
cout << "ingrese los promedio del primer grupo" << endl;
for (int i = 0; i < 5; i++) {
  cin >> arreglo[i];
        if (arreglo[i] < 0 || arreglo[i] > 10) 
        {
            cout << "Error: la calificación debe estar entre 0 y 10." << endl;
            return 1;
        }

}
cout << "ingrese los promedio del segundo grupo" << endl;
for (int i = 0; i < 5; i++) {
  cin >> arreglo[i];
        if (arreglo[i] < 0 || arreglo[i] > 10) 
        {
            cout << "Error: la calificación debe estar entre 0 y 10." << endl;
            return 1;
        }
}
for (int i = 0; i < 5; i++) {
     if (arreglo0[i] < arreglo1[i])
     arreglo2[i] = arreglo1[i];
     else
        arreglo2[i] = arreglo0[i];
}
cout  << "Promedio del primer grupo: " << " " << "Promedio del segundo grupo: " << " " << "Mejor promedio: " << endl;
for (int i = 0; i < 5; i++) {
cout  << arreglo0[i] << " " << arreglo1[i] << " " << arreglo2[i] << endl;
}
}
*/