programa {
	funcao inicio() {
		inteiro n
		escreva("\nFatorial de qual n�mero: " )
		leia(n)
		escreva("\nFatorial de  : ", n , "\n",  fatorial(n) )
	}
	

    funcao inteiro fatorial(inteiro n){
        
        se ( n < 2) retorne n
        senao 
          retorne ( n * fatorial ( n  -1 ) )
    }
}
