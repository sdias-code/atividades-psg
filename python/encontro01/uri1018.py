valor = int(input())
		
notas100 = int(valor / 100)
resto100 = valor % 100
		
notas50 = int(resto100 / 50)
resto50 = resto100 % 50
		
notas20 = int(resto50 / 20)
resto20 = resto50 % 20	
		
notas10 = int(resto20 / 10)
resto10 = resto20 % 10
		
notas5 = int(resto10 / 5)
resto5 = resto10 % 5
		
notas2 = int(resto5 / 2)
resto2 = resto5 % 2
		
notas1 = int(resto2 / 1)
		
print(valor)
print(notas100 , "nota(s) de R$ 100,00")
print(notas50 , "nota(s) de R$ 50,00")
print(notas20 , "nota(s) de R$ 20,00")
print(notas10 , "nota(s) de R$ 10,00")
print(notas5 , "nota(s) de R$ 5,00")
print(notas2 , "nota(s) de R$ 2,00")
print(notas1 , "nota(s) de R$ 1,00")