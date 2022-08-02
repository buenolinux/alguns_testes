programa
{
	inclua biblioteca Util --> u
	
	inteiro  contador, numeroSorteado, incremento, contaDupla 
	
	
inteiro vetNumerosSorteados[50]
	funcao inicio()
	{
	
		contador = 0
		enquanto(contador <50)
		{	
			contaDupla = 0
			para(incremento =0; incremento < 50; incremento++)
			{
				numeroSorteado = u.sorteia(1, 50)
				se(vetNumerosSorteados[incremento] != numeroSorteado)
				{
					contaDupla++
					se(contaDupla <= 2)
					{
						vetNumerosSorteados[incremento] = numeroSorteado
						contador++
						contaDupla = 0
					}
				}

				
			}
		}

		para(incremento =0; incremento < 50; incremento++)
			{
				se(incremento % 10 == 0 ){
					escreva(vetNumerosSorteados[incremento], " \n")
				}
				senao
				{
					escreva(vetNumerosSorteados[incremento], " ")
				}
			}
	}
}
