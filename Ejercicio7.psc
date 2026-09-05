Algoritmo Ejercicio7
	Definir p1, p2, p3, promedioAlumno Como Real
	Definir sumaPromedios, promedioGrupo Como Real
	Definir cantidadAlumnos Como Entero
	Definir continuar Como Caracter
	
	sumaPromedios <- 0
	cantidadAlumnos <- 0
	continuar <- "S"
	
	Mientras continuar = "S" Hacer
		Escribir "Ingrese la primera calificación: "
		Leer p1
		Escribir "Ingrese la segunda calificación: "
		Leer p2
		Escribir "Ingrese la tercera calificación: "
		Leer p3
		
		promedioAlumno <- (p1 + p2 + p3) / 3
		Escribir "El promedio del alumno es: ", promedioAlumno
		
		sumaPromedios <- sumaPromedios + promedioAlumno
		cantidadAlumnos <- cantidadAlumnos + 1
		
		Escribir "¿Desea capturar otro alumno? (S/N): "
		Leer continuar
	FinMientras
	
	Si cantidadAlumnos > 0 Entonces
		promedioGrupo <- sumaPromedios / cantidadAlumnos
		Escribir "El promedio general del grupo es: ", promedioGrupo
	FinSi
FinAlgoritmo
