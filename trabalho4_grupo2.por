programa
{	//Grupo 2
	//Mariana Monteiro
	//Gabriela Couto
	//Delmir Augusto
	//Daniele Dias
	//Marcos Medeiros
	inteiro assentos[10][12]
	
	funcao inicio()
	{
		inteiro linha, coluna

		para(inteiro lin=0; lin<10; lin++){
			para(inteiro col=0; col<12; col++){
				assentos[lin][col] = 0
			}
		}

		escreva("\n-----RESERVA CINEMA-----\n")
			
		faca {
			
			escreva("\nDigite a linha do assento: ")
			leia(linha)
			
			escreva("\nDigite a coluna do assento: ")
			leia(coluna)
			limpa()
			se (adicionarAssento(linha, coluna)){
				listarAssentos()
			}

		}
		enquanto (linha > 0 ou coluna > 0)
	}

	funcao logico adicionarAssento(inteiro linha, inteiro coluna){

		se (verificaAssentoValido(linha, coluna) e verificaAssentoDisponivel(linha, coluna))
		{
			assentos[linha-1][coluna-1] = 1
			escreva("\nAssento reservado com sucesso!\n\n")
			retorne verdadeiro
		}

		retorne falso
	}

	funcao logico verificaAssentoValido(inteiro linha, inteiro coluna){
		se (linha > 10 ou coluna > 12){
			escreva("Assento invalida.\n")
			retorne falso
		}

		retorne verdadeiro
	}

	funcao logico verificaAssentoDisponivel(inteiro linha, inteiro coluna){
		
		se (assentos[linha-1][coluna-1] == 1) {
			escreva("Assento ja ocupado.\n")
			retorne falso
		}

		retorne verdadeiro
	}

	funcao listarAssentos(){
		para(inteiro lin=0; lin<10; lin++){
			para(inteiro col=0; col<12; col++){
				escreva(assentos[lin][col], " ")
			}
			escreva("\n")
		}
		
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 20; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */