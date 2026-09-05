Algoritmo Ejercicio2
	Definir n1, n2, n3, promedio Como Real
	
	Escribir "Ingrese la primera calificación: "
	Leer n1
	Escribir "Ingrese la segunda calificación: "
	Leer n2
	Escribir "Ingrese la tercera calificación: "
	Leer n3
	
	promedio <- (n1 + n2 + n3) / 3
	
	Escribir "El promedio es: ", promedio
	
	Si promedio >= 6 Entonces
		Escribir "APROBADO"
	SiNo
		Escribir "REPROBADO"
	FinSi
FinAlgoritmo