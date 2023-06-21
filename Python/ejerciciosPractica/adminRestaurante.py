import os
class Empleado:
    id = 0
    nombre = ""
    apellido = ""
    sueldo = 0
    
    def __init__(self, id, nombre, apellido, sueldo):
        self.id = id
        self.nombre = nombre
        self.apellido = apellido
        self.sueldo = sueldo
        
    def imprimirInfo(self):
        print("Id: ",)
        print("Nombre Completo: ",self.nombre," ",self.apellido)
        print("Sueldo: ",self.sueldo)
        
class Plato:
    id = 0
    nombre = ""
    tipo = ""
    precio = 0.0
    
    def __init__(self, id, nombre, tipo, precio):
        self.id = id
        self.nombre = id
        self.tipo = tipo
        self.precio = precio
        
    def imprimirInfo(self):
        print("Id: ",self.id)
        print("Nombre: ",self.nombre)
        print("Tipo: ",self.tipo)
        print("Precio: ",self.precio)
        
class Restaurante:
    Platos = [Plato()]
    Empleados = [Empleado()]
    dir = ""
    nombre = ""
    telefono = 0
    
    def __init__(self, dir, nombre, telefono):
        self.dir = dir
        self.nombre = nombre
        self.telefono = telefono
        
    def llenarEmpleados(self, cantidad):
        for i in range(1,cantidad+1):
            print("--------- EMPLEADO #",i," ---------")
            id = int(input("Ingrese el id: "))
            nombre = input("Ingrese el nombre: ")
            apellido = input("Ingrese el apellido: ")
            sueldo = float(input("Ingrese el sueldo: "))
            emp = Empleado(id,nombre,apellido,sueldo)
            
            self.Empleados.append(emp)
        self.Empleados.sort()
            
    def imprimirEmpleados(self):
        for i in self.Empleados:
            print("--------- EMPLEADO #",i," ---------")
            i.imprimirInfo
            print("-----------------------------------")
            
    def llenarPlatos(self, cantidad):
        for i in range(1,cantidad+1):
            print("---------- PLATO #",i," ----------")
            id = int(input("Ingrese el id: "))
            nombre = input("Ingrese el nombre: ")
            tipo = input("Ingrese el tipo: ")
            
            precio = float(input("Ingrese el precio:"))
            
            plato = Plato(id, nombre, tipo, precio)
            self.Platos.append(plato)
            
        self.Platos.sort()
            
    def imprimirPlatos(self):
        for i in self.Platos:
            print("------------ PLATO #",i," ------------")
            i.imprimirInfo
            print("--------------------------------------")

def ordenar_por_id(lista):
    return lista

def switch(valor, restaurantes):
    if valor == 1:
        os.system("cls")
        print("----------------- OPCION 1 -----------------")
        rstNombre = input("Ingrese el nombre del restaurante: ")
        rstDir = input("Ingrese la direccion del restaurante: ")
        rstTelefono = int(input("Ingrese el telefono del resturante: "))
        rest = Restaurante(rstDir, rstNombre, rstTelefono)
        
        restaurantes.append(rest)
        
        print("Se agregó con exito el restaurante ",rstNombre)
        
        
    elif valor == 2:
        
    elif valor == 3:
        
    else:
        
def impresionMenu():
    print("-------------------- MENU --------------------")
    print("1. Crear Restaurante")
    print("2. Llenar empleados de restaurante en específico")
    print("3. Llenar platos de restaurante en específico")
    print("4. Imprimir informacion restaurante en específico.")

def menu():
    restaurantes = [Restaurante()]
    while(True):
        impresionMenu()
        op = int(input("Ingrese una opcion: "))
        switch(op)
        
    