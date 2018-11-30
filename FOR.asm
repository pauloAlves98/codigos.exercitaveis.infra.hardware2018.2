.data 	
	#@author:P ALVES
	QUEBRALINHA: .asciiz " \n"
.text
	# C code for(i=0;i<10;i++{ printf(%d,i);}
	li $t1,0 # i = 0
	Loop_for:
		beq $t1,10,Loop_for_end  # essa parte do for if (i<10)
		#Codigo entre { }
			li $v0,1
			move $a0,$t1
			syscall 
			#QUEBRAR A LINHA PARA MOSTRAR O VALOR
			li $v0,4
			la $a0,QUEBRALINHA
			syscall 
		#Incremento
		addi $t1,$t1 1   # i++
		j Loop_for  # salta para o inicio
	Loop_for_end:
	#A titulo de informacao a função slt retorna 1 se for menor.
	
	