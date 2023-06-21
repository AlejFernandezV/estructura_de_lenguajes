"""
    Dada una lista de listas que representa un tablero de ajedrez de tamaño variable, 
    escribir una función que determine si hay algún rey en jaque. Un rey está en jaque 
    si se encuentra en la misma fila, columna o diagonal que una pieza del adversario.
"""

tablero = [
    ['T', 'C', 'A', 'Q', 'K', 'A', 'C', 'T'],
    ['P', 'P', 'P', 'P', 'P', 'P', 'P', 'P'],
    [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
    [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
    [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
    [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
    ['p', 'p', 'p', 'p', 'p', 'p', 'p', 'p'],
    ['t', 'c', 'a', 'q', 'k', 'a', 'c', 't']
]

def jaque_in(tablero):
    tamFil = len(tablero)
    tamCol = len(tablero[0])
    Reyes = []
    adverBlancas = ['P','T','C','A','Q','K'] #Minusculas Blancas
    adverNegras = ['p','t','c','a','q','k'] #Mayusculas negras
    for i in range(len(tablero)):
        for j in range(len(tablero[i])):
            if tablero[i][j] == 'K':
                Reyes.append((i,j,'K'))
            elif tablero[i][j] == 'k':
                Reyes.append((i,j,'k'))
                
    for rey in Reyes:
        i , j, ficha = rey
        
        if ficha == 'k':
            # Revisa las filas y las columnas 
            for k in range(tamFil):    
                if tablero[k][j] in adverBlancas:
                    return True
                elif tablero[i][k] in adverBlancas:
                    return True
            # Revisa las diagonales    
            for k in range(tamFil):
                if i-k >= 0 and j-k >= 0 and tablero[i-k][j-k] in adverBlancas:
                    return True
                elif  i-k >= 0 and j-k >= 0 and tablero[i-k][j-k] in adverNegras:
                    return False
                
                if i-k >= 0 and j+k < tamCol and tablero[i-k][j+k] in adverBlancas:
                    return True
                elif i-k >= 0 and j+k < tamCol and tablero[i-k][j+k] in adverNegras:
                    return False
                
                if i+k < tamFil and j-k >= 0 and tablero[i+k][j-k] in adverBlancas:
                    return True
                elif i+k < tamFil and j-k >= 0 and tablero[i+k][j-k] in adverBlancas:
                    return False
                
                if i+k < tamFil and j+k < tamCol and tablero[i+k][j+k] in adverBlancas:
                    return True
                elif i+k < tamFil and j+k < tamCol and tablero[i+k][j+k] in adverBlancas:
                    return False
            return False
        elif ficha == 'K':
            for k in range(tamFil):
                if tablero[k][j] in adverNegras:
                    return True
                elif tablero[i][k] in adverNegras:
                    return True
            
            # Revisa las diagonales    
            for k in range(tamFil):
                if i-k >= 0 and j-k >= 0 and tablero[i-k][j-k] in adverNegras:
                    return True
                if i-k >= 0 and j+k < tamCol and tablero[i-k][j+k] in adverNegras:
                    return True
                if i+k < tamFil and j-k >= 0 and tablero[i+k][j-k] in adverNegras:
                    return True
                if i+k < tamFil and j+k < tamCol and tablero[i+k][j+k] in adverNegras:
                    return True
            
            return False
        
    
print(jaque_in(tablero))
                
                