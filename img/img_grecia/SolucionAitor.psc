// AITOR IGLESIAS GOMEZ - 1.DAM - 12 DICIEMBRE 2023

Proceso ExamenPractico
	definir eleccion, modos Como Entero;
	definir may, min Como Logico;
	definir palabra, letra, palabra2 Como caracter;
	definir N, espacios Como Entero;
	eleccion = 0;
	
	Escribir "Bienvenido a *** OPERACIONES SOBRE CADENAS ****";
	Escribir "Este programa tiene una serie de intrucciones, lea atentamente y elija la que le convenga";
	Escribir "";
	Escribir "Indique con que modo desea utilizar el programa :";
	Escribir "Modo MAY - Sus resultados apareceran en mayusculas - Introduzca un 1 para seleccionar este modo."; 
	Escribir "Modo MIN - Sus resultados apareceran en minusculas - Introduzca un 2 para seleccionar este modo.";
	Escribir "Modo Default - Sus resultados apareceran igual que los introduzca, sin modificaciones - Introduzca un 0 para seleccionar este modo.";
	
	leer modos;
	
	Segun modos Hacer
		1:
			may = Verdadero;
			min = falso;
			
		2:  
			min = Verdadero;
			may = falso;
		De Otro Modo:
			may = falso;
			may = falso;
	FinSegun
	
	Mientras eleccion <> 4 Hacer
		Escribir "";
	Escribir "Que operación desea realizar?";
	Escribir "1 - Añadir Letra";
	Escribir "2 - Añadir Letra N veces";
	Escribir "3 - Desplazar Cadena";
	Escribir "4 - Salir";
	
	leer eleccion;
		Segun eleccion Hacer
			
			1: 
				N = 1;
				
				Escribir "Introduzca una palabra y le añadiré una letra";
				Escribir "¿Cúal es la palabra?";
				leer palabra;
				Escribir "¡Perfecto!, ¿Cúal es la letra a añadir?";
				leer letra;
				
				si may = verdadero entonces
					Escribir "Su palabra ahora es así: ", Mayusculas(SumarLetra(palabra, letra, N));
				FinSi
				si min = Verdadero Entonces
					Escribir "Su palabra ahora es así: ", Minusculas(SumarLetra(palabra, letra, N));
				FinSi
				si may = Falso Y min = Falso Entonces
					Escribir "Su palabra ahora es así: ", SumarLetra(palabra, letra, N);					
				FinSi
				
			2:
				
				Escribir "Introduzca una palabra y le añadiré una letra, el número de veces que me indique";
				Escribir "¿Cúal es la palabra?";
				leer palabra;
				Escribir "¡Perfecto!, ¿Cúal es la letra a añadir?";
				leer letra;
				Escribir "¡Estupendo!, ¿Cuántas veces desea que se repita esa letra?";
				leer N;
				si may = verdadero entonces
					Escribir "Su palabra ahora es así: ", Mayusculas(SumarLetra(palabra, letra, N));
				FinSi
				si min = Verdadero Entonces
					Escribir "Su palabra ahora es así: ", Minusculas(SumarLetra(palabra, letra, N));
				FinSi
				si may = Falso Y min = Falso Entonces
					Escribir "Su palabra ahora es así: ", SumarLetra(palabra, letra, N);					
				FinSi
				
				
			3:
				
				Escribir "Introduzca una palabra y la desplazaré el número de veces que desee.";
				Escribir "Recuerde que borraré tantas letras como espacios agregue";
				Escribir "¿Cuál es su palabra?:";
				leer palabra2;
				Escribir "¡Muy bien! ¿Cuántos espacios quiere desplazar? Agreraré guiones para su visualización:";
				leer espacios;
				
				si may = verdadero entonces
					Escribir "Su palabra ahora es así: ", Mayusculas(Desplazar(palabra2, espacios));
				FinSi
				si min = Verdadero Entonces
					Escribir "Su palabra ahora es así: ", Minusculas(Desplazar(palabra2, espacios));
				FinSi
				si may = Falso Y min = Falso Entonces
					Escribir "Su palabra ahora es así: ", Desplazar(palabra2, espacios);					
				FinSi
				
				
		FinSegun
	FinMientras
	Escribir "Gracias por utilizar este programa, ¡Hasta la próxima!";
FinProceso


Funcion resultado = SumarLetra(palabra, letra, veces)
	
	definir resultado Como Caracter;
	definir a Como Entero;
	resultado = palabra;
	
	para a=1 Hasta veces Con Paso 1 Hacer;
		resultado = resultado+letra;		
		
	FinPara
	
	
FinFuncion



Funcion respuesta = Desplazar(palabrae, espacios)
	definir respuesta, nuevaPalabra Como Caracter;
	definir a Como Entero;
	
	nuevaPalabra = SubCadena(palabrae,0,Longitud(palabrae)-espacios-1);
	
	para a=1 hasta espacios Con Paso 1 Hacer
		
		nuevaPalabra = "_"+nuevaPalabra;
	FinPara
	respuesta = nuevaPalabra;
		
	
FinFuncion




	