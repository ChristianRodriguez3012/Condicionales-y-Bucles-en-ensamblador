# Ejercicio 1: Escribir un programa que pida al usuario una palabra y la muestre por pantalla 10 veces.

.data

msg: .asciiz "\nENTER A WORD: "
buffer: .space 100

.text
main:



# PRIMER MENSAJE
li $v0, 4
la $a0, msg
syscall



# SE RECIBE EL PRIMER NUMERO
li $v0,8



# SE ASIGNA EL VALOR DE 0 EB t0
li $t0, 0
li $t1, 11



# BUCLE FOR:
for:



# INICIALIZA EN t0 y FINALIZA EN t1
beq $t0,$t1,exit



# PRINT
move $a0, $t2
li $v0,4
syscall

j for
exit:


li $v0, 10
syscall