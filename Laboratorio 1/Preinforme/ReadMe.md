# COMPARACIÓN DE TECNOLOGÍA

## Objetivos
* Identificar las características de un dispositivo fabricado en diferentes tecnologías.

## Recursos requeridos
* Negador TTL 74LS04
* Negador CMOS CD4069
* Datasheets
* 
## Procedimiento

### Parte 1

1. Observar comparativamente las especificaciones técnicas de cada uno de los dispositivo mencionados.
   Segun ElectroAgenda https://electroagenda.com/es/qucsstudio-potente-simulador-de-circuitos/ apartado 4.1 y 3.1 cita
   "Obviamente los componentes importados desde SPICE son válidos únicamente para simulaciones de circuitos analógicos,
   como se ha detallado arriba en el apartado 3.1."
   
   Por lo que hemos tenido problemas al querer simular los negadores y querer evaluar sus propiedades, propiedades que se sacan directamente del datasheet.
   Entonces se opto por incluir una tabla comparativa.
   | Comparacion Tecnologias         | TTL 74LS04    | CMOD CD4069   |
   | :---                            | :---:         |        :---:  |
   | Tension de trabajo              | Content Cell  | 3 a 15v       |
   | Tiempo de subida y bajada       | Content Cell  | 20ns          |
   | Tiempo de retardo               | Content Cell  |90 50ns con v+ |
   | Potencia por compuerta          | Content Cell  | Content Cell  |
   | Farm out                        | Content Cell  | Content Cell  |
   | Producto frecuencia y potencia  | Content Cell  | Content Cell  |
   | Compuerta tipo                  |      NOT      |      NOT      |
   | Capacidad corriente salida "1"  | Content Cell  | Content Cell  |
   | Capacidad corriente salida "0"  | Content Cell  | Content Cell  |
   | Salida Open Colector            | Content Cell  | Content Cell  |
   | Nivel de ruido soportado        | Content Cell  | Content Cell  |


   **Negador TTL 74LS04**: 
![Datasheet](./Preinforme/Datasheets/HD74LS04.PDF)

   **Negador CMOS CD4069**: 
![Datasheet](./Preinforme/Datasheets/CD4069.PDF)
   
   
   

3. Determinar el circuito equivalente para cada uno de los dispositivos.   
**Negador TTL 74LS04**: 
![imagenesdatasheet](./Preinforme/Imagenes/74lS04.png)
**Negador CMOS CD4069**: 
![imagenesdatasheet](./Preinforme/Imagenes/CD4069.png)
