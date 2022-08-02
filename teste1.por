programa
{
	inclua biblioteca Util --> u
	
	inteiro  contador, numeroSorteado, incremento, contaDupla, bkp 
	
	
inteiro vetNumerosSorteados[51]
	funcao inicio()
	{
	
		contador = 0
		contaDupla = 0
		numeroSorteado =0
		enquanto(contador <50)
		{	
			//contaDupla = 0
			numeroSorteado =0
			//numeroSorteado = u.sorteia(1, 25)
			para(incremento =0; incremento < 50; incremento++)
			{
				numeroSorteado = u.sorteia(1, 25)
				se(vetNumerosSorteados[incremento] == numeroSorteado)
				{
					contaDupla++
					
				}
				se(contaDupla <= 2)
				{
					vetNumerosSorteados[incremento] = numeroSorteado
					contador++
					
				}
				senao
				{
					//numeroSorteado = u.sorteia(10, 60)
				}

				
			}
		}
/*
		para(incremento =0; incremento < 50; incremento++)
			{
				se(incremento % 10 == 0 e incremento != 0 ){
					escreva(vetNumerosSorteados[incremento], " \n")
				}
				senao
				{
					escreva(vetNumerosSorteados[incremento], " ")
				}
			}
			*/

		/* Ordenar os dados dentro do vetor com o algoritmo ordenação linear*/
		para(incremento =0; incremento < 50; incremento++)
		{
			para(inteiro i = incremento +1; i <50; i++)
			{
				se(vetNumerosSorteados[incremento] > vetNumerosSorteados[i])
				{
					bkp = vetNumerosSorteados[incremento]
					vetNumerosSorteados[incremento] = vetNumerosSorteados[i]
					vetNumerosSorteados[i] = bkp
				}
			}

			//escreva(vetNumerosSorteados[incremento]," ")
		}	
		//escreva(" \n", incremento)

			para(incremento =0; incremento < 50; incremento++)
		{
			para(inteiro i = 0; i <50; i++)
			{
				se(vetNumerosSorteados[incremento] == vetNumerosSorteados[i])
				{
					escreva(vetNumerosSorteados[i])
				}
				
			}
			escreva("\n")
			//escreva(vetNumerosSorteados[incremento]," ")
		}	
		//escreva(" \n", incremento)
	}
}
