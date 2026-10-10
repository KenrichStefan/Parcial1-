#include <iostream>
#include <string>
#include <random>
using namespace std;
int main () {
     random_device rd;
    mt19937 gen(rd());
    uniform_real_distribution<double> dist(0.0, 10.0);
 double arreglo[10][3];
;
cout << "ingrese los promedio del primer grupo" << endl;
for (int i = 0; i < 5; i++) {
arreglo[i][0] = dist(gen);
}
cout << "ingrese los promedio del segundo grupo" << endl;
for (int i = 0; i < 5; i++) {
arreglo[i][1] = dist(gen);
}
cout << "ingrese los promedio del tercer grupo" << endl;
for (int i = 0; i < 5; i++) {
     if (arreglo[i][0] < arreglo[i][1])
     arreglo[i][2] = arreglo[i][1];
     else
        arreglo[i][2] = arreglo[i][0];
}
for (int i = 0; i < 5; i++) {
   cout << "Promedio del primer alumno: " << arreglo[i][0] << " Promedio del segundo alumno: " 
   << arreglo[i][1] << " Promedio mas alto: " << arreglo[i][2] << endl;
}
}
//CODIGO MANUAL
/*
 #include <iostream>
#include <string>
using namespace std;
int main () {
 double arreglo0[10][3];
cout << "ingrese los promedio del primer grupo" << endl;
for (int i = 0; i < 5; i++) {cin >> arreglo0[i][0];
        if (arreglo0[i][0] < 0 || arreglo0[i][0] > 10) 
        {
            cout << "Error: la calificación debe estar entre 0 y 10." << endl;
            return 1;
        }
}
cout << "ingrese los promedio del segundo grupo" << endl;
for (int i = 0; i < 5; i++) {
cin >> arreglo0[i][1];
        if (arreglo0[i][1] < 0 || arreglo0[i][1] > 10) 
        {
            cout << "Error: la calificación debe estar entre 0 y 10." << endl;
            return 1;
        }
}
cout << "ingrese los promedio del tercer grupo" << endl;
for (int i = 0; i < 5; i++) {
     if (arreglo0[i][0] < arreglo0[i][1])
     arreglo0[i][2] = arreglo0[i][1];
     else
        arreglo0[i][2] = arreglo0[i][0];
}
for (int i = 0; i < 5; i++) {
   cout << "Promedio del primer alumno: " << arreglo0[i][0] << " Promedio del segundo alumno: "
    << arreglo0[i][1] << " Promedio mas alto: " << arreglo0[i][2] << endl;
}
}
*/