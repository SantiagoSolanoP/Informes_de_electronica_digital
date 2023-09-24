# Simulación de circuitos digitales

## Introduccion
En el informe presentado a continuación se desarrollará la práctica relacionada con la simulación de circuitos digitales, en donde se buscara conocer el potencial del lenguaje de descripción de hardware Verilog en la elaboración de circuitos y en la correspondiente verificación de ellos. Durante el informe se usaran programas de Linux para cada uno de los procesos, empezando por programas como iverilog que permite la simulación de archivos verilog y gtkwave que permite observar los resultados graficamente. Adicionalmente con la ayuda de digital se realizaran los circuitos digitales a partir de compuertas logicas, tablas de verdad y expresiones algebraicas, para acomparar al final los resultados obtenidos.

## Objetivos

1. A partir de la documentación de Digital identificar las capacidades de ésta aplicación, limitaciones, herramientas y ejemplos de uso.

2. Observar de la simulación de un circuito digital:
    * Tabla de verdad
    * Expresión algebraica asociada al circuito
    * Mapa de Karnaugh
    * Simulación
    * Casos de prueba

3. Realizar la simulación del circuito digital con iverilog y gtkwave
    * Describir el circuito digital en verilog
    * Crear el testbench de los casos de prueba
    * Realizar la simulación
    * Observar en gtkwave los resultados de manera gráfica


4. Combinar Digital, iverilog y gtkwave
    * En digital con el circuito anterior
        * Exportar a verilog
        * Crear un testbench con los casos de prueba
    * En iverilog crear la simulación con los archivos generados archivo.v y tb.v0
    * En gtkwave observar los resultados de la simulación

## Procedimiento

En el desarrollo de los circuitos se utilizara Digital, iverilog, gtkwave, yosys y netlistsvg, para cumplir los objetivos propuestos anteriormente. Inicialmente se buscara comprender todo el potencial de la aplicación digital y con lo aprendido se obtendra la tabla de verdad, la expresión algebraica, el mapa de Karnaugh y se realizara la simuación correspondiente con sus casos de prueba. Se desarrollara el circuito en verilog para simularlo con iverilog y con gtkwave. Por ultimo, se comparan los resultados de la simulación del archivo verilog que se obtiene desde digital con iverilog y gtkwave.

Inicialmente se buscara desarrollar un sumador completo (suma de tres bits), con él que se obtendran las simlaciones y los datos propuestos anteriormente.

## Resultados

### Semisumador

El sumador completo se realiza a partir de dos semisumadores que tienen el objetivo de obtener la suma de dos bits en binario.

En el programa digital los semisumadores estan conformados por el circuito que se muestra a continuación:

##### Casos de prueba y gráfico

<div align="center">
<img src="Imagenes/sumador/semisumador grafico.png" title="semisumador grafico" width="90%" height="90%">
</div>

Se observa que al conectar las entradas a un XOR y a un AND se obtiene a la salida los bits que representan en binario todas las posibles sumas de dos bits, donde co es el bit más significativo y s el menos significativo. Adicionalmente, en la imagen se encuentran simulados los casos de prueba con su respectiva grafica donde se pueden observar las sumas del semisumador.

En el progrma digital se obtiene la tabla de verdad  y la ecuación del semisumador desde las opciones de análisis. En la siguiente imagen se puede observar la tabla de verdad y la ecuación que corresponde a un sumador de dos bits:

##### Tabla de verdad y ecuación

<div align="center">
<img src="Imagenes/sumador/semisumador ecuacion.png" title="semisumador ecuacion" width="90%" height="90%">
</div>

Para observar los mapas de Karnaugh para las salidas del semisumador se utilizo la opción que proporciona la tabla de verdad en la parte superior. Se obtienen dos mapas de karnaugh con la ecuación que representa a cada una de las salidas.

##### Mapa de Karnaugh - co

<div align="center">
<img src="Imagenes/sumador/semisumador mapa de karnaugh co.png" title="semisumador mapa de karnaugh co" width="90%" height="90%">
</div>

##### Mapa de Karnaugh - s

<div align="center">
<img src="Imagenes/sumador/semisumador mapa de karnaugh s.png" title="semisumador mapa de karnaugh s" width="90%" height="90%">
</div>

Para terminar se obtuvo la imagen del circuito en .png desde las opciones de exportación de digital.

##### Circuito digital

<div align="center">
<img src="Imagenes/sumador/semiSumador.svg" title="semisumador" width="90%" height="90%">
</div>

#### Sumador completo

Con el semisumador realizado en su totalidad ahora se desarrolla el sumador completo conectando un semisumador a dos de las entradas y otro semisumador a la entrada que falta y a la salida del bit menos significativo del primer semisumador, con una compuerta OR se revisa si alguno de los bits mas significativos de los semisumadores es un 1 lógico y si es así el bit más significativo de la salida del sumador completo es tambien un 1 lógico, y por ultimo el bit menos significativo del sumador es el bit menos significativo del segundo semisumador.

Se puede observar el circuito en la aplicación digital con los casos de prueba de la suma de tres bits y su gráfico en la siguiente imagen:

##### Casos de prueba y gráfico

<div align="center">
<img src="Imagenes/sumador/sumador completo grafico.png" title="sumador completo grafico" width="90%" height="90%">
</div>

Al utilizar el análisis de digital se obtiene la siguiente tabla de verdad del sumador completo:

##### Tabla de verdad

<div align="center">
<img src="Imagenes/sumador/sumador completo tabla de verdad.png" title="sumador completo tabla de verdad" width="90%" height="90%">
</div>

La ecuación de las dos salidas del sumador se obtienen junto con el mapa de karnaugh que los representa:

##### Mapa de Karnaugh - co

<div align="center">
<img src="Imagenes/sumador/sumador completo mapa de karnaugh co.png" title="sumador completo mapa de karnaugh co" width="90%" height="90%">
</div>

##### Mapa de Karnaugh - s

<div align="center">
<img src="Imagenes/sumador/sumador completo mapa de karnaugh s.png" title="sumador completo mapa de karnaugh s" width="90%" height="90%">
</div>

##### Circuito digital

<div align="center">
<img src="Imagenes/sumador/sumadorCompleto.svg" title="sumador completo" width="90%" height="90%">
</div>

Con iverilog y gtkwave se realizó la simulación del sumador completo a partir del archivo verilog que representa el sumador completo junto con el semisumador y otro archivo verilog que se encarga de las simulaciones.

Al realizar la simulación con iverilog se observa que se cumplen todos los casos de prueba, como se muestra en la imagen:

##### Simulación iverilog

<div align="center">
<img src="Imagenes/sumador/sumador completo iverilog.png" title="sumador completo iverilog" width="90%" height="90%">
</div>

En gtkwave se observan los casos de prueba de forma grafica y como estos cambian dependiendo de la entrada. En la siguiente imagen se observan los resultados obtenidos:

##### Simulacion gtkwave

<div align="center">
<img src="Imagenes/sumador/sumador completo gtkwave.png" title="sumador completo gtkwave" width="90%" height="90%">
</div>

Con netlistsvg se genera el RTL del sumador completo y se presenta de la siguiente forma:

##### RTL de netlistsvg

<div align="center">
<img src="Imagenes/sumador/sumador completo netlistsvg.png" title="sumador completo netlistsvg" width="90%" height="90%">
</div>

Los archivos verilog utilizados para la simulación son:

Diseño del circuito: [<img src="Imagenes/sumador/verilog.png" width="3%" height="3%">](Imagenes/sumador/sumadorCompleto.v)

Casos de prueba: [<img src="Imagenes/sumador/verilog.png" width="3%" height="3%">](Imagenes/sumador/sumadorCompleto_tb.v)





