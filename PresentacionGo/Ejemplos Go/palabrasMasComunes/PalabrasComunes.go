package main

//un programa que lea un archivo de texto,
//cuente la frecuencia de cada palabra en el archivo
//y luego imprima las 10 palabras más comunes y su frecuencia.

//LIBRERÍAS
import (
	"bufio"   //Leer archivo linea por linea
	"fmt"     //Imprimir salida por consola
	"os"      //Abrir el archivo
	"sort"    //Ordenar lista de las palabras
	"strings" //Manipulacion de cadenas
)

func main() {

	// Abrir el archivo de texto

	//La función os.Open retornará dos valores un descriptor de archivo
	//y un valor de error si se presenta alguno al momento de abrirlo
	//Archivo 1
	file, err := os.Open("archivo1.txt")

	//Archivo 2
	//file, err := os.Open("archivo2.txt")

	//Si existe algún error se presentará por pantalla
	//nil: Nulo
	if err != nil {
		fmt.Println("Error: ", err)
		return
	}
	defer file.Close() //Se cierrá el archivo luego de leerlo

	// Crear un mapa para almacenar la frecuencia de cada palabra
	// Donde string será el valor será entero y la clave será un string
	// valor: veces que se repite
	// clave: palabra
	wordFreq := make(map[string]int)

	// Leer el archivo línea por línea
	scanner := bufio.NewScanner(file)

	//Recorremos el archivo linea por linea con el scanner.Scan()
	for scanner.Scan() {

		// Convertir la línea a minúsculas y dividirla en palabras
		// strings.Fields retorna una lista de todas las palabras de la linea del archivo
		// strings.ToLower convierte todas las palabras a minúscula

		words := strings.Fields(strings.ToLower(scanner.Text()))

		// El caracter especial '_' se utiliza para ignorar el índice en el bucle for
		// esto se hace en este caso porque solo nos interesá la palabra
		for _, word := range words {
			// Actualizar la frecuencia de cada palabra en el mapa
			wordFreq[word]++
		}
	}

	// Crear una slice de tipo struct para almacenar las palabras y su cantidad de veces repetida
	// para luego poder organizarla

	//Slice:  es similar a un arreglo, pero a diferencia de un arreglo,
	//el tamaño de un slice puede cambiar dinámicamente durante la ejecución del programa.
	var freqList []struct {
		word string
		freq int
	}

	// Se recorrerá cada valor con su respectiva clave del mapa para poder luego agregarlo a la lista
	// anteriormente mencionada
	for word, freq := range wordFreq {

		//append(dondeSeGuardará, elementoQueSeGuardará)
		//Se crea un struct anónimo debido a que el elemento que se va a guardar debe ser de igual
		//tipo que el lugar donde se guardará.

		freqList = append(freqList, struct {
			word string
			freq int
		}{word, freq}) //word y freq serán los valores que se extraen del recorrido del mapa
		//estos se almacenarán en la structura
	}

	// Ordenar la lista de frecuencias en orden descendente
	//func(i,j int) es una función anónima de comparación, donde devolverá true
	//si el valor que se encuentra en la posicion i es mayor a lo que está en la posicion j

	//Ventaja de utilizar una función anónima:
	//Son útiles cuando la función que estamos pasando como argumento es
	//relativamente simple y no necesitamos volver a utilizarla en otro lugar del código.
	//Además, evitan la necesidad de definir una función por separado,
	//lo que puede hacer el código más conciso y fácil de leer.

	sort.Slice(freqList, func(i, j int) bool { return freqList[i].freq > freqList[j].freq })

	// Imprimir las 10 palabras más comunes y su frecuencia
	fmt.Println("Las 10 palabras mas comunes son:")
	for i := 0; i < 10 && i < len(freqList); i++ {
		fmt.Printf("%v: %v\n", freqList[i].word, freqList[i].freq)
	}
}
