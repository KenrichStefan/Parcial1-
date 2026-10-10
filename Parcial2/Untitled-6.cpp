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
        for (int j = 0; j < 3; j++) {
            cin >> alumnos[i].calificacion[j];
            if (alumnos[i].calificacion[j] < 0 || alumnos[i].calificacion[j] > 10) {
                cout << "Error: la calificación debe estar entre 0 y 10." << endl;
                return 1;
            }
        }
    }

    cout << "Alumnos " << "matricula " << "promedio" << endl;
    for (int i = 0; i < 5; i++) {
        float promedio = (alumnos[i].calificacion[0] + alumnos[i].calificacion[1] + alumnos[i].calificacion[2]) / 3.0;
        cout << alumnos[i].nombre << " " << alumnos[i].matricula << " " << promedio << endl;
    }

    return 0;
}