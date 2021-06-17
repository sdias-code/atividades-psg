# Variaveis de saída
x = "Nome"
y = "Silvio Dias"
print(x + " : " + y)

# Variáveis ​​globais
x = "Impressionante!"

def myfunc():
    print("Python é " + x)


myfunc()

# Variaveis locais
x = "Impressionante!"

def myfunc():
    x = "Fantastico"
    print("Python é " + x)

myfunc()

# Variaveis global dentro da funcao
x = "Impressionante!"
def myfunc():
    global x
    x = "Fabuloso"
    print("Python é " + x)

myfunc()

