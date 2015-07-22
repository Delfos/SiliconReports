CONFIGURACI�N DE IREPORT
------------------------
Para compilar los informes de Silicon con iReport tenemos que a�adir al CLASSPATH de iReport algunas clases de Silicon.
Seguimos el siguiente procedimiento:

	1.- Creamos una librer�a con las clases de Silicon
		
		1.1.- Descomprimimos el fichero "silicon.war" de la versi�n de Silicon que corresponda
		1.2.- Nos situamos en el directorio $SILICON.WAR_HOME/WEB-INF/classes
		1.3.- Creamos la librer�a "silicon.jar" mediante el comando: jar cf silicon.jar com/* *.prop.*
		
	2.- A�adimos la librer�a "silicon.jar" al CLASSPATH de iReport.


MODIFICACI�N DE LOS HORARIOS DE ENFERMER�A DEL INFORME DE ADMINISTRACI�N
------------------------------------------------------------------------
A la hora de modificar los horarios de enfermer�a del informe de administraci�n hay que tener en cuenta los 
siguientes puntos:

	- Este informe est� dise�ado para trabajar con tres turnos de enfermer�a.

	-turno1: el turno1 es visible y transparente, por lo que solo se visualizar� con el color del fondo del informe
		(normalmente blanco) y cuando no sean visibles ni el turno2 ni el turno3. El turno1 es el turno que incluye
		la media noche 00h.
		
	- turno2: el turno2 s�lo funciona con horarios que no incluyan la media noche, es decir, las 00h no puede estar 
		escluida entre la hora de comienzo y la hora de fin del turno.
		
	- turno3: s�lo funciona con horarios que no incluyan la media noche, es decir, las 00h no puede estar 
		encluida entre la hora de comienzo y la hora de fin del turno.
