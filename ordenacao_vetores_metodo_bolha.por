programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro vetor[14]  = {11,9,2,1,10,31,4,8,100,2,99,87,45,42}

		inteiro x,y,aux
		logico ordenado = falso 
		inteiro contador = 1
		
		inteiro TAMANHO_VETOR  = u.numero_elementos(vetor)
		

        enquanto(verdadeiro) {
            
		    para (  x = 0; x < TAMANHO_VETOR; x++ ){             
                se ( x < TAMANHO_VETOR -1 ){
                	
                   ordenado =   vetor[x] < vetor[x+1] 
             	   se (nao ordenado ){
             	      
             	       aux = vetor[x+1]
             	       vetor[x+1] = vetor[x]
             	       vetor[x] = aux 
             	       
             	   } 
		        } 
		
		        se ( contador >= TAMANHO_VETOR -1 ) contador = 1
                 
                        
            }	

            
            contador++
           
            
            u.aguarde(1000)

            limpa()
    
             escreva("\nContador: ", contador) 
             escreva("\nVetor ordenado: " ,  ordenado e contador == TAMANHO_VETOR -1 , "\n" )  
         
             para ( x=0; x < TAMANHO_VETOR; x++ ){
               escreva(vetor[x], "  " )	
             }
                 
            se ( ordenado e contador ==  TAMANHO_VETOR - 1 )  pare
        }
        
         
	}
}
