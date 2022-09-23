# Ejercicio 4: Escribir un programa que pida al usuario un número entero positivo y muestre por pantalla la cuenta atrás desde ese número hasta cero separados por comas.

.data
    msg: .asciiz "ENTER A NUMBER: "
    spa: .asciiz ", "



.text
main:

    # PRINT MENSAJE
    li  $v0,4
    la  $a0, msg
    syscall 



    # INPUT EN T0
    li $v0,5
    syscall
    move $t0, $v0

    li  $t1, 1



# OUTPUT
loop: 



# SE DISMINUYE T0 EN 1
sub $t2, $t0, $t1



# PRINT: T2
li $v0, 1
move $a0, $t2
syscall


move    $t0, $t2    
bgt $a0, 0, loop



# SE CARGA EL NÚMERO "EXIT" EN $v0
li  $v0,10      
syscall 