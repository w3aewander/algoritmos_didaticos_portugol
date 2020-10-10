programa {
    
    inclua biblioteca Util --> u
    
    
	funcao inicio() {
		//inteiro v[] = {  40,12,45,23,5,1,67,89  }
		
		inteiro v[50]
		para ( inteiro i=0; i < 50 ; i++) { v[i] = u.sorteia(1,50) }
		
		limpa()
		escreva("\nDesordenado: ")
		mostrar(v)
		
		escreva("\nOrdenado: ")
		ordenar(v,0, u.numero_elementos(v) -1 )
		mostrar(v)
		
		
	}
	
	//gera vetor automaticamente
	funcao  gerar_vetor(inteiro n){
	   //nada
	}
	
	//procedimento para ordenação recursiva do vertor
	funcao  ordenar(inteiro v[], inteiro esquerda, inteiro direita){
	    se ( esquerda < direita ){
	        inteiro j = separar(v, esquerda, direita)
	        ordenar(v, esquerda, j -1 )
	        ordenar(v, j + 1, direita)
	    }
	}
	
	//separa o vetor e escolhe o pivô
	funcao inteiro separar(inteiro v[], inteiro esquerda, inteiro direita){
	    inteiro i = esquerda + 1
	    inteiro j = direita
	    
	    inteiro pivo = v[esquerda]
	    
	    enquanto ( i <= j){
	        se(  v[i] <= pivo ) i++
	        senao se ( v[j] > pivo ) j--
	        senao se ( i <= j ) {
	            trocar(v,i,j)
	            i++
	            j--
	        }
	    }
	    
	    trocar(v, esquerda, j)
	    retorne j
	}
	
	//troca de posicao - bolha
	funcao trocar(inteiro v[], inteiro i, inteiro j){
	    inteiro aux = v[i]
	    v[i] = v[j]
	    v[j] = aux
	}
	
	//imprime na tela o vetor
	funcao mostrar( inteiro v[]){
	    escreva("\n")
	    para ( inteiro i=0; i < u.numero_elementos(v); i++ ){
		    escreva ( v[i] , " ")
		}
	}
}
