
dicCorregimientos = {10:"Calibio",20:"Cajete",30:"Quintana",40:"Samanga",50:"Figueroa"}

dicEtnias = {1:"yanaconas",2:"kokonukos",3:"totoroes",4:"paeces"}

class Estudiante:
    codEst = 0
    nameEst = ""
    apeEst = ""
    codCorregimiento = 0
    nameCorregimiento = ""
    codEtnia = 0
    edad = 0
    
    def __init__(self, codEst, nameEst, apeEst, codCorregimiento, nameCorregimiento, codEtnia, edad):
        self.codEst = codEst
        self.nameEst = nameEst
        self.apeEst = apeEst
        self.codCorregimiento = codCorregimiento
        self.nameCorregimiento = nameCorregimiento
        self.codEtnia = codEtnia
        self.edad = edad

        
lstEstudiantes = []

def crearEstudiante():
    codEst = int(input("Ingrese el codigo del estudiante: "))
    if(verificarValorEntero(codEst) == False):
        while(codEst <= 0):
            codEst = int(input("Error! Ingresa de nuevo el codigo: "))
    
    nomEst = input("Ingrese el nombre del estudiante: ")
    apeEst = input("Ingrese el apellido del estudiante: ")
    
    print("[Corregimientos disponibles]")
    print(dicCorregimientos)
    codCorre = int(input("Ingrese el codigo del corregimiento: "))
    
    while((codCorre in dicCorregimientos.keys()) == False):
        print("[Corregimientos disponibles]")
        print(dicCorregimientos)
        codCorre = int(input("Error! Ingrese un codigo de corregimiento válido: "))
    
    print("[Etnias disponibles]")
    print(dicEtnias)
    codEtnia = int(input("Ingrese el codigo de la etnia: "))
    
    while((codEtnia in dicEtnias.keys()) == False):
        print("[Etnias disponibles]")
        print(dicEtnias)
        codEtnia = int(input("Error! Ingrese un codigo de etnia válido: "))
        
    edad = int(input("Ingrese la edad del estudiante: "))
    while(edad <= 0):
        edad = int(input("Error! Ingrese una edad válida para el estudiante: "))
    
    est = Estudiante(codEst, nomEst, apeEst, codCorre, dicCorregimientos[codCorre], codEtnia, edad)
    return est
        
def verificarValorEntero(valor):
    if(valor <= 0):
        return False
    return True    

def imprimirInfoEstds():
    print("{:<20} {:<20} {:<20} {:<20} {:<20} {:<20} {:<20}".
          format("CODIGO", "NOMBRE COMPLETO", "COD CORREG", "NOM CORREG", "COD ETNIA", "NOMBRE ETNIA", "EDAD"))
    for est in lstEstudiantes:
        etnia = obtener_valor(dicEtnias, est.codEtnia)
        print("{:<20} {:<20} {:<20} {:<20} {:<20} {:<20} {:<20}".
              format(str(est.codEst),str(est.nameEst+" "+est.apeEst),str(est.codCorregimiento),str(est.nameCorregimiento),str(est.codEtnia),str(etnia),str(est.edad)))
        
def obtener_clave(diccionario, valor):
    for clave, valor_dicc in diccionario.items():
        if valor_dicc == valor:
            return clave
    return None

def obtener_valor(diccionario, clave):
    for clave_dicc, valor_dicc in diccionario.items():
        if clave_dicc == clave:
            return valor_dicc
    return None 
        
cantEstds = int(input("Ingrese la cantidad de estudiantes: "))

while(cantEstds <= 0):
    print("Error! la cantidad de estudiantes es 0 o menor.")
    cantEstds = int(input("Ingrese la cantidad de estudiantes: "))

for i in range (1,cantEstds+1):
    print("-------------- INGRESO ESTUDIANTE #",i," --------------")
    lstEstudiantes.append(crearEstudiante())
    print("SE AGREGÓ CON ÉXITO EL ESTUDIANTE ",i)  

imprimirInfoEstds()

print("[Etnias disponibles]")
print(dicEtnias)
nomEliminarEtnia = input("Ingrese el nombre de la etnia a eliminar: ")

while((nomEliminarEtnia in dicEtnias.values()) == False):
    nomEliminarEtnia = input("Error! Ingrese un nombre de etnia válido: ")

claveEliminar = obtener_clave(dicEtnias, nomEliminarEtnia)

for estud in lstEstudiantes:
    if estud.codEtnia == claveEliminar:
        lstEstudiantes.remove(estud)
        print("Estudiante",estud.nameEst ,"eliminado con exito")
        
imprimirInfoEstds()