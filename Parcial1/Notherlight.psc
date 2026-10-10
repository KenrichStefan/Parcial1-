Algoritmo Notherlight
	Definir a1, a2, a3, b1, b2, b3, c1, c2, c3 Como Real 
	Definir Promedio1, Promedio2, Promedio3 Como Real
	Definir opcion1 Como Entero
	Definir Datos Como Logico
	Definir A0, B0, C0 Como Caracter
	Definir Atras  Como Caracter
	Datos <- Falso
	Atras <- "S"
	opcion1 <- 0
	
	Mientras Atras <> "rwqfsfasxc" Hacer
	
	 Escribir "Opciones"
	 Escribir "Introduzca una opcion"
	 Escribir "1 Capturar datos"
	 Escribir "2 Mostrar promedios"
	 Escribir "3 Mostrar el mejor promedio"
	 Escribir "4 Salir"
	 Leer opcion1
	 Segun opcion1 Hacer

		1:
			Escribir "Introduzca el nombre del primer alumno"
			Leer A0
			Escribir "Escriba sus calificaciones del parcial"
			Leer a1, a2, a3
			Promedio1 <- CdP(a1,a2,a3)
			
			Escribir "Introduzca el nombre del segundo alumno"
			Leer B0
			Escribir "Escriba sus calificaciones del parcial"
			Leer b1, b2, b3
			Promedio2 <- CdP(b1,b2,b3)
			Escribir "Introduzca el nombre del tercer alumno"
			Leer C0
			Escribir "Escriba sus calificaciones de parcial"
			Leer c1, c2, c3
			Promedio3 <- CdP(c1,c2,c3)
			Si a1 <= 10 Y b1 <= 10 Y c1 <= 10 Y a2 <= 10 Y a3 <= 10 Y b2 <= 10 Y b3 <= 10 Y c2 <= 10 Y c3 <= 10 Entonces
			Datos <- Verdadero
			Sino 
				Escribir "Datos incorrcetos (numero > 10), Regresando al Inicio"
				Datos <- Falso
			FinSi
			Escribir  "Regresando al inicio (presione Enter)"
			Leer Atras 
		2:
			Si Datos = Falso Entonces
				Escribir "¿No olvidas algo importante? ;)"
				
			SiNo
				
			Escribir "Calculando Promedios"
			Escribir "El alumno"," ", A0," ","Promedió"," ", Promedio1
			Escribir "El alumno", " ", B0," ", "Promedió"," ", Promedio2
			Escribir "El alumno"," ", C0," ","Promedió"," ", Promedio3
		FinSi
		Escribir  "Regresando al inicio (presione Enter)"
		Leer Atras 
		
		3:
			Si Datos = Falso Entonces 
				Escribir "¿No olvidas algo importante? ;)"
		    Sino 
				Escribir "Mostrando el mejor promedio"
				Si Promedio1 = Promedio2 O Promedio3 = Promedio1 Entonces
				 si Promedio1 = Promedio2 Y Promedio3 = Promedio1 Entonces
					Escribir "Todos tiene el mismo promedio con:", Promedio1 
			    	sino
					Si Promedio3 = Promedio1 Entonces
						 si Promedio1 > Promedio2 Entonces
							 Escribir A0, "y", C0, "tienen el mejor y mismo promedio con", Promedio1
						 SiNo
							 Escribir B0, "tiene el mejor promedio con:", Promedio2
						 FinSi
					 Sino
						 si Promedio1 = Promedio2 Entonces
							 si Promedio1 > Promedio3 Entonces
							 	Escribir A0, "y", B0, "tienen el mejor y mismo promedio con", Promedio2
							 sino 
								 Escribir C0, "tiene el mejor promedio con:", Promedio3
							 FinSi
						 FinSi
					 FinSi
					Finsi
				SiNo
					Si Promedio2 = Promedio3 Entonces 
						Si Promedio1 < Promedio3 Entonces 
							Escribir B0, "y", C0, "tienen el mejor y mismo promedio con", Promedio2
						SiNo
							Escribir A0, "tiene el mejor promedio con:", Promedio1
						FinSi
					Sino 
						 Si Promedio1 > Promedio2 Y Promedio1 > Promedio3 Entonces
							Escribir A0, " ",  "tiene el mayor puntaje con:", Promedio1
						 Sino 
							 Si Promedio2 < Promedio3 Entonces
								 
								Escribir C0, " ", "tiene el mayor puntaje con", Promedio3
							Sino 
								Escribir B0, " ", "tiene el mayor puntaje con", Promedio2
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
			Escribir  "Regresando al inicio (presione Enter)"
			Leer Atras 
		4: Escribir "Ok"
			Atras <- "rwqfsfasxc"
			
		De Otro Modo:
			Escribir "Por favor escoge otro numero"
			Escribir  "Regresando al inicio (presione Enter)"
			Leer Atras 
	 Fin Segun
    Fin Mientras
FinAlgoritmo
SubProceso Promedio <- Cdp(N1, N2, N3)
	Definir promedio Como Real
	Promedio <- (N1 + N2 + N3)/3
FinSubProceso
	
