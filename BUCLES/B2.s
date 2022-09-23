# Ejercicio 2: Escribir un programa que pregunte al usuario su edad y muestre por pantalla todos los años que ha cumplido (desde 1 hasta su edad).

.data
msg: .asciiz "\nYOUR AGE: "
msg1: .asciiz "\nYOU ARE THIS AGE:"



.text
main:



# 1ER MENSAJE: PRINT
li $v0, 4
la $a0, msg
syscall



# SE RECIBE EL NUMERO INGRESADO EN t1
li $v0,5
syscall
move $t1,$v0



# ASIGNACIÓN DE 0 a T0
li $t0, 0



# CREACIÓN DEL BUCLE FOR
for:



# INICIA EN T0 y FINALIZA EN T1
beq $t0,$t1,exit
addi $t0,$t0,1



# PRINT
li $v0, 4
la $a0, msg1
syscall

li $v0,1
move $a0, $t0
syscall

j for
syscall
exit:


li $v0, 10