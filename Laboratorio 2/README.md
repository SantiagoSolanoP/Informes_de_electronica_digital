# Implementacion de sumador restador en visualizador de 7 segmentos

## Introduccion

## Objetivos
1. Implementar y diseñar el circuito necesario para visualizar un numero binario en un visualizador de 7 segmentos.
2. Diseñar e implementar un circuito sumador-restador de 4 bits.
3. Implementar el circuito sumador restador junto con el visualizador de 7 segmentos. 
## Procedimiento
Mediante la aplicacion de Digital se pondra la tabla de verdad para poder implementar el circuito necesario para realizar el circuito necesario para el visualizador de 7 segmentos. Posteriormente se realizaran las conexiones respectivas al circuito y se realizaran las respectivas pruebas necesarias para verificar su adecuado funcionamiento.


## Resultados
### Implementacion en Digital
Para poder realizar la implementacion del visualizador de 7 segmentos sera necesario establecer que entradas tiene el display, estas se pueden apreciar desde el datasheet de cualquier diplay, estas entradas se distribuyen en a, b, c, d, e, f, g ydp de la siguiente manera:

<div align="center">
<img src="Imágenes/7 Segmentos.jpg" title="Disposicion 7 segmentos" width="90%" height="90%">
</div>

Debido a que el display debera poder mostrar los numero del 0 al 15 en hexadecimal deberos usar como entradas del sistema 4 bits que permitiran contar hasta ese numero. Asi pues, podremos encontrar un sistema en el cual la entrada seran los 4 bits que representaran al numero que queremos mostrar, y como salidas seran cada una de las variables del display de 7 segmentos, no obstante, dado a que el punto decimal no lo usaremos, este ira conectado al mismo punto de alimentacion del display.

Con esto en mente, crearemos una tabla de verdad en la cual podamos evaluar cada entrada con sus respectivas salidas, obteniendo la siguiente tabla:

<div align="center">
<img src="Imágenes/Tabla de verdad 7 seg.png" title="Tabla de verdad 7 segmentos" width="90%" height="90%">
</div>

A partir de esta tabla y usando las herramientas que proporciona digital obtendremos las expresiones del circuito obteniendo los siguientes resultados:

a = (¬A ∧ ¬B ∧ ¬C ∧ D) ∨ (¬A ∧ B ∧ ¬C ∧ ¬D) ∨ (A ∧ ¬B ∧ C ∧ D) ∨ (A ∧ B ∧ ¬C ∧ D)

b = (¬A ∧ B ∧ ¬C ∧ D) ∨ (A ∧ C ∧ D) ∨ (A ∧ B ∧ ¬D) ∨ (B ∧ C ∧ ¬D)

c = (¬A ∧ ¬B ∧ C ∧ ¬D) ∨ (A ∧ B ∧ ¬D) ∨ (A ∧ B ∧ C)

d = (¬A ∧ ¬B ∧ ¬C ∧ D) ∨ (¬A ∧ B ∧ ¬C ∧ ¬D) ∨ (A ∧ ¬B ∧ C ∧ ¬D) ∨ (B ∧ C ∧ D)

e = (¬A ∧ D) ∨ (¬A ∧ B ∧ ¬C) ∨ (¬B ∧ ¬C ∧ D)

f = (¬A ∧ ¬B ∧ D) ∨ (¬A ∧ ¬B ∧ C) ∨ (¬A ∧ C ∧ D) ∨ (A ∧ B ∧ ¬C ∧ D)

g = (¬A ∧ ¬B ∧ ¬C) ∨ (¬A ∧ B ∧ C ∧ D) ∨ (A ∧ B ∧ ¬C ∧ ¬D)

Con estas formulas, mediante verilog crearemos un codigo para poder ejectutar este circuito en verilog, con esto podremos importar un archivo externo a digital y crear un circuito simplificado que nos permita mostrar numero en el display de 7 segmentos, obteniendo un circuito como se muestra en la siguiente imagen:

<div align="center">
<img src="Imágenes/Circuito simplificado 7seg.png" title="Circuito 7 segmentos" width="90%" height="90%">
</div>
