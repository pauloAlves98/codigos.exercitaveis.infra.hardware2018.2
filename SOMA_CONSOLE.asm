.data 
 N1_LABEL: .asciiz  "Digite o número 1:" 
 N2_LABEL: .asciiz  "Digite o número 2:" 
 RESULT: .asciiz  "O resultado da soma eh:"
.text
#Soma com valores ores obitidos do console!

	li $v0,4 # 4 eh a constante para  ler Strings
	la $a0,N1_LABEL # LA CARREGA UM VALOR DIRETO, POR  EX  UM NÚMERO
	syscall 
	
	li $v0,5 # 5 lê um inteiro do console
	syscall # pra faze-lo ler
	
	move $t1,$v0 #Cópia o valor do console para $t1
	
	li $v0,4 # 4 eh a constante para  ler Strings
	la $a0,N2_LABEL # LA CARREGA UM VALOR DIRETO, POR  EX  UM NÚMERO
	syscall 
	
	li $v0,5 # 5 lê um inteiro do console
	syscall # pra faze-lo ler
	
	move $t2,$v0 #Cópia o valor do console para $t2
	
	add $s0,$t1,$t2
	
	li $v0,4
	la $a0,RESULT
	syscall 
	
	li $v0,1
	move $a0,$s0
	syscall 
	
	
	
	
