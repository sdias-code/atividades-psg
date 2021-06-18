linha = input()
valores = linha.split()

codigoProduto = int(valores[0])
quantidade = int(valores[1])

cachorroQuente = 4.00
xSalada = 4.50
xBacon = 5.00
torradaSimples = 2.00
refri = 1.50

produto = 0
total = 0

if codigoProduto == 1:
    produto = cachorroQuente
elif codigoProduto == 2:
    produto = xSalada
elif codigoProduto == 3:
    produto = xBacon
elif codigoProduto == 4:
    produto = torradaSimples
elif codigoProduto == 5:
    produto = refri
else:
    produto = 0    
		
total = produto * quantidade
resposta = "Total: R$ {:.2f}"
print(resposta.format(total))