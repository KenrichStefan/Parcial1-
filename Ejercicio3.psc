ALgoritmo Ejercicio3
	Definir sueldo, descuento, sueldoNeto Como Real
	
	Escribir "Ingrese el sueldo del trabajador: "
	Leer sueldo
	
	
	Si sueldo <= 1000 Entonces
		descuento <- sueldo * 0.10
	SiNo
		Si sueldo <= 2000 Entonces
			descuento <- sueldo * 0.05
		SiNo
			descuento <- sueldo * 0.03
		FinSi
	FinSi
	
	sueldoNeto <- sueldo - descuento
	
	Escribir "Descuento: ", descuento
	Escribir "Sueldo neto: ", sueldoNeto
FinAlgoritmo
