# Vehiculo seguidor de linea antichoques

## Introduccion

## Objetivos
1. Diseñar en verilog el codigo de un vehiculo seguidor de linea con sensor de distancia añadido.
2. Implementar el codigo en un carro fisico
3. Dividir el funcionamiento del codigo por modulos que faciliten la comprencion por rtl. 
## Procedimiento
Mediante la aplicacion de Digital se desarrollaran los modulos necesarios para el funcionamiento de un vehiculo seguidor de linea, despues de tener los modulos y comprender su funcionamiento se desarrollara o se modificara el codigo de Digital con los requerimientos faltantes.


## Resultados
### Implementacion en Digital
Se realizo un vehiculo con la capacidad de desplazarce a partir de las respuestas de sensores seguidores de linea y distancia, los cuales permiten o no el funcionamiento de los motores.

<div align="center">
<img src="Verilog/top_inicial.svg" title="RTL del funcionamiento del vehiculo" width="70%" height="70%">
</div>

En base en el diseño se puede clasificar el proyecto en 4 modulos: Registro de constantes, sensor ultrasonico, visualizacion de displays y control de motores.
#### Registro de constantes

El registro de constantes hace referencia a aquellos valores constantes que el circuito usa, como lo son valores de vcc o GND, asi como definir los estados de los displays como encendidos.

#### Sensor Ultrasonico
En este bloque entra el segmento del codigo que permite la utilizacion del sensor ultrasonico, este codigo ya fue trabajado anteriormente y posee el mismo funcionamiento: clasifica la entrada, Obtiene la distancia, envia el valor para su posterior clasificacion y visualizacion, no obstante, este sensor tambien enviara una señal al controlador del motor, esto, para comunicarle en que momentos tiene un objeto al frente y por tanto, no se puede mover, debe quedarse estatico e inmovil.


<div align="center">
<img src="Verilog/obtener distancia" title="Modulo de sensor ultrasonico" width="70%" height="70%">
</div>

#### Visualizacion del display
Este modulo no presenta practicamente ninguna diferencia respecto al sensor ultrasonido, este modulo sigue usando la salida generada por el sensor, realizando su clasificacion mediante descomposicion factorial y permitiendo asi, identificar unidades, decenas, centenas y decimas, y asi escoger el display para mostrarse y finalmente mostrandolo.
<div align="center">
<img src="Verilog/obtener distancia" title="Modulo de sensor ultrasonico" width="70%" height="70%">
</div>

#### Control de motores
El módulo de control de motores utiliza dos parametros fundamentales: el primero de ellos será la salida del sensor ultrasónico, este le determinará la distancia a la cual los motores se pueden mover, si los motores detectan un objeto próximo a este le asignará a los motores la instrucción de no moverse y por tanto, se queda estático evitando que el carro choque con el objeto que tenga al frente. Si el sensor no detecta ningún objeto al frente actuará Los sensores infrarrojo,s estos determinarán qué obstáculo qué camino debe seguir los el carro sabiendo que si uno de estos se activa se activara el motor izquierdo generando un giro hacia la izquiera, si se activa el otro sensor deberá realizar un giro en la dirección opuesta. Si ninguno de los dos detecta ninguna variación en el camino los dos motores se activarán y andarán línea recta. De esta forma evitará que el carro siga direcciones o instrucciones erróneas y cumpla con su funcionamiento esperado.
<div align="center">
<img src="Verilog/obtener distancia" title="Modulo de sensor ultrasonico" width="70%" height="70%">
</div>

