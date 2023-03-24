import random
M=[[0,0,0],[0,0,0],[0,0,0]]
Mpintar = [['*','*','*'],['*','*','*'],['*','*','*']]

def llenarMatriz(M):
    contUnos = 0
    
    for i in range(0,3,1):
        for j in range(0,3,1):
            num = random.randint(0,1)
            M[i][j] = num
            if num == 1:
                contUnos += 1
    if contUnos < 3:
        llenarMatriz(M)

def imprimirMatriz(matriz):
    for i in range(0,3,1):
        print(matriz[i])
        
def verificarCords(matrizP, fil , col):
    if matrizP[fil][col] != '*':
        return 0    
        
def pedirCords(matrizR, matrizP):
    fil = int(input("Ingrese el numero de la fila (0,1,2):"))
    col = int(input("Ingrese el numero de la columna (0,1,2):"))
    
    if verificarCords(matrizP, fil, col) == 0:
        print("Error! Esta posición ya se visitó.")
        pedirCords(matrizR, matrizP)
        
    if matrizR[fil][col] == 1:
        matrizP[fil][col] = 1
        imprimirMatriz[matrizP]
        return 1
    else:
        return 0
    
def impresion(matrizR, matrizP):
    imprimirMatriz(matrizR)
    print("------------ T A B L E R O ------------")
    imprimirMatriz(matrizP)

def juego(matrizR, matrizP):
    contAciertos = 0
    llenarMatriz(matrizR)
    impresion(matrizR,matrizP)
    while contAciertos != 3:
        if pedirCords(matrizR, matrizP) == 0:
            contAciertos += 1
            imprimirMatriz(matrizP)
        else:
            print("Perdió el juego! Sigue intentando")
            juego(matrizR, matrizP)   
            
    print("Usted acertó 3 veces. GANÓ! FELICIDADES")
    
juego(M,Mpintar)
    
    