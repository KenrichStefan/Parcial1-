#include <iostream>
#include <string>
#include <sstream>
#include <cctype>
using namespace std;

int main() {
    string entrada;
    cout << "Ingresa nombre(s) y dos apellidos: ";
    getline(cin, entrada);

    istringstream ss(entrada);
    string palabra, penultima, ultima, nombres;
    int cantidad = 0;
    int totalNombres = 0;

    while (ss >> palabra) {
        // Validar que no haya números
        for (char c : palabra) {
            if (isdigit(static_cast<unsigned char>(c))) {
                cout << "Error: no se permiten números (\"" << palabra << "\")." << endl;
                return 1;
            }
        }

        // Si ya había dos palabras guardadas, la más vieja es un nombre
        if (cantidad >= 2) {
            totalNombres++;
            nombres += "  " + to_string(totalNombres) + ". " + penultima + "\n";
        }

        // Desplazar: la última pasa a penúltima y la nueva queda como última
        if (cantidad >= 1) {
            penultima = ultima;
        }
        ultima = palabra;
        cantidad++;
    }

    // Mínimo: un nombre + dos apellidos
    if (cantidad < 3) {
        cout << "Error: debes ingresar al menos un nombre y dos apellidos." << endl;
        return 1;
    }

    cout << "Nombres:" << endl << nombres;
    cout << "Primer apellido: " << penultima << endl;
    cout << "Segundo apellido: " << ultima << endl;

    return 0;
}