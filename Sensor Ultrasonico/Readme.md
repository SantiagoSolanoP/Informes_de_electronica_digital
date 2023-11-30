# Implementacion Sensor UltraSonico Visualizado en 7 segmentos

## Introduccion
La implementacion y el uso de sensores es algo que dia tras dia se vuelve mas comun, desde la ingenieria se han venido desarrollando cada vez mas sensores y formas de implementacion de los mismosm, por tal razon, es necesario entender el funcionamiento de estos y comprender como se pueden implementar adecuadamente en una FPGA, entendiendo sus pasos de implementacion y su funcionamiento interno.

## Objetivos
1. Implementar el sensor de distancia con una FPGA
2. Visualizar el resultado de la distancia en la FPGA

## Resultados
### Implementacion
Para la implementacion y explicacion del sistema de funcionamiento del sensor ultrasonico se usaran los diagramas RTL y se explicaran en terminos generales para comprender su funcionamiento:
####  Circuito General
El circuito constara de 3 etapas principales, registro de constantes, mediciones del sensor y visualizacion en el display

El circuito general se vera de la siguiente forma: 
<div align="center">
<img src="Imágenes/top_inicial_sensor.jpg" title="Circuito general Sensor" width="90%" height="90%">
</div>

#### Registro de constantes
El registro de constantes hace referencia a aquellos valores constantes que el circuito usa, como lo son valores de vcc o GND, asi como definir los estados de los displays como encendidos.

#### Mediciones de sensor
En este bloque entra el segmento del codigo que permite la identificacion de la distancia que capta el sensor esto lo hace mediante la recepcion de una señal de echo y, en base a esta permitir hacer la clasificiacion de la longitud, obteniendo su parte entera y decimal, y separando la parte entera en unidades, decenas y centenas , finalmente vericando si la distancia se ecuentra en el rango esperado de medicion o y enviando la informacion obtenida para ser mostrada si esta en el rango de medicion.

<div align="center">
<img src="Imágenes/obtener distancia.jpg" title="Circuito para obtener la distancia" width="90%" height="90%">
</div>

#### Visualizacion en display
En este bloque se encuentra los circuitos necesarios para visualizar la informacion en los displays de 7 segmentos de la FPGA.
A partir de la distancia calculada del bloque anterior, se le suministra esta informacion a este bloque, este bloque realizara la descomposicion factorial e identificara el valor de las unidades, decenas, centenas y la parte decimal, estos valores se convertiran de valores decimales a informacion para transmitirla al display, a su vez, un seleccionador seleccionara que display debera ser usado, esto para poder ir alternandolos a una alta velocidad de tal forma que no sea perceptible para el ser humano el cambio y se visualice todos los displays como un solo valor numerico el cual muestre la distancia reconocida por el sensor.
<div align="center">
<img src="Imágenes/mostrarDisplay.jpg" title="Circuito para mostrar en el Display" width="90%" height="90%">
</div>
