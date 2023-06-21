def invertir_palabras(cadena):
    resultado = ""
    i = len(cadena)-1
    while(i > -1):
        resultado += cadena[i]
        i -= 1
    
    return resultado

palabra = invertir_palabras("Bienvenidos")
print(palabra)
