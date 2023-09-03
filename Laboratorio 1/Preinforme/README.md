# COMPARACIÓN DE TECNOLOGÍA
## Introduccion
A lo largo de este informe se desarrollará la práctica relacionada con la comparación entre las compuertas lógicas de tipo TTL y CMOS, comparando las características principales de estas y realizando lo respectiva medición de datos mediante simulaciones, para posteriormente compararlas con los resultados obtenidos experimentalmente. Ademas, a partir de estos datos, permitir conocer cuáles son las ventajas y desventajas de cada tipo de estas compuertas y entender en qué casos es más conveniente usar cada una de ellas.

## Objetivos
* Identificar las características de un dispositivo fabricado en diferentes tecnologías.

## Recursos requeridos
* Negador TTL 74LS04
* Negador CMOS CD4069
* Datasheets
  
## Procedimiento

### Parte 1

1. Inicialmente se deben realizar una comparativa del comportamiento de los negadores TTL 74LS04 y  CMOS CD4069, con los datos que encontramos en la Datasheet de cada uno, para lo que vamos a tener en cuenta la tensión de la alimentación, los tiempos que tarda en cambiar su salida dependiendo de los cambios en la entrada y algunos datos adicionales que son de utilidad para en otro momento hacer circuitos y simulaciones que permitan conocer en profundidad la funcionalidad de cada negador y sus diferencias.


Entonces para mostrar los datos se opto por incluir una tabla comparativa.

   | Comparacion Tecnologias         | TTL 74LS04    | CMOD CD4069   |
   | :---                            | :---:         |        :---:  |
   | Tension de alimentación         |       5V      |    3 a 15v    |
   | Tiempo de subida y bajada       | 4.5 y 5 ns    |      20ns     |
   | Tiempo de retardo               | Content Cell  |90 50ns con v+ |
   | Potencia por compuerta          | Content Cell  | Content Cell  |
   | Farm out                        | Content Cell  | Content Cell  |
   | Producto frecuencia y potencia  | Content Cell  | Content Cell  |
   | Compuerta tipo                  |      NOT      |      NOT      |
   | Capacidad corriente salida "1"  |    -0.4 mA    | Content Cell  |
   | Capacidad corriente salida "0"  |      8  mA    | Content Cell  |
   | Salida Open Colector            | Content Cell  | Content Cell  |
   | Nivel de ruido soportado        | Content Cell  | Content Cell  |


   **Negador TTL 74LS04**: [<img src="Imagenes/pdf.png" width="2%" height="3%">](Datasheets/HD74LS04.PDF)

   **Negador CMOS CD4069**: [<img src="Imagenes/pdf.png" width="2%" height="3%">](Datasheets/CD4069.PDF)

2. Para continuar ahora se deben realizar las simulaciones del comportamiento de los negadores TTL 74LS04 y  CMOS CD4069.

En las primeras simulaciones buscamos comparar las señales de entrada y de salida de los negadores, para observar la precisión que tienen, las caracteristicas de la señal de salida en comparación con la de entrada y que efectos puede llegar a tener en circuitos más complejos. Por lo tanto en las siguientes simulaciones se presentaran circuitos en los que la señal de entrada se modificara a partir de la manipulación de un potenciometro de 10k, y por lo tanto se observaran los rangos del 1 y 0 logicos en el voltaje prensente en un resistor de 10kOhm.

* En esta simulación se empieza con el potenciometro a un valor maximo de 9kΩ en dos circuitos en donde se cambia unicamente el negador de TTL a CMOS.
* <img src="Imagenes/Comparación ttl y cmos con volataje de entrada  aproximado a 5v.png" width="90%" height="90%">
   Se observa que el negador TTL al recibir una señal cuadrada de aproximadamente 4.5V se 200ns de subida y de bajada en un tiempo de 2400ns no presenta cambios tan notorios como los del negador CMOS, donde encontamos una señal de salida desfasada con la de entrada, pero con mayor voltaje en la subida de la salida.

* <img src="Imagenes/Comparación ttl y cmos con volataje de entrada  aproximado a 5v.png" width="90%" height="90%">
* <img src="Imagenes/Comparación ttl y cmos con volataje  de entrada aproximado a 3v.png" width="90%" height="90%">
* <img src="Imagenes/Comparación ttl y cmos con volataje de entrada  aproximado a 2_5v.png" width="90%" height="90%">
* <img src="Imagenes/Comparación ttl y cmos con volataje de entrada  aproximado a 0v.png" width="90%" height="90%">
* <img src="Imagenes/Negador ttl con entrada de aproximadamente 0V.png" width="90%" height="90%">
* <img src="Imagenes/Negador cmos con entrada de aproximadamente 0V.png" width="90%" height="90%">
* <img src="Imagenes/Negador ttl con salida de aproximadamente 0V.png" width="90%" height="90%">
* <img src="Imagenes/Negador cmos con salida de aproximadamente 0V.png" width="90%" height="90%">



   
   

3. Determinar el circuito equivalente para cada uno de los dispositivos.   
 **Negador TTL 74LS04**:
  * <img src="Imagenes/74lS04.png" width="50%" height="50%">

 **Negador CMOS CD4069**: 
  * <img src="Imagenes/CD4069.png" width="50%" height="50%">
