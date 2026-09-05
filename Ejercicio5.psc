Algoritmo Ejercicio5
	Definir opcion Como Entero
	Definir lado, base, radio, perimetro Como Real
	
	Escribir "--- Cálculo de Perímetros ---"
	Escribir "1. Cuadrado"
	Escribir "2. Triángulo equilátero"
	Escribir "3. Círculo"
	Escribir "Elija una opción: "
	Cuadrado <- 1
	Triangulo <- 2
	Circulo <- 3
	Leer opcion
	Segun opcion Hacer
		1:
			Escribir "Ingrese el lado del cuadrado:"
			Leer lado
			perimetro <- lado * 4
			Escribir "El perímetro es: ", perimetro
		2:
			Escribir "Ingrese el lado del triángulo equilatero:"
			Leer lado
			perimetro <- lado * 3
			Escribir "El perímetro es: ", perimetro
		3:
			Escribir "Ingrese el radio del círculo:"
			Leer radio
			perimetro <- 2 * 3.1416 * radio
			Escribir "El perímetro (circunferencia) es: ", perimetro
		De Otro Modo:
			Escribir "error"
	FinSegun
FinAlgoritmo
