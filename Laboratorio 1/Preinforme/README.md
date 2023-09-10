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

   | Comparacion Tecnologias         | TTL 74LS04    | CMOS CD4069   |
   | :---                            | :---:         |        :---:  |
   | Tension de alimentación         |       5V      |    3 a 15v    |
   | Tiempo de subida y bajada       |   9 y 15 ns   |      150ns    |
   | Tiempo de Almacenamiento        |      N/E      |      50ns     |
   | Potencia por compuerta          |      N/E      |     700 mW    |
   | Compuerta tipo                  |      NOT      |      NOT      |
   | Capacidad corriente salida "1"  |    -0.4 mA    |    -0.88 mA   |
   | Capacidad corriente salida "0"  |      8  mA    |     0.88 mA   |


   **Negador TTL 74LS04**: [<img src="Imagenes/pdf.png" width="4%" height="4%">](Datasheets/HD74LS04.PDF)

   **Negador CMOS CD4069**: [<img src="Imagenes/pdf.png" width="4%" height="4%">](Datasheets/CD4069.PDF)

2. Para continuar ahora se deben realizar las simulaciones del comportamiento de los negadores TTL 74LS04 y  CMOS CD4069.

En las primeras simulaciones buscamos comparar las señales de entrada y de salida de los negadores, para observar la precisión que tienen, las caracteristicas de la señal de salida en comparación con la de entrada y que efectos puede llegar a tener en circuitos más complejos. Por lo tanto en las siguientes simulaciones se presentaran circuitos en los que la señal de entrada se modificara a partir de la manipulación de un potenciometro de 10k, y por lo tanto se observaran los rangos del 1 y 0 logicos en el voltaje prensente en un resistor de 10kOhm.

* En esta simulación se empieza con el potenciometro a un valor maximo de 9kΩ en dos circuitos en donde se cambia unicamente el negador de TTL a CMOS.
* <img src="Imagenes/Comparación ttl y cmos con volataje de entrada  aproximado a 5v.png" width="90%" height="90%">
   
Se observa que el negador TTL al recibir una señal cuadrada de aproximadamente 4.5V se 200ns de subida y de bajada en un tiempo de 2400ns no presenta cambios tan notorios como los del negador CMOS, donde encontamos una señal de salida desfasada con la de entrada, pero con mayor voltaje en la subida de la salida.

* Se observa que al disminuir el valor de la resistencia equivalente del potenciometro el voltaje de entrada tambien disminuye, por lo tanto se logro modificar el voltaje de entrada de los negadores con el potenciometro. En este caso se disminuyo el valor del potenciometro a 6kΩ y se consiguio un voltaje de entrada de aproximadamnete 3V.
* <img src="Imagenes/Comparación ttl y cmos con volataje  de entrada aproximado a 3v.png" width="90%" height="90%">

En esta simulación se observa una de las grandes diferencias que existe entre los negadores TTL y CMOS, ya que los negadores aunque mantienen un comportamiento bastante similar al de la anterior simulación, presenta un voltaje se salida mmenor el TTL en comparación con el CMOS, ya que el TTL muestra aproximadamente 3.5V y el CMOS más de 4.5V en la salida.

* Ahora que se conoce como funcionan los negadores con una entrada de voltaje correcta, se busco simular el comportamiento de los negadores con un voltaje de entrada de 2.5V, el cual esta en la zona de incertidumbre a partir de los datos del datasheet.
* <img src="Imagenes/Comparación ttl y cmos con volataje de entrada  aproximado a 2_5v.png" width="90%" height="90%">

Se obtiene que la señal de voltaje cuadrada sin importa si esta en subida o en baja, para los negadores siempre es una entrada de 0 logico, se espera obtener esta señal pero al mismo tiempo cualquier otra ya que se conoce que en este tipo de compuertas logicas la zona de incertidumbre en la practica impide dar certeza de obtener esta misma señal.

* Para terminar las simulaciones en las que se comparan las señales de voltaje, se busco bajar voltaje de entrada a aproximadamente 0V.
* <img src="Imagenes/Comparación ttl y cmos con volataje de entrada  aproximado a 0v.png" width="90%" height="90%">

La simulación permitio obtener lo que se esperaba, si la señal cuadrada de voltaje que recibe cualquiera de los negadores es aproximadamente 0V se obtiene el mayor voltaje de salida.

* Para observar el funcionamiento de los negadores en la practica de laboratorio, se desarrollaron los siguientes circuitos simulados en donde se presenta como se comporta un led dependiendo de la señal de entrada. En los circuitos presentados se observan los momentos en los que el led esta encendido y apagado, cuando los dos negadores funcionan correctamente.

* Entrada de aproximadamente 0V

* <img src="Imagenes/Negador ttl con entrada de aproximadamente 0V.png" width="90%" height="90%">
* <img src="Imagenes/Negador cmos con entrada de aproximadamente 0V.png" width="90%" height="90%">

* Salida de aproximadamente 0V

* <img src="Imagenes/Negador ttl con salida de aproximadamente 0V.png" width="90%" height="90%">
* <img src="Imagenes/Negador cmos con salida de aproximadamente 0V.png" width="90%" height="90%">



   
   
3. Determinar el circuito equivalente para cada uno de los dispositivos.   
 **Negador TTL 74LS04**:
  * <img src="Imagenes/74lS04.png" width="50%" height="50%">
 Nos apoyamos en este circuito equivalente para un transistor bjt en saturación:
 
  * <img src="Imagenes/circuitos equivalentesbjt.png" width="50%" height="50%">
  
 Cuando se le aplica un 1 lógico:
 
  * <img src="Imagenes/SN74LS04 - 1.png" width="50%" height="50%">
  
 El transistor 1 npn, se polariza en directo, logrando un aumento de B veces y esa corriente fluirá hacía los transistores de abajo, transistor 3 y 4, los cuales se polarizarán en directo. y en la salida habrá un 0 
 lógico, puesto que cuando conduce el transistor 4, la tensión Vds cae a 0.
 El transistor 2(en amarillo) no conduce ya que su tensión es mucho menor, a su vez los diodos encerrados ayudan a dar una respuesta más rapida para el cambio del estado lógico. 
 
 Cuando se le aplica un 0 lógico:

   * <img src="Imagenes/SN74LS04 - 0.png" width="50%" height="50%">
  
 El transistor 1 no se polariza porque la tensión vcc desemboca a A, reduciendo la tensión que puede haber en el gate del transistor 1, por lo que no conducirá.
 Por otro lado, como el transistor 1 no conduce, el drain mantendrá una tensión que exitará el gate del transistor 2 y luego el transistor 3, donde el transistor 3 en el source mantendrá una tensión que será un 1 
 lógico, ya que los demás transistores al no estar exitados se comportan como circuito abierto, logrando así el nivel requerido. 

 **Negador CMOS CD4069**: 
  * <img src="Imagenes/CD4069.png" width="50%" height="50%">

 Para su análisis digital, quitamos los diodos de protección:

  * <img src="Imagenes/CD4069 - primitivo.png" width="50%" height="50%">
 
 Se van a presentar dos casos, así que vamos a definir las variables que usaremos para simplificar el análisis:
 
  * Vcc = 5
  * Vt = |2|

 CASO 1: Entrada(ALTO) = Vdd.
 
   * <img src="Imagenes/CD4069 - 1 .png" width="50%" height="50%">
   
    * PMOS:
      Vgs = (Vdd-Vdd) <= Vt
      0 <= (-2)
      Fuente y drenador se aislan, el transistor pmos no conduce.
      
    * NMOS:
      Vgs = (Vdd - 0)  >= Vt
      Vdd >= Vt
      5 >= 2
      Fuente y drenador se unen mediante un canal, el transistor nmos conduce.

 CASO 2: Entrada(BAJO) = 0.
 
   * <img src="Imagenes/CD4069 - 0 .png" width="50%" height="50%">
    
    * PMOS:
      Vgs = (0-Vdd) <= Vt
      (-5) <= (-2)
      Fuente y drenador se unen mediante un canal, el transistor pmos conduce.
      
    * NMOS:
      Vgs = (0 - vdd)  >= Vt
      -Vdd >= Vt
      -5 >= 2
      Fuente y drenador se aislan, el transistor nmos no conduce.

## Procedimiento Experimental
Para el desarrollo práctico de este laboratorio será necesario realizar el siguiente montaje para cada una de las compuertas:

Inserte circuito aqui

Seguidamente, se procederá a configurar la fuente de entrada del sistema con una amplitud de 5 voltios y una frecuencia de 1 kHz en una configuracion de onda cuadrada, esto de acuerdo a las especificaciones dadas por el datasheet de cada uno de los dispositivos.

Seguidamente se procederá a comparar la entrada de cada una de las compuertas con la salida de la misma y a partir de esto se obtendrá la gráfica del comportamiento de la salida respecto a la entrada de la compuerta.

Una vez obtenida esta gráfica, se podrá obtener el tiempo de subida y tiempo de bajada de cada una de las compuertas, y así mismo, se podrá obtener el tiempo de estabilización de cada una de las compuertas.

## Resultados
### 74LS04
#### IN vs OUT
Al realizar la comparacion entre la entrada y la salida de la compuerta 74LS04 se pudo observar el siguiente comportamiento:
* <img src="Imagenes/IN vs OUT 74LS04.jpeg" width="90%" height="90%">
* En primer lugar se puede apreciar que el osciloscopio muestra voltajes en el rango de las decenas de voltios, por ejemplo 52 voltios, sin embargo, esto se debe a un error de configuración del osciloscopio siendo el voltaje real equivalente al voltaje mostrado en pantalla dividido entre 10, es decir, en este caso el voltaje pico a pico que se muestra en la imagen de la señal 1 es de 5.2 voltios aproximadamente.
  
* En segundo lugar se puede ver el comportamiento de la entrada respecto a la salida, siendo la entrada la señal amarilla y la salida la señal de color azul. En esta imagen podemos apreciar que, tal y como se esperaba, el inversor genera una señal de salida de 5 voltios mientras que la señal de entrada es de aproximadamente 0 voltios y de forma análoga, mientras la entrada es de 5 voltios la salida es de 0 voltios cumpliendo con el comportamiento que seesperaba de la compuerta.
  
* Tambien podemos ver que al suministrarle una señal de entrada de 5 Voltios el comportamiento de la salida es casi ideal, siendo una salida de aproximadamente igual magnitud.
  
#### Tiempo de subida y de bajada, Tiempo de estabilizacion

Para realizar la medición del tiempo de subida y de bajada de esta compuerta, se disminuyó el rango del tiempo de mediciones de el osciloscopio, quedando entre en un rango de división de 25 nanosegundos. Con esta configuración pudimos obtener las siguientes graficas:
<img src="Imagenes/Subida 74LS04.jpeg" title="Tiempo de subida 74LS04" width="90%" height="90%">
<p><i>Tiempo de subida 74LS04</i></p>
<img src="Imagenes/Bajada 74LS04.jpeg" title="Tiempo de bajada 74LS04" width="90%" height="90%">
<p><i>Tiempo de bajada 74LS04</i></p>

Al analizar estas gráficas nos podemos percatar de dos caracteristicas principales:
* En el caso del tiempo de subida, se presenta un rango aproximado de entre 50 a 75 nS mientras que el tiempo de bajada es de aproximadamente 25 a 50 nanos segundos.
* Tambien podemos preciar como en este tipo de compuertas, la subida y la bajada no se presentan de una forma lineal o exponencial sino que estas presentan un pequeño tiempo de oscilación en las cuales la onda se ajusta para poder conseguir un valor estable, este tiempo se le denomina <b>tiempo de estabilización</b>. En el caso de el tiempo de subida, este tiempo de estabilización se encuentra aproximadamente entre 100 a 150 nanos segundos mientras que en el tiempo de bajada es de aproximadamente 50 nanos segundos.
### Histeresis
Por último se realizó el análisis de la curva de histéresis de esta compuerta lógica. Al configurar el osciloscopio para poder obtener esta gráfica obtuvimos el siguiente resultado:
<img src="Imagenes/Histeresis 74LS04.jpeg" title="Histeresis 74LS04" width="90%" height="90%">
<p><i>Curva de Histeresis de la compuerta 74LS04</i></p>

Es necesario recordar que en el caso es las compuertas negadoras, la curva de histeresis ideal se representaría como dos líneas completamente perpendiculares entre si y totalmente sobrepuestas a los ejes 'x' y 'y', generando un ángulo de 90 grados entre sí.

En el caso está compuerta, podemos apreciar como, a pesar de que ésta tiene un comportamiento similar a la ideal, una vez se acerca al rango de valores en los cuales cambian de estado de HIGH a LOW, se presenta una pendiente. Esto se debe principalmente a la oscilación debido al cambio de estados de la compuerta y el ajuste de la señal hasta llegar a su punto de estabilización. Una vez alcanzado su punto de estabilización podemos ver que cumplen con una curva muy similar a la que se esperaría de una compuerta ideal.
### CD4069
#### IN vs OUT
Al realizar la comparación entre la entrada y la salida de la compuerta CD 4069 se pudo apreciar el siguiente comportamiento:
<img src="Imagenes/IN vs OUT CD4069.jpeg" width="90%" height="90%">
<p><i>IN vs OUT CD4069</i></p>

Realizando el análisis de la entrada de la salida de la compuerta CD 4069 podemos apreciar que:
* El voltaje de salida es ligeramente menor que el voltaje de entrada, siendo aproximadamente menor en 0.2 voltios.
* Además de esto, podemos apreciar que el comportamiento de la salida cumple con el funcionamiento esperado puesto que, como se aprecia en la imagen, cuando el voltaje de entrada es de 0V la salida es de aproximadamente 5V mientras que por el contrario, cuando la entrada es de 5 voltios la salida es de 0 voltios cumpliendo con el comportamiento esperado por la compuerta.

#### Tiempo de subida y de bajada, Tiempo de estabilizacion
Para realizar la medición del tiempo de subida, tiempo de bajada y tiempo de estabilización de esta compuerta, se realizo un procedimiento similar que con las compuertas tipo TTL, con un con este método se pudo obtener las siguientes gráficas:
<img src="Imagenes/Subida CD4069.jpeg" title="Tiempo de subida CD4069" width="90%" height="90%">
<p><i>Tiempo de subida CD4069</i></p>
<img src="Imagenes/Bajada CD4069.jpeg" title="Tiempo de bajada CD4069" width="90%" height="90%">
<p><i>Tiempo de bajada CD4069</i></p>
* Al realizar el análisis de los tiempos de subida y tiempos de bajada de la compuerta CD4069, nos podemos dar cuenta de que, el tiempo de subida de esta compuerta se encuentra aproximadamente entre los 150 a 160 nanosegundos. El tiempo de bajada se encuentra aproximadamente en un rango similar, aproximadamente de 160 nanosegundos.
* Además de esto podemos apreciar de que para este tipo de compuertas, el tiempo de estabilización no es tan claro, debido a que este tipo de compuertas suele tener una subida mucho más estable que las compuertas de tipo TTL, esto debido a que este tipo de compuertas utilizan transistores CMOS, los cuales permiten una subida y bajada mucho más suave, y a pesar de tener un tiempo de subida y de bajada mayor al de las compuertas tipo TTL, el tiempo de estabilización es mucho menor y en este caso no es tan apreciable pues para que no podemos ver una subida de tipo sinusoidal si no podemos apreciar una subida atenuada.

### Histeresis
Por último se realizará el análisis de la curva de histéresis de la compuerta CD4069, tras realizar el mismo procedimiento que se realizó para el análisis de la compuerta 74LS04 se pudo obtener la siguiente gráfica:
<img src="Imagenes/Histeresis CD4069.jpeg" title="Histeresis 74LS04" width="90%" height="90%">
<p><i>Curva de Histeresis de la compuerta CD4069</i></p>
Al analizar la gráfica obtenida por la curva de histéresis de la compuerta, podemos darnos cuenta que el comportamiento de está compuesta a pesar de tener similitudes con los de una compuerta ideal, presenta una curva generada a partir de los valores de cambio entre High y low y, al entrar en los valores de umbral la compuerta, deja de funcionar idealmente hasta que vuelve a entrar nuevamente en los valores definidos para HIGH o para LOW, donde nuevamente la compuertas tiene un comportamiento adecuado.

## Analisis de resultados
A partir de las gráficas y de los resultados obtenidos anteriormente podremos obtener algunos datos de gran importancia para entender el funcionamiento de nuestras compuertas, estos resultados se registrarán en la siguiente tabla:
   | Comparacion Tecnologias         | TTL 74LS04    | CMOS CD4069   |
   | :---                            | :---:         |        :---:  |
   | Tension de alimentación         |       5V      |       5V      |
   | Tiempo de subida                |       50 ns   |      150ns    |
   | Tiempo de Bajada                |       25 ns   |      160ns    |
   | Tiempo de Almacenamiento        |      75 ns    |      N/E      |
   | Compuerta tipo                  |      NOT      |      NOT      |
   | Voltaje de entrada "1"          |      ~5V      |      ~5V      |
   | Voltaje de salida "1"           |      ~5V      |      4.88V    |
   | Voltaje de entrada "0"          |      ~0V      |      ~0V      |
   | Voltaje de salida "0"           |      ~0V      |      ~0V      |
   
A partir de estos datos podemos obtener varias conclusiones:
- A pesar de que ambas compuertas tenían una alimentación del mismo voltaje y una entrada para prácticamente idéntica, las salidas de cada una de las compuertas presentan varias diferencias: la primera se encuentra en el voltaje de salida, puesto a qué mientras que la compuerta de tipo TTL nos daba como salida aproximadamente con mismo valor de voltaje que recibía la entrada, la compuerta CMOS daba como salida un valor de voltaje ligeramente menor al suministrado inicialmente en la entrada, esto debido principalmente al consumo generado por los transistores CMOS.

- A pesar de que ambas compuertas tienen un comportamiento prácticamente idéntico, al ser compuertas negadoras hay una diferencia muy fundamental, y esta se da en el tiempo de subida y de bajada de cada una de estas. Mientras que las compuertas de tipo TTL tienen un tiempo de subida y de bajada muy pequeño, las compuertas de tipo CMOS tienen un tiempo de subida y de bajada considerablemente mayor, siendo aproximadamente tres veces más el tiempo de subida y 6 veces mayor el tiempo de bajada en el CMOS.

- Mientras que las compuertas de tipo TTL, presentan un comportamiento de acople o de estabilización de alrededor de 75 nanosegundos, generando un pequeño efecto sinusoidal entre el cambio de estados de la señal (es decir en el inicio de su etapa en HIGH y el inicio de su etapa en LOW), la compuerta CMOS no presenta este tipo de estabilización, dado que tiene un tiempo de subida mucho mayor la estabilización sea poco a poco mientras la señal va cambiando de estado.

4. Conclusiónes

A partir de las simulaciones se llega a comprender que los negadores TTL 74LS04 y CMOS CD4069, presentan diferencias en varias de sus caracteristicas y que estos cambios son importantes en el desarrollo de circuitos más complejos. Inicialmente se observo que el negador TTL es más preciso al invertir la señal ya que no se observa un desface tan notorio como en el CMOS, aunque se debe recalcar que el negador CMOS al invertir las señales de 0 logico, permite obtener salidas de mayor voltaje en comparación que el TTL, lo que ayuda a diseñar circuitos con menos perdidas energeticas y de mayor tamaño.

Para escoger entre el uso de compuertas de tipo TTL y CMOS podemos encontrar varias características las cuales pueden ser importantes a la hora de escoger, como lo puede llegar a ser la eleccion entre velocidad o eficiencia energética, o el calentamiento de cada una de estas compuertas. Según las necesidades que tengamos, cada una de estas compuertas puede llegar a ser útil en diferentes situaciones, por ejemplo, para manejar altas velocidades de conmutación es ideal un TTL, sin embargo, los dispositivos CMOS pueden ser ideales para aplicaciones de bajo consumo de energía, por tal razón no se puede decir cuál de las dos compuertas es mejor, dado que cada una de estas están hechas para diferentes usos y aplicaciones.
