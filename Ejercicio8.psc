Algoritmo Ejercicio8
	Definir Calificacion1Alumno1, Calificacion2Alumno1, Calificacion1Alumno3, Calificacion1Alumno2, Calificacion2Alumno2, Calificacion3Alumno2 Como Real
	Definir promedioAlumno1, promedioAlumno2 Como Real
	
	Escribir "--- Datos del Alumno 1 ---"
	Escribir "Ingrese la primera calificación: "
	Leer Calificacion1Alumno1
	Escribir "Ingrese la segunda calificación: "
	Leer Calificacion2Alumno1
	Escribir "Ingrese la tercera calificación: "
	Leer Calificacion3Alumno1
	
	promedioAlumno1 <- CalcularPromedio(Calificacion1Alumno1, Calificacion1Alumno1, Calificacion3Alumno1)
	Escribir "El promedio del Alumno 1 es: ", promedioAlumno1
	
	Escribir "--- Datos del Alumno 2 ---"
	Escribir "Ingrese la primera calificación: "
	Leer Calificacion1Alumno2
	Escribir "Ingrese la segunda calificación: "
	Leer Calificacion2Alumno2
	Escribir "Ingrese la tercera calificación: "
	Leer Calificacion3Alumno2
	
	promedioAlumno2 <- CalcularPromedio(Calificacion1Alumno2, Calificacion2Alumno2, Calificacion3Alumno2)
	Escribir "El promedio del Alumno 2 es: ", promedioAlumno2
FinAlgoritmo 

SubProceso promedio <- CalcularPromedio(nota1, nota2, nota3)
	Definir promedio Como Real
	promedio <- (nota1 + nota2 + nota3) / 3
FinSubProceso 
