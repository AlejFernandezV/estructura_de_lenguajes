#Definicion de colecciones 
##LISTAS
#lista1 = [1,2,3,4]
#lista2 = [1, "valor 2", 5]

##Imprimir lista
#print(lista1)

##Acceder a una lista
#lista1[1]

##Operaciones con listas

# * duplica la lista n veces
# + concatena otra lista
# [n:m], (Porcion) devuelve el enesimo termino hasta el emesimo termino, excluyendo el ultimo (m) e incluye el primero (n)
# id(nombreLista) se utiliza para ver la dirección de memoria, si se asigna una variable y que contiene una lista a una variable x
# se esta tomando como un apuntador a la misma dirección de memoria

# Metodos que se pueden usar en las listas

# append(nameL) adiciona un elemento al final
# extend(nameL) adiciona los elementos de una lista a la lista previa, el parametro que se pasa solo puede ser una lista
# insert(i, x) inserta un item x en la posición i
# len(nameL) para saber el tamaño de la lista
# remove(x) remueve el primer elemento x que aparece, si no existe dará error
# pop([i]) remueve un item en la posicion dada y lo retorna. Si no se pasa un indice (i) retornará el ultimo item de la lista
# index(i) retorna el elemento que esta en la posicion i
# count(x) retorna las veces que se repite el elemento x
# sort() ordena los elementos de la lista
# reverse() cambia las posiciones de la lista, del ultimo a primero y el primero a ultimo


## TUPLAS
# Definicion de tuplas
# t = (1,2,3)

# Acceder a una tupla
# t[1] ó t[1:2]

# NOTA: LAS TUPLAS NO POSEEN MECANISMOS DE MODIFICACION A TRAVÉS DE FUNCIONES, ADEMÁS DE QUE SON INMUTABLES, 
# ES DECIR QUE SUS VALORES NO PUEDEN CAMBIAR Y TIENEN UN TAMAÑO FIJO


## DICCIONARIOS
# Son matrices asociativas (Hash map), aquí se relacionan clave y un valor

# Definicion
# d = {"Colombia": "peso", "brasil": "Real"} 
# la clave puede ser de cualquier tipo, y su valor es inmutable


# FUNCIONES
# Definicion
"""
    def nameFunc(parametros):
        CUERPO DE LA FUNCION
"""

# Se pueden devolver varios valores a la vez

# EXCEPCIONES
# Definicion
"""
    try:
        cuerpo de lo que se va a ejecutar
    except:
        cuerpo excepcion
    else:
        si no salta la excepción
"""

# CLASES
# EL NOMBRE DE LA CLASE DEBE SER EN MAYUSCULA
# Todo lo que este identado dentro de la definicion de la clase, será parte de ella
#Definicion
"""
    class CLASE1:
        atr1
        atr2
        ....
    Instancias
        ...
"""

#Creacion de un objeto
# obj =  NOMBRECLASE()
""" CLASE VACÍA    
class Usuario:
    def __init__(self, nom, ape):
        pass
"""
"""
class Usuario:
    def __init__(self, nom, ape):
        self.nom = nom
        self.ape = ape
        
    def imp_datos(self):
        print("Nombre:",self.nom,"\nApellido:",self.ape)

obj = Usuario("Alejandro","Fernandez")
obj.imp_datos()
""" #FUNCIONA

# EJERCICIO 1

class Perro:
    def __init__(self, nombre, raza, edad):
        self.nombre = nombre
        self.raza = raza
        self.edad = edad
        
    def impInfoPerro(self, cont):
        print("INFO PERRO #",(cont+1))
        print("\nNombre:", self.nombre,"\nRaza:", self.raza,"\nEdad:",self.edad)


cantPerros = int(input("Ingrese la cantidad de perros: "))
contador = 0
objDogDef = Perro("a","a",0)
ListDogs = [objDogDef]

while contador < cantPerros:
    print("PERRO #",(contador+1),"\n")
    objDog = Perro(input("Ingrese el nombre del perro: "), input("Ingrese la raza del perro:"), int(input("Ingrese la edad del perro ")))
    ListDogs.insert(contador,objDog)
    contador += 1
contador = 0
while contador < cantPerros:
    ListDogs[contador].impInfoPerro(contador)
    contador += 1
    

    


