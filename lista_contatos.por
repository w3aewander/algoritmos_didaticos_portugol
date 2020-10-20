programa
{

	inclua biblioteca Arquivos --> a

	cadeia  caminho_arquivo
	
	funcao inicio()
	{
	   caminho_arquivo = "/home/wanderlei/Documentos/lista_contatos.txt"	
	   menu();	   
	}

     
	funcao menu(){
		
		limpa()
		
		inteiro opcao
		
		escreva("\nMEUS CONTATOS")
		escreva("\n-----------------\n")
		escreva("\n1 - CRIAR ")
		escreva("\n2 - ADICIONAR ")
		escreva("\n3 - LER ")
		escreva("\n--------------------\n\n")

		escreva("Escolha uma opção: ")
		leia(opcao);

		escolha(opcao){
			caso 1:
			    criar()
		     pare
		     caso 2:
		         
		         ler()
		         adicionar()
		     pare
		     caso 3:
		         ler()
		     pare
		     caso contrario:
		         escreva("\nVocê deve escolher uma opçao disposível\n")
		         pare

		  }		    		
	}

	funcao ler(){
		inteiro arquivo = a.abrir_arquivo(caminho_arquivo, a.MODO_LEITURA)
          cadeia linha
          cadeia conteudo_arquivo[]
          //inteiro numero_linha = 0
          
          enquanto ( nao a.fim_arquivo(arquivo) ){
          	linha = a.ler_linha(arquivo)
          	escreva(linha + "\n")
          	//conteudo_arquivo[numero_linha] = linha
          	//numero_linha++
          }
          a.fechar_arquivo(arquivo)
		
	}

	funcao criar(){
		inteiro arquivo = a.abrir_arquivo(caminho_arquivo, a.MODO_ESCRITA)
		a.escrever_linha("NOME\tEMAIL",arquivo)
		a.fechar_arquivo(arquivo)
	}

	funcao adicionar(){
		//
		limpa()
		cadeia nome_contato, email_contato
		escreva("\nNome do contato: ")
		leia(nome_contato)
		escreva("\nEmail do contato: ")
		leia(email_contato)

          inteiro arquivo = a.abrir_arquivo(caminho_arquivo,a.MODO_ACRESCENTAR)
          a.escrever_linha(nome_contato +"\t"+ email_contato, arquivo)
          a.fechar_arquivo(arquivo) 
          
          ler()           
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1771; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */