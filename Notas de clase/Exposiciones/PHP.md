# PHP
Al inicio se llama Personal Home Page tools

- 1997: Se reescreibió el núcleo de php (3.0), enfocado en desarrollo web
- 2000: El uso mejoró con php (4.0)
- 2004: Se enfocaba más en la POO (PHP 5.0)
- 2014: Mayor eficiencia, mayor seguridad y un uso más sencillo

## Características
- Lenguaje intuitivo y simplificado
- Útil para el manejo de una gran cantidad de datos
- Variedad de herramientas para el aprendizaje (XAMPP, Etc)
- Permite la POO
- Permite la separación de estructura, debido al modelo vista controlador
- Fácil integración con HTML
- Multiplataforma
- Es requisito para muchas empresas

## Entorno que lo soporta
- Bases de datos (My SQL, MariaDB, PostgreSQL)
- Servidor Web (Apache http server, NGINX, Microsoft IIS)
- Editores en la web (Cloud9, codeanywhere)

## Editores de texto
- Visual Studio
- Atom

## Sintaxis
### NOTA:
- Todas las instrucciones deben terminar en ';'
- Los booleanos no distinguen entre mayuscula o minisculas
- El máximo valor numérico es 10^308
- Se puede utilizar el ampersand para alterar el valor de la variable

- Etiquetas para conocer si es HTML o PHP
    - <?php (Abertura)
    - ?> (Cerradura)
- Escribir en pantalla:
    - echo
    - print
- Declarar variable:
    $NombreVar = "Not Now";
    $NombreVar2 = 182;
- Cadenas:
    Se manejan como vectores de caracteres
    $saludo = "Pepito"
    $saludo[6] = "s"

    ``` 
        Consola:
        Pepitos
    ```
- Matrices:
    unset($nomMatriz[posicionEliminar]): Función para eliminar un elemento de una matriz
    
- setType($nomVar,"nuevoTipo"): Función para cambiar un tipo de una variable
- Estructuras de control:
    if(condicion){
        ...
    }
    elseif (condicion){

    }
    else{

    }
- While:
    while(condicion){
        ...
    }
- Do while:
    do{
        ...
    }while(condicion);
- For:
    for(inicializacion var; condicion; incremento){
        ...
    }
- Foreach:
    Sintaxis 1
    foreach(nombreArray as $valor){
        ...
    }
    Sintaxis 2
    foreach(nombreArray as $key => $valor){
        ...
    }
- Switch:
    switch(opcion){
        case v1:
            ...
            break;
        case v2:
            ...
            break;
        case vN:
            ...
            break;
        default:
            ...
            break;
    }
- Clases:
    class nomClase{
        public $atr1;
        private $atr2;

        ...
    }
- Funciones:
    function nombreFunction(){
        ...
    }