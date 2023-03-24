# VISUAL BASIC

## Historia
- Creado en 1991 por microsoft

## Caracteristicas
- Lenguaje multiparadigma
- Lenguaje de alto nivel
- Case sensitive (Distingue entre mayusculas y minisculas)
- Interoperable
- Capacidad de acceso a base de datos

## Entorno
- Visual Studio

## Sintaxis
- Creacion de variables:
    Dim nameVar As typeVar (Integer, String, Boolean, Double, Single)
- Comentarios:
    'Contenido de comentario
- Impresion por consola:
    Console.Writeline("...")
- Lectura por consola:
    Dim varEntrada As Integer = Console.ReadLine()

## Operadores
### Aritméticos
-
### Lógicos
-

## Sentencia if

### NOTA:
Lo que está en corchetes ('[]') es opcional

```
If [(] condicion [)] Then
    ...
[ElseIf condicion Then]
    ...
[Else]
    ...
End If
```

## Sentencia select
```
Select Case (variable)
    case 1:
        ...
    case 2:
        ...
    case n:
        ...
    case else:
        ...
End Select
```

## Sentencia while
```
While [(] condicion [)]
    ...
End While
```

## Sentencia do while
```
Do
    ...
Loop While [(] condicion [)]
```

## Sentencia for
### NOTA:
Por defecto el paso en el que se realiza el for es 1

```
For contador = valorInicial To valorFinal 
    ...
Next
```

## Sentencia For Each
```
For Each elemento In vectorARecorrer
    Console.WriteLine(vectorARecorrer(elemento))
Next
```

## Declaración de matrices
### NOTA:
Las matrices pueden ser n dimensionales
```
Dim nombreMatriz(indice1, indice2, ..., indiceN) As tipoDato
```

## Declaración de Colecciones
### NOTA:
La posición de la colección empiza en 1, a diferencia de los vectores que empiezan en 0.

```
Dim nombreColeccion As New Collection()
```

## Clases:
```
Public Class nombreClase
    Private nombre As String

    'Constructor
    Public Sub New(ByVal prmNombre As String)
        Me.nombre = prmNombre
    End Sub

    Public Property Nombre()
End Class
```
s
## Usos y campos de acción del lenguaje
- Desarrollo movil
- Desarrollo de aplicaciones móviles
- Automatización de tareas
- Desarrollo de aplicaciones de escritorio