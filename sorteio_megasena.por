programa {
    
    inclua biblioteca Util --> u
    
	funcao inicio() {
		
		escreva("\nGerar palpite para numeros da megasena\n ")
		escreva("===========================================\n\n")
		
		const inteiro qtde_numeros = 6
	    
		inteiro v_numeros[ qtde_numeros]
		
		para(inteiro i=0; i < 15; i++)
             gerar_numeros(qtde_numeros)
		
	}
	
	funcao gerar_numeros (inteiro qtde_numeros){
	    inteiro v_numeros[qtde_numeros]
	    inteiro i = 0
		enquanto (  i < qtde_numeros  ){
		   inteiro numero_gerado =  u.sorteia(0,59)
		   se ( nao contem_numero(v_numeros, numero_gerado) )    
	           v_numeros[i] = numero_gerado
	       senao 
	           v_numeros[i] = u.sorteia(0,59)
	           i++
		}
		mostra_numeros(v_numeros)
	}
	funcao mostra_numeros(inteiro v[]){
	    para(inteiro i=0;i < u.numero_elementos(v); i++){
	        escreva(" " , v[i], "" )
	    }
	    escreva("\n\n")
	}
	funcao logico contem_numero(inteiro v[], inteiro numero){
	    logico existe = falso
	    para (inteiro i=0; i < u.numero_elementos(v); i++ ){
	        se(numero == v[i]){
	            existe = verdadeiro
	        } 
	    }
	    retorne existe
	}
}
