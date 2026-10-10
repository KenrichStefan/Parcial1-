#include <iostream>
#include <string>
using namespace std;

struct Alumno {
    string nombre;
    string matricula;
    float calificacion[3];
};

int main() {
    Alumno alumnos[5];

    for (int i = 0; i < 5; i++) {
        cout << "Ingrese el nombre del alumno: ";
        cin >> alumnos[i].nombre;

        cout << "Ingrese su matricula: ";
        cin >> alumnos[i].matricula;

        cout << "Ingrese sus calificaciones: ";
        for (int i = 0; i < 3; i++) { 
            cin >> alumnos[i].calificacion[i];
            if (alumnos[i].calificacion[i] < 0 || alumnos[i].calificacion[i] > 10) {
                cout << "Error: la calificación debe estar entre 0 y 10." << endl;
                return 1;
            }
        }
    }

    cout << "Alumnos\tmatricula\tpromedio" << endl;
    for (int i = 0; i < 5; i++) {
        float promedio = (alumnos[i].calificacion[0] + alumnos[i].calificacion[1] + alumnos[i].calificacion[2]) / 3.0;
        cout << alumnos[i].nombre << "\t" << alumnos[i].matricula << "\t" << promedio << endl;
    }

    return 0;
}