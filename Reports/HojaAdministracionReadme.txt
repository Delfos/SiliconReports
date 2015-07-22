CONFIGURACIÓN DE IREPORT
------------------------
Para compilar los informes de Silicon con iReport tenemos que añadir al CLASSPATH de iReport algunas clases de Silicon.
Seguimos el siguiente procedimiento:

	1.- Creamos una librería con las clases de Silicon
		
		1.1.- Descomprimimos el fichero "silicon.war" de la versión de Silicon que corresponda
		1.2.- Nos situamos en el directorio $SILICON.WAR_HOME/WEB-INF/classes
		1.3.- Creamos la librería "silicon.jar" mediante el comando: jar cf silicon.jar com/* *.prop.*
		
	2.- Añadimos la librería "silicon.jar" al CLASSPATH de iReport.


MODIFICACIÓN DE LOS HORARIOS DE ENFERMERÍA DEL INFORME DE ADMINISTRACIÓN
------------------------------------------------------------------------
A la hora de modificar los horarios de enfermería del informe de administración hay que tener en cuenta los 
siguientes puntos:

	- Este informe está diseñado para trabajar con tres turnos de enfermería.

	-turno1: el turno1 es visible y transparente, por lo que solo se visualizará con el color del fondo del informe
		(normalmente blanco) y cuando no sean visibles ni el turno2 ni el turno3. El turno1 es el turno que incluye
		la media noche 00h.
		
	- turno2: el turno2 sólo funciona con horarios que no incluyan la media noche, es decir, las 00h no puede estar 
		escluida entre la hora de comienzo y la hora de fin del turno.
		
	- turno3: sólo funciona con horarios que no incluyan la media noche, es decir, las 00h no puede estar 
		encluida entre la hora de comienzo y la hora de fin del turno.
