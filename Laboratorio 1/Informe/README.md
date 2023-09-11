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
<img src="Imagenes/Comparación de la conexión de dos compuertas.png" title="Comparación de la conexión de dos compuertas" width="90%" height="90%">
</div>

Es importante mencionar que los circuitos necesitaron una resistencia pull-up para conectar más de una compuerta debido a los errores que llega a producir un cero logico cuando pasa de una compuerta a otra.

Se puede observar en el anterior circuito simulado cambios notorios en la señal de voltaje de salida con respecto a las señales obtenidas para solo una compuerta TTL o CMOS. Inicialmente se observa como afecta el consumo energetico elevado del TTL 74LS04 en el voltaje de subida en la salida, al compararlo con el voltaje maximo de entrada de 5V ya que se obtiene que es menor de los 3V y se acerca a la zona de incertidumbre. Adicionalmente se encuentra que la potencia consumida por el CMOS es minima ya que no se evidencia un cambio notorio como sucede con el TTL. En este circuito tambien se puede observar una de las desventajas principales de la compuerta CMOS, la cual es su desface, el cual con dos compuertas se duplico.

Se tomo un resitor de 10KΩ como la carga del circuito donde se obtiene el voltaje de salida, teniendo en cuenta lo anterior se observo que la compuerta CMOS con 9 compuertas el desface es de más 40 veces mayor al que tiene una compuerta, aunque al realizar varias simulaciones se llego a la conclusión que depende en gran medida de la carga. A continuación esta el circuito que muestra el comportamiento del CMOS en comparación con el TTL.

<div align="center">
<img src="Imagenes/2TTL vs 9CMOS.png" title="2TTL vs 9CMOS" width="90%" height="90%">
</div>

Al relizar las simulaciones se tuvo en cuenta que la compuerta TTL tiene mayor consumo energetico en comparación con el CMOS, lo que hace que la compuerta TTL 74LS04 tenga un fan-in y fan-out de solo 2 en comparación con el CMOS en el que no se encontro un limite exacto en las simulaciones ya que la perdida de energia es minima hasta con 10 compuertas.

Para observar con mayor precisión el comportamiento del CMOS al aumentar su conexión con compuertas del mismo tipo se disminuyeron las conexiones a 5, lo que permitio obtener el circuito mostrado en la siguiente simulación:

<div align="center">
<img src="Imagenes/3TTL vs 5CMOS.png" title="2TTL vs 5CMOS" width="90%" height="90%">
</div>

Los graficos muestran el retraso en la señal del CMOS, que se menciono anteriormente, pero adicionalmente muestran con claridad como el TTL 74LS04 una perdida de potencia del 15% que se evidencia como una disminución del voltaje.

Todos los anteriores graficos se trabajaron en nanosegundos y microsegundos, pero ahora se mostrara que sucede si se toma una frecuencia de 1kHz en la señal de entrada, lo que permite visualizar la señal en milisegundos y observar un comportamiento notoriamente diferente a el obtenido en las simulaciones anteriores, como se muestra a continuación:

<div align="center">
<img src="Imagenes/Comparación de la señal de entrada y salida para mas de dos compuertas.png" title="Comparación de la señal de entrada y salida para mas de dos compuertas" width="50%" height="50%">  
</div>

La anterior simulación muestra que la compuerta CD4069 CMOS, llega a ser la mejor opción cuando se trabaja con frecuencias menores a 1kHz ya que no hay una perdida energetica notoria, la señal tiene un retraso despreciable y permite conectar una gran cantidad de compuertas sin la necesidad de un buffer. La compuerta TTL 74LS04 enves muestra una disminución notoria del voltaje que la vuleve una opción menos adecuada para fecuencias menores a 1kHz, se observa una mayor perdida energetica que aumenta constantemente al conectar más compuertas y la necesidad de utilizar buffer para recuperar la señal que se pierde en gran medida por la conexion de dos compuertas.

### Conclusión

Las compuertas CD4069 CMOS y TTL 74LS04, permiten la creación de circuitos logicos con caracteristicas similares pero tienen caracteristicas notoriamente diferentes que provienen de la composición de su circuito interno. El TTL mostro siempre una mayor precisión en comparación con el CMOS pero con la consecuencia de que puede producir circuitos de mayor costo debido a que se debe tener en cuenta mantener una señal estable al usar más de una compuerta y adicionalmente esto genera un mayor gasto energetico. Por lo tanto, se puede recomendar cuando se busca una precisión mucho mayor a la del CMOS o cuando se trabaja con altas frecuencias para no trabajaron con el retraso en la señal que tiene la compuerta CD4069 CMOS en frecuencias de MHz o GHz. La compuerta CMOS mostro que es util en la fabricación de circuitos más economicos, y es recomendable cuando se trabaja con frecuencias menores a 1kHz ya que su precisión es aproximademente igual a la del TTL pero sin ninguna de las desbentajas que se mencionaron anteriormenete. 





