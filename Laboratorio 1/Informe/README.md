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

Inserte circuito aqui

Seguidamente, se procederá a configurar la fuente de entrada del sistema con una amplitud de 5 voltios y una frecuencia de 1 kHz en una configuracion de onda cuadrada, esto de acuerdo a las especificaciones dadas por el datasheet de cada uno de los dispositivos.

Seguidamente se procederá a comparar la entrada de cada una de las compuertas con la salida de la misma y a partir de esto se obtendrá la gráfica del comportamiento de la salida respecto a la entrada de la compuerta.

Una vez obtenida esta gráfica, se podrá obtener el tiempo de subida y tiempo de bajada de cada una de las compuertas, y así mismo, se podrá obtener el tiempo de retención de cada una de las compuertas.

## Resultados
### 74LS04
#### IN vs OUT
Al realizar la comparacion entre la entrada y la salida de la compuerta 74LS04 se pudo observar el siguiente comportamiento:
* <img src="Imagenes/IN vs OUT 74LS04.jpeg" width="90%" height="90%">
* En primer lugar se puede apreciar que el osciloscopio muestra voltajes en el rango de las decenas de voltios, por ejemplo 52 voltios, sin embargo, esto se debe a un error de configuración del osciloscopio siendo el voltaje real equivalente al voltaje mostrado en pantalla dividido entre 10, es decir, en este caso el voltaje pico a pico que se muestra en la imagen de la señal 1 es de 5.2 voltios aproximadamente.
  
* En segundo lugar se puede ver el comportamiento de la entrada respecto a la salida, siendo la entrada la señal amarilla y la salida la señal de color azul. En esta imagen podemos apreciar que, tal y como se esperaba, el inversor genera una señal de salida de 5 voltios mientras que la señal de entrada es de aproximadamente 0 voltios y de forma análoga, mientras la entrada es de 5 voltios la salida es de 0 voltios cumpliendo con el comportamiento que seesperaba de la compuerta.
  
* Tambien podemos ver que al suministrarle una señal de entrada de 5 Voltios el comportamiento de la salida es casi ideal, siendo una salida de aproximadamente igual magnitud.
  
#### Tiempo de subida y de bajada, Tiempo de retencion

Para realizar la medición del tiempo de subida y de bajada de esta compuerta, se disminuyó el rango del tiempo de mediciones de el osciloscopio, quedando entre en un rango de división de 25 nanosegundos. Con esta configuración pudimos obtener las siguientes graficas:
<img src="Imagenes/Subida 74LS04.jpeg" title="Tiempo de subida 74LS04" width="90%" height="90%">
<p><i>Tiempo de subida 74LS04</i></p>
<img src="Imagenes/Bajada 74LS04.jpeg" title="Tiempo de bajada 74LS04" width="90%" height="90%">
<p><i>Tiempo de bajada 74LS04</i></p>

Al analizar estas gráficas nos podemos percatar de dos caracteristicas principales:
* En el caso del tiempo de subida, se presenta un rango aproximado de entre 50 a 75 nS mientras que el tiempo de bajada es de aproximadamente 25 a 50 nanos segundos.
* Tambien podemos preciar como en este tipo de compuertas, la subida y la bajada no se presentan de una forma lineal o exponencial sino que estas presentan un pequeño tiempo de oscilación en las cuales la onda se ajusta para poder conseguir un valor estable, este tiempo se le denomina <b>tiempo de retención</b>. En el caso de el tiempo de subida, este tiempo de retención se encuentra aproximadamente entre 100 a 150 nanos segundos mientras que en el tiempo de bajada es de aproximadamente 50 nanos segundos.
### Histeresis
Por último se realizó el análisis de la curva de histéresis de esta compuerta lógica. Al configurar el osciloscopio para poder obtener esta gráfica obtuvimos el siguiente resultado:
<img src="Imagenes/Histeresis 74LS04.jpeg" title="Histeresis 74LS04" width="90%" height="90%">
<p><i>Curva de Histeresis de la compuerta 74LS04</i></p>

Es necesario recordar que en el caso es las compuertas negadoras, la curva de histeresis ideal se representaría como dos líneas completamente perpendiculares entre si y totalmente sobrepuestas a los ejes 'x' y 'y', generando un ángulo de 90 grados entre sí.

En el caso está compuerta, podemos apreciar como, a pesar de que ésta tiene un comportamiento similar a la ideal, una vez se acerca al rango de valores en los cuales cambian de estado de HIGH a LOW, se presenta una pendiente. Esto se debe principalmente a la oscilación debido al cambio de estados de la compuerta y el ajuste de la señal hasta llegar a su punto de estabilización. Una vez alcanzado su punto de estabilización podemos ver que cumplen con una curva muy similar a la que se esperaría de una compuerta ideal.
### CD4069
#### IN vs OUT
Al realizar la comparación entre la entrada y la salida de la compuerta CD 4069 se pudo apreciar el siguiente comportamiento:

#### Tiempo de subida y de bajada, Tiempo de retencion
