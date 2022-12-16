Proceso sin_titulo
	definir nombre,direccion,SVP como cadena;
	definir articulos,repuesta como cadena;
	definir horas,opc,cedula,month como real;
	definir numartcl,cantid,mont,montotal como real;
	definir contador como entero;
	definir subtotal,monto como real;
	//definicion de los variables
	
	Escribir "=============================================";
	escribir "INGRESE EL TIPO DE FACTURA QUE DESEA REALIZAR";
	escribir "=============================================";
	Repetir
		Borrar Pantalla;
		escribir "1.factura de articulos ";
		escribir "2.factura de servicio";
		escribir "3.salir";
		escribir "seleccione una opcion";
		
		leer opc;// se pide que seleccione una opcion
		segun opc hacer
			1://datos de acuerdo con la opsion 1,facturacion de articulos
				Repetir
					Escribir "==========================";
					escribir "INGRESE DATOS DEL CLIENTE";
					escribir"===========================";
					escribir"nombre del cliente";
					leer nombre;//el nombre del cliente
					escribir"cedula del cliente";
					leer cedula;
					escribir "direccion del cliente";
					leer direccion;
					
					escribir"    INGRESE ARTICULOS";
					ESCRIBIR"****************+**********";
					escribir"articulo" , contador;
					leer articulo;
					Escribir "cantidad";
					Leer cantid;
					escribir "presio x unidad C/";
					leer mont;
					escribir "desea ingresar otro articulo (s/N)";
					leer repuesta;
					contador = contador + 1;
				Hasta Que repuesta = "n"//para que ya pide al usuario mas datos si ingreso n
				Limpiar Pantalla;
				//encabezado de la factura
				Escribir "=============================================================================";
				escribir "factura 000-1";
				escribir "=============================================================================";
				//se imprime en pantalla los datos correspondientes
				escribir "EMPRESA : factura procesada";
				escribir "cliente", ":",nombre;           escribir "cedula",":",cedula;
				escribir "direccion",":",direccion;
				escribir "==============================================================================";
				escribir "cantidad",":",cantid;
				escribir "descripcion",":",articulo;
				escribir "presio x unidad",":",mont;
				escribir "presio total",":",cantid * mont;
				Escribir "===============================================================================";
				Escribir "C/",":",cantid*mont;
				Escribir "inpuesto13% c/.",":",cantid*mont*0.13;
				Escribir "c/",":",cantid*mont*0.13+cantid*mont;// valor total con impuesto incluido
				
			2://inicio de la obsion 2
				Repetir
					Escribir "=============================";
					escribir "INGRESE DATOS DEL EMPLEADO(A)";
					escribir"==============================";
					escribir"nombre del empleado(A)";
					leer nombre;
					escribir"cedula del empleado(a)";
					leer cedula;
					escribir "direccion del empleado(a)";
					leer direccion;
					
					Escribir "===========================";
					Escribir "servicio trabajado";
					Escribir "============================";
					Escribir "servicio trabajado";
					Leer svp;
					Escribir "cantidad de oras trabajadas";
					Leer horas;
					Escribir "monto por horas";
					Leer month;
					Escribir "desea ingresar otro servisio (s/n)";
					Leer repuesta;
					contador = contador + 1;
				Hasta Que repuesta = "n"
				Limpiar Pantalla;
				Escribir "monto total en horas",":",month*horas;
				Escribir "impuesto  13%",":",month*horas*0.13;
				Escribir "c/",":",month*horas+month*horas*0.13;
				
				
			3:
				Escribir "regrese pronto";
				
			4:
				Escribir "opcion invalida";
		FinSegun
		Escribir "presione una tecla para continual";
		Esperar Tecla;
	Hasta Que opc=3;
FinProceso
