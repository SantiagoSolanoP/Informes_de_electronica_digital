help: help-sim help-quartus
clean: clean-zip clean-syn-quartus clean-sim

TOP=top
#test bench del proyecto para la simulación
tb=$(TOP)_tb.v
# Módules .v que hacen parte del proyecto
DESIGN=./top.v ./top_inicial.v ./mostrarDisplay.v ./obtener_D_U_D_C_Distancia.v ./controlMotor.v
# # Ruta donde está quartus instalado
PATH_QUARTUS=~/gitPackages/quartus/quartus/bin
# Cable programador
CABLE=USB-Blaster
# Z: Nombre para empaquetar proyecto
Z=blink

MK_SYN=altera-c4e6e10-syn.mk
MK_SIM=sim.mk
include $(MK_SYN) $(MK_SIM)
