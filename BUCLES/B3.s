# Ejercicio 3: Escribir un programa que pida al usuario un número entero positivo y muestre por pantalla todos los números impares desde 1 hasta ese número separados por comas.

.data
    msg1: .asciiz "\nENTER AN INTEGER: "
    espacio: .asciiz ", "



.text
main:



# SE IMPRIME: "MSG1"
li $v0,4
la $a0,msg1
syscall



# SE RECIBE EL INPUT (NUMERO) EN T1
li $v0,5
syscall
move $t1,$v0



# ASIGNANGO 1 A T0
addi $t2, $0, 1



# FOR: DESDE EL PRIMER AL ÚLTIMO NUMERO
loop:
    bgt $t2, $t1, exit
    
    
    # SE AUMENTA T2 EN 2
    addi $t2, $t2, 2

    
    # PRINT: NUMERO EN T2
    li $v0, 1
    move $a0, $t2
    syscall

    
    # PRINT: ESPACIO: " "
    li $v0,4
    la $a0,espacio
    syscall

    b loop
exit:



li $v0, 10
syscall