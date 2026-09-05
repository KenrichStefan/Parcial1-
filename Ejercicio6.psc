Algoritmo Ejercicio6
	Definir n, contador, contAprobadas, contDesaprobadas  Como Entero
	Definir sumaTotal, sumaAprobadas, sumaDesaprobadas, promedioGeneral, nota, promedioAprobadas, promedioDesaprobadas Como Real
	
	sumaTotal <- 0
	sumaAprobadas <- 0
	sumaDesaprobadas <- 0
	contAprobadas <- 0
	contDesaprobadas <- 0
	contador <- 1
	
	Escribir "Ingrese el número de notas a evaluar: "
	Leer n
	
	Mientras contador <= n Hacer
		Escribir "Ingrese la nota ", contador, ": "
		Leer nota
		
		sumaTotal <- sumaTotal + nota
		
		Si nota >= 6 Entonces
			contAprobadas <- contAprobadas + 1
			sumaAprobadas <- sumaAprobadas + nota
		SiNo
			contDesaprobadas <- contDesaprobadas + 1
			sumaDesaprobadas <- sumaDesaprobadas + nota
		FinSi
		
		contador <- contador + 1
	FinMientras
	
	promedioGeneral <- sumaTotal / n
	
	Escribir "Cantidad de aprobados: ", contAprobadas
	Escribir "Cantidad de desaprobados: ", contDesaprobadas
	Escribir "Promedio general: ", promedioGeneral
	
	Si contAprobadas > 0 Entonces
		promedioAprobadas <- sumaAprobadas / contAprobadas
		Escribir "Promedio de aprobados: ", promedioAprobadas
	SiNo
		Escribir "No hay alumnos aprobados"
	FinSi
	
	Si contDesaprobadas > 0 Entonces
		promedioDesaprobadas <- sumaDesaprobadas / contDesaprobadas
		Escribir "Promedio de desaprobados: ", promedioDesaprobadas
	SiNo
		Escribir "No hay alumnos desaprobados"
	FinSi
FinAlgoritmo
