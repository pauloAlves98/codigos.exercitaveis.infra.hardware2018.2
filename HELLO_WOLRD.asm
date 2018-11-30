.data
	Hello:.asciiz "Hello World"
.text
	li $v0,4 #Comando 4 printar String loadImediate a lupa explica.
	la $a0,Hello
	syscall
	