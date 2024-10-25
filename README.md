# Parcial_Practico_OpenMP
Parcial practico Open MP Paralelas 2024

Juan Camilo Lopez Quintana 2310177-3743

Tiempos secuencial:
15,475s 
(14,119s) 
17,163s 
15,607s 
(17,285s) 
Promed: 48,245s


Num hilos: 2	
(16,388s) 
(13,729s) 
13,990s 
16,028s 
15,308s 
Promed: 45,326s


Num hilos: 4	
(11,924s) 
12,977s 
12,331s 
(13,720s) 
13.616s 
Promed: 38,924s


Speedup 2 hilos
48,245	
45,326	
= 1,064400124

Eficiencia 2 hilos
1,064400124/2 = 0,5322
-> 53,220%


Speedup 4 hilos	
48,245	
38,924	
= 1,239466653

Eficiencia 4 hilos
1,239466653/4 = 0,30987
->30,987%

Analisis de los valores:
De acuerdo a los tres valores del speed up en las ejecuciones en paralelo es viable ya que en cada ejecucion el speedup dio mayor a 1,
la ejecucion en 4 hilos dio un mayor speedup pero no por mucho comparado con la ejecucion de 2 hilos, esto se debe a que se genera un
cuello de botella en el procesamiento de las imagenes al repartir el recorrido de los pixeles entre los hilos y esperar que cada hilo
termine su ejecucion para unir el resultado de la imagen.


En cuanto a eficiencia se evidencia que hay una diferencia del 22,233% entre ambas ejecuciones paralelas, 
lo que significa que la ejecucion de 2 hilos a pesar de tener un speedup inferior al de 4 hilos.

