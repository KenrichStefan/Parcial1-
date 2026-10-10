#include <iostream>
#include <string>
#include <random>
using namespace std;

int main() {
    random_device rd;
    mt19937 gen(rd());
    uniform_real_distribution<float> dist(0.0, 10.0);
    float arreglo[6];
    cout << "Ingrese las calificaciones de los parciales" << endl;
    for (int i = 0; i < 5; i++) 
    {
        arreglo[i] = dist(gen);
    }
    arreglo[5] = (arreglo[0] + arreglo[1] + arreglo[2] + arreglo[3] + arreglo[4]) / 5.0;
    cout << "El promedio del alumno es " << arreglo[5] << endl;
    cout << "Las calificaciones ingresadas son: ";
    for (int i = 0; i < 5; i++) 
    {
        cout << arreglo[i] << ", ";
    }
    cout << endl;
    return 0;
}
// CODIGO MANUAL 
/*
#include <iostream>
#include <string>
using namespace std;

int main() {
    
    float arreglo[6];
    cout << "Ingrese las calificaciones de los parciales" << endl;
    for (int i = 0; i < 5; i++) 
    {
        cin >> arreglo[i];
        if (arreglo[i] < 0 || arreglo[i] > 10) 
        {
            cout << "Error: la calificación debe estar entre 0 y 10." << endl;
            return 1;
        }
        
    }
    arreglo[5] = (arreglo[0] + arreglo[1] + arreglo[2] + arreglo[3] + arreglo[4]) / 5.0;
    cout << "El promedio del alumno es " << arreglo[5] << endl;
    cout << "Las calificaciones ingresadas son: ";
    for (int i = 0; i < 5; i++) 
    {
        cout << arreglo[i] << ", ";
    }
    cout << endl;
    return 0;
}
*/