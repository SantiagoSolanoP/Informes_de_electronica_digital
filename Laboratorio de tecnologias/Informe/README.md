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
Para el desarrollo práctico de este laboratorio será necesario realizar el siguiente montaje para cada una de las compuertas:

<img src="Imagenes/Comparación ttl y cmos con volataje de entrada  aproximado a 5v.png" width="90%" height="90%">

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

### Parte 2

Para determinar el fan-in y fan-out, se tuvo en cuenta la información del datasheet de cada compuerta, se realizaron las simulaciones para observar los resultados esperados y las caracteristicas que diferencian a las compuertas TTL de las CMOS debido a el circuito interno caracteristico.

El circuito que se tuvo en cuenta para obtener el fan-in y fan-out de la compuerta 74LS04 y CD4069 es el siguiente: 

<div align="center">
<img src="Imagenes/Comparación de la conexión de dos compuertas.png" title="Histeresis 74LS04" width="90%" height="90%">
</div>

Al relizar las simulaciones se tuvo en cuenta que la compuerta TTL tiene mayor consumo energetico en comparación con el CMOS, lo que hace que la compuerta TTL 74LS04 tenga un fan-in y fan-out de solo 2 en comparación con el CMOS en el que no se encontro un limite exacto en las simulaciones ya que la perdida de energia es minima hasta con 10 compuertas.

<div align="center">
<img src="Imagenes/2TTL vs 9CMOS.png" title="Histeresis 74LS04" width="90%" height="90%">
</div>



