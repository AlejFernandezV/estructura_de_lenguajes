listaNums = []
def mediaMultiplos():
    vMedia = 0
    cantMulti = 0
    for i in listaNums:
        vMedia = vMedia + i
        if i % 3 == 0:
            cantMulti = cantMulti+1
    return vMedia/listaNums.__len__(),cantMulti
  
ingreso = int(input("Ingrese un valor: "))
while ingreso != 0:
    if ingreso > 0:
        listaNums.append(ingreso)
    else:
        print("El numero a ingresar debe ser positivo")
    ingreso = int(input("Ingrese un valor: "))
    
print(listaNums)
med,cant = mediaMultiplos()
print("La media es ",med,"y la cantidad de multiplos de 3 es ", cant)


