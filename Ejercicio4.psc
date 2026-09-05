ALgoritmo Ejercicio4
	Definir num1, num2, resultado Como Real
	
	Escribir "Ingrese el primer número: "
	Leer num1
	Escribir "Ingrese el segundo número: "
	Leer num2
	
	Si num1 = num2 Entonces
		resultado <- num1 * num2
		Escribir resultado
	SiNo
		Si num1 > num2 Entonces
			resultado <- num1 - num2
			Escribir resultado
		SiNo
			resultado <- num1 + num2
			Escribir resultado
		FinSi
	FinSi
FinAlgoritmo