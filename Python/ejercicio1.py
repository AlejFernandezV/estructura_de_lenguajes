import math

#imprimir los numeros pares del 1 al 10
print("EJERCICIO 1")
for i in range(1,11,1):
    if i%2==0:
        print(i)

#Solicitar 3 numeros e netros e indicar cual es el número central, basado en la recta numérica        
print("EJERCICIO 2")
num1, num2, num3 = int(input("Ingrese el numero 1: ")), int(input("Ingrese el numero 2: ")), int(input("Ingrese el numero 3: "))

if (num1 > num2 and num1 < num3) or (num1 < num2 and num1 > num3):
    numMed = num1
elif num2 > num1 and num2 < num3:
    numMed = num2
elif num3 > num1 and num3 < num2:
    numMed = num3
else: numMed = 0

print("El numero central es ", numMed)
