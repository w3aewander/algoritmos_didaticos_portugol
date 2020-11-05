programa
{
     inclua biblioteca Arquivos --> a
     inclua biblioteca Tipos --> t
     inclua biblioteca Texto --> txt
     inclua biblioteca Util --> u
      
     real somatorio = 0.0
     cadeia tecla
     cadeia data,hora,produto
     real qtde,valor_unitario
     
	cadeia caminho_arquivo = "./registro_de_vendas.dat"
	cadeia caminho_somatorio = "./somatorio.dat"
	
	funcao inicio()
	{
        enquanto(verdadeiro){
            tela()
        }
	}

	funcao  visualizar_vendas(){

		inteiro arquivo = a.abrir_arquivo(caminho_arquivo, a.MODO_LEITURA)

          escreva("DATA\t\t\tHORA\t\tPRODUTO\t\t\t\tQTDE\t\t\t\tVALOR_UNITARIO\tTOTAL\n") 
          enquanto ( nao a.fim_arquivo(arquivo) ){
             cadeia linha = a.ler_linha(arquivo)	
             linha = txt.substituir(linha, ";", "\t\t")
             escreva(linha,"\n") 
             u.aguarde(500)  
          }

          escreva("\n\nPressione qualquer tecla para continuar...")
		leia(tecla)
		
		a.fechar_arquivo(arquivo)

		
	}

	funcao registrar_venda(){
		
		real total = 0.0
		
		escreva("\n\nRegistro das vendas")
		escreva("\nData: ") leia(data)
		escreva("\nHora: ") leia(hora)
		escreva("\nProduto: ") leia(produto)
		escreva("\nQuantidade: ") leia(qtde)
		escreva("\nValor unitário: ") leia(valor_unitario)
		total = qtde * valor_unitario
		escreva("Valor total: ", total)

          inteiro arquivo = a.abrir_arquivo(caminho_arquivo, a.MODO_ACRESCENTAR) 
          inteiro arquivo2 = a.abrir_arquivo(caminho_somatorio,a.MODO_ACRESCENTAR)
          
          a.escrever_linha(data+";"+hora+";"+produto+";"+qtde+";" +";"+valor_unitario+";"+total, arquivo )
          //matorio = somatorio + total
          a.escrever_linha( t.real_para_cadeia(total),arquivo2 )
                

		a.fechar_arquivo(arquivo)
		a.fechar_arquivo(arquivo2)
)	
		
	}

     /** 
      *  
      *  Mostrar o valor total vendido 
      */
	funcao  real visualizar_somatorio() {

	   inteiro arquivo = a.abrir_arquivo(caminho_somatorio, a.MODO_LEITURA)
        real valor = 0.0
        
        enquanto ( nao a.fim_arquivo(arquivo) ){

        	 cadeia linha = a.ler_linha(arquivo)
           
           se ( nao ( linha ==  "" )   ){           	
        	    valor = t.cadeia_para_real(linha)
           }
           
        	 somatorio = somatorio + valor

        	 u.aguarde(3000)
        }
 
	   a.fechar_arquivo(arquivo)
	    	
        retorne somatorio
	}

	funcao tela(){

        limpa()

        escreva("\n=============  REGISTRO DE VENDAS ==========")
        escreva("\n=                                          =")
        escreva("\n=   1 - Registrar Venda                    =")
        escreva("\n=                                          =")
        escreva("\n=   2 - Visualizar vendas                  =")                     
        escreva("\n=                                          =")
        escreva("\n=   3 - Visualizar somatório de vendas     =")                                  
        escreva("\n=                                          =")
        escreva("\n============================================")

        escreva("\nEscolha uma opção: ")
        
        inteiro opcao
        leia(opcao)

        escolha (opcao) {
             caso 1:
              
              limpa()
               registrar_venda()
             pare   
             caso 2:
               limpa()
               visualizar_vendas()
               
             pare
             caso 3:
               limpa()
               escreva ( "Total de vendas para o dia: ", visualizar_somatorio() )
               leia(tecla)
             pare
             caso contrario:
               escreva("\nVocê deve escolher uma das opções disponíveis")
             
        }

	}
		
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2142; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */