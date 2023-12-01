# Vehiculo seguidor de linea antichoques

## Introduccion

## Objetivos
1. Diseñar en verilog el codigo de un vehiculo seguidor de linea con sensor de distancia añadido.
2. Implementar el codigo en un carro fisico
3. Dividir el funcionamiento del codigo por modulos que faciliten la comprencion por rtl. 
## Procedimiento
Mediante la aplicacion de Digital se desarrollaran los modulos necesarios para el funcionamiento de un vehiculo seguidor de linea, despues de tener los modulos y comprender su funcionamiento se desarrollara o se modificara el codigo de Digital con los requerimientos faltantes.
Convención para nuestras variables:
1. motor_iz es el motor 1.
2. respSeguidorLinea2 es el Sensor infrarrojo 2.
3. GND/VCC es la entrada/salida del Sensor ultrasonido.
4. motor_de es el motor 2.
5. respSeguidorLinea1 es el Sensor infrarrojo 1.




## Resultados
### Implementación en Verilog
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
<img src="Imagenes/obtener_D_U_D_C_Distancia.svg" title="Modulo de sensor ultrasonico" width="70%" height="70%">
</div>

#### Visualización del display
Este modulo no presenta practicamente ninguna diferencia respecto al sensor ultrasonido, este modulo sigue usando la salida generada por el sensor, realizando su clasificacion mediante descomposicion factorial y permitiendo asi, identificar unidades, decenas, centenas y decimas, y asi escoger el display para mostrarse y finalmente mostrandolo.
Se apoya también con un modulo externo, ContadorSeleccionadorDisplay, este modulo cuenta 0, 1, 2, 3 de manera decimal y reiniciará cuando se desborde. Esta cuenta nos sirve para encender un display a la vez, los cuales son respectivamente, DECIMAL, UNIDADES, DECENA, CENTENA => D1, D2, D3, D4.
Por último se encienden los leds correspondientes al display para formar la figura del número.
<div align="center">
<img src="Imagenes/mostrarDisplay.svg" title="Modulo de visualizacion en display 7 segmentos" width="70%" height="70%">
</div>

#### Control de motores
El módulo de control de motores utiliza dos parametros fundamentales: 
1. El primero de ellos será la entrada del sensor ultrasónico, este le determinará la distancia a la cual los motores se pueden mover y a su vez en el modulose tendrá un limite que será 1111 o 15 en decimal, el cual se usará como 15cm
   Luego habrá un condicional if, que evaluará si es mayor o menor, si es mayor dará 1 lógico, sino un 0 lógico, dato que se usa para que si se detecta un objeto próximo le asignará a los motores la instrucción de girar a la derecha, sino que siga derecho.
   
   Caso 1: Lo enunciado anteriormente, si no hay un objeto adelante seguirá hacia adelante, en dado caso que no se activen los sensores infrarrojos y haya un obstaculo, el carro girará a la derecha(convencionalmente).
   
2. Si el sensor no detecta ningún objeto al frente actuará Los sensores infrarrojos, estos determinarán qué obstáculo qué camino debe seguir el carro sabiendo que si uno de estos se activa se activara el motor izquierdo generando un giro hacia la izquiera, si se activa el otro sensor deberá realizar un giro en la dirección opuesta:
   
   Caso 2: Si ambos infrarrojos están encendidos, sigue derecho.
   
	 Caso 3: Si ambos infrarrojos están apagados, sigue derecho, de esta forma evitará que el carro siga direcciones o instrucciones erróneas y cumpla con su funcionamiento esperado.

   Caso 4: Si infrarrojo 1(izquierdo) apagado, e infrarrojo 2(derecho) encendido, giro derecha.
   
	 Caso 5: Si Infrarrojo 1(izquierdo) encendido e infrarrojo 2(derecho) apagado, gira izquierda.

<div align="center">
<img src="Imagenes/controlMotor.svg" title="Modulo de control de motores" width="70%" height="70%">
</div>

### Señales obtenidas de los resultados con GTKwave

#### Seguidor de linea izquierdo apagado y derecho apagado
<div align="center">
<img src="Imagenes/seguidoresDelinea 0_0.png" title="seguidoresDelinea 0_0" width="70%" height="70%">
</div>


#### Seguidor de linea izquierdo prendido y derecho apagado
<div align="center">
<img src="Imagenes/seguidoresDelinea 0_1.png" title="seguidoresDelinea 0_1" width="70%" height="70%">
</div>

#### Seguidor de linea izquierdo apagado y derecho prendido
<div align="center">
<img src="Imagenes/seguidoresDelinea 1_0.png" title="seguidoresDelinea 1_0" width="70%" height="70%">
</div>

#### Seguidor de linea izquierdo prendido y derecho prendido
<div align="center">
<img src="Imagenes/seguidoresDelinea 1_1.png" title="seguidoresDelinea 1_1" width="70%" height="70%">
</div>

