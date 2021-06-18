
tempoGasto = int(input())
		
velocidadeMedia = int(input())
		
distanciaPercorrida  = float((tempoGasto * velocidadeMedia))
		
qteLitros  = float(distanciaPercorrida / 12)

resposta = '{:.3f}'

print(resposta.format(qteLitros ))