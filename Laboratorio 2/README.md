# Implementacion de sumador restador en visualizador de 7 segmentos

## Introduccion

## Objetivos
1. Implementar y diseñar el circuito necesario para visualizar un numero binario en un visualizador de 7 segmentos.
2. Diseñar e implementar un circuito sumador-restador de 4 bits.
3. Implementar el circuito sumador restador junto con el visualizador de 7 segmentos. 
## Procedimiento
Mediante la aplicacion de Digital se pondra la tabla de verdad para poder implementar el circuito necesario para realizar el circuito necesario para el visualizador de 7 segmentos. Posteriormente se realizaran las conexiones respectivas al circuito y se realizaran las respectivas pruebas necesarias para verificar su adecuado funcionamiento.


## Resultados
Para poder realizar la implementacion del visualizador de 7 segmentos sera necesario esta
##Conclusiones

Reglas de hardware para Blaster Altera, agregar en 
sudo geany /etc/udev/rules.d/60-blaster.rules

```bash
# Altera USB Blaster
ATTRS{idVendor}=="09fb", ATTRS{idProduct}=="6001", MODE="660", GROUP="plugdev", TAG+="uaccess"
# Altera USB Blaster2
ATTRS{idVendor}=="09fb", ATTRS{idProduct}=="6010", MODE="660", GROUP="plugdev", TAG+="uaccess"
ATTRS{idVendor}=="09fb", ATTRS{idProduct}=="6810", MODE="660", GROUP="plugdev", TAG+="uaccess"
```
Reiniciar reglas con:
```bash
sudo udevadm control --reload-rules
```
