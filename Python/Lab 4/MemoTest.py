import numpy as np
import random

tablero = np.zeros(shape=(4,4), dtype=int)
tableroPintar = np.zeros(shape=(4,4), dtype=int)

def verificarPos(fil,col):
    while tablero[fil][col] != 0:
        fil = random.randint(0,3)
        col = random.randint(0,3)
    return fil,col

def llenarTablero():
    for i in range(1,9,1):
        fil,col = verificarPos(random.randint(0,3),random.randint(0,3))
        tablero[fil][col] = i
        fil2,col2 = verificarPos(random.randint(0,3),random.randint(0,3))
        tablero[fil2][col2] = i

def imprimirM(m):
    print(m)
    
def verificarPosMP(fil,col):
    if tableroPintar[fil][col] != 0:
        return 1
    return 0


def pedirPos():
    contErrors = 0
    contAciertos = 0
    contador = 1
    imprimirM(tablero)
    
    while contErrors < 5 or contAciertos < 5:
        
        print("Ingrese el valor para la fila ",contador," (0,1,2,3)")
        fila1 = int(input())
        print("Ingrese el valor para la columna ",contador," (0,1,2,3)")
        colm1 = int(input())
        
        if verificarPosMP(fila1,colm1) == 1:
            print("Error! Esa posicion ya fue visitada")
        else:
            tableroPintar[fila1][colm1] = tablero[fila1][colm1]
    
            imprimirM(tableroPintar)

            print("Ingrese el valor para la fila ",contador+1," (0,1,2,3)")
            fila2 = int(input())
            print("Ingrese el valor para la columna ",contador+1," (0,1,2,3)")
            colm2 = int(input())
            
            if verificarPosMP(fila2,colm2) == 1:
                print("Error! Esa posición ha sido visitada")
            else:
                contador += 1
                if tablero[fila2][colm2] != tableroPintar[fila1][colm1]:
                    tableroPintar[fila1][colm1] = 0
                    tableroPintar[fila2][colm2] = 0
                    contErrors = contErrors+1
                    print("pareja NO encontrada")
                else:
                    tableroPintar[fila2][colm2] = tablero[fila2][colm2]
                    imprimirM(tableroPintar)
                    print("pareja encontrada")
                    contAciertos = contAciertos+1        
    if contAciertos == 4:
        print("Ganó el juego")
        imprimirM(tablero)
    else:
        print("Perdió")
        imprimirM(tablero)
    
def memoTest():
    llenarTablero()
    pedirPos()
        
memoTest()
        
        
        
        
            
        
    
    
    
    
    

