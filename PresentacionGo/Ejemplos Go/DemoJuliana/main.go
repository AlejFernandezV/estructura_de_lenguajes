package main

import (
	"encoding/json" // Para el tratamiento de datos JSON
	"fmt"           // Entrada y salida estandar
	"io"            // Entrada y salida primitiva
	"io/ioutil"     // Utilidades Entrada y salida primitiva
	"net/http"      // Conexión http
	"os"            // Funcionalidades del sistema operativo
	"strconv"       // Tratamiento de cadenas de caracteres
) // Librerias a utilizar

type Todos struct {
	Pokemones []Pokemon `json:"pokemon_entries"` // Se marca de esta manera para que la librería convierta de JSON a la lista Pokemones
} // Estructura para guardar todos los datos de los pokemones

type Pokemon struct {
	Codigo   int     `json:"entry_number"` // Se marca de esta manera para que la librería convierta de JSON al entero Codigo
	Especies Especie `json:"pokemon_species"`
} // Estructura para definir los datos de un pokemon

type Especie struct {
	Nombre string `json:"name"`
} // Estructura para definir el nombre de la especie

type Forma struct {
	Rasgos Rasgos `json:"sprites"`
}

type Rasgos struct {
	Frontal string `json:"front_default"` // URL donde se encuntra la frontal del pokemon, para descargar la imagen
}

func main() {
	response, err := http.Get("http://pokeapi.co/api/v2/pokedex/kanto/") // Se hace una petición http
	if err != nil {
		fmt.Println("Error, no se pudo obtener los datos de los pokemones.")
		os.Exit(1)
	}

	responseData, err := ioutil.ReadAll(response.Body) // Se lee el cuerpo de la petición http
	if err != nil {
		fmt.Println("Error, leer los datos de los pokemones.")
		os.Exit(1)
	}
	var todos Todos
	// Se pasa el struct todos a la funcion Desenmascarar para obtener los datos de JSON al struct
	json.Unmarshal(responseData, &todos)

	// Imprimir el número de pokemones
	fmt.Println(len(todos.Pokemones))
	menu(todos)

}

func menu(todos Todos) {
	opcion := 0
	var err error

	for {

		fmt.Println("----------Pokemones----------")
		fmt.Println("1. Buscar Pokemon por nombre.")
		fmt.Println("2. Buscar Pokemon por código.")
		fmt.Println("3. Salir")

		var linea string
		fmt.Scanln(&linea) // Leer desde consola

		opcion, err = strconv.Atoi(linea) // Se pasa lo obtenido a una variable entera

		if err != nil {
			fmt.Println("Error, la opcion ingresada no es un número.")
			continue
		}

		switch opcion {
		case 1:
			buscarPokemonNombre(todos)
		case 2:
			buscarPokemonCodigo(todos)
		case 3:
			fmt.Println("Adiós...")
			return
		default:
			fmt.Println("Error, la opcion ingresada no está en el menú.")
		}

	}
}

func buscarPokemonNombre(todos Todos) {
	var nombre string
	fmt.Println("Ingrese el nombre del pokemón a buscar: ")
	fmt.Scanln(&nombre) // Leer desde consola

	for i := 0; i < len(todos.Pokemones); i++ {
		if nombre == todos.Pokemones[i].Especies.Nombre {
			mostrarInformacionPokemon(todos.Pokemones[i])
			return
		}
	}

	fmt.Println("El nombre ingresado no se encuentra.")
}

func buscarPokemonCodigo(todos Todos) {
	var linea string
	fmt.Println("Ingrese el código del pokemón a buscar: ")
	fmt.Scanln(&linea)

	codigo, err := strconv.Atoi(linea)

	if err != nil {
		fmt.Println("Error, el código ingresado no es un número.")
		return
	}

	for i := 0; i < len(todos.Pokemones); i++ {
		if codigo == todos.Pokemones[i].Codigo {
			mostrarInformacionPokemon(todos.Pokemones[i])
		}
	}
}

func mostrarInformacionPokemon(pokemon Pokemon) {
	fmt.Println("Código:", pokemon.Codigo, "Nombre:", pokemon.Especies.Nombre)
	descargarImagen(pokemon)
}

func descargarImagen(pokemon Pokemon) {
	/* Se adiciona el codigo del pokemon a la direccion web para obtener
	   los datos de la Forma para hacer la petición http
	*/
	response, err := http.Get("https://pokeapi.co/api/v2/pokemon-form/" + strconv.Itoa(pokemon.Codigo))

	if err != nil {
		fmt.Println("Error, No se encontró la imagén del Pokemon.")
		return
	}

	responseData, err := ioutil.ReadAll(response.Body) // Se lee el cuerpo de la petición http

	var forma Forma
	// Se pasa el struct todos a la funcion Desenmascarar para obtener los datos de JSON al struct
	json.Unmarshal(responseData, &forma)

	fmt.Println("Descargando Imagen...")
	nombre, err := descargarArchivoDeInternet(forma.Rasgos.Frontal, pokemon.Especies.Nombre)
	if err == nil {
		fmt.Printf("Se descargó como %s", nombre)
	} else {

		fmt.Printf("Error: %v", err)
	}

}

func descargarArchivoDeInternet(url, nombre string) (string, error) {
	nombreArchivoSalida := nombre + ".png"
	respuesta, err := http.Get(url) // Peticion http a la url de la imagen
	if err != nil {
		return "", err
	}
	archivoSalida, err := os.Create(nombreArchivoSalida)
	if err != nil {
		return "", err
	}
	// Se pasa la información de la respuesta al archivo creado
	_, err = io.Copy(archivoSalida, respuesta.Body)

	respuesta.Body.Close()
	archivoSalida.Close()
	return nombreArchivoSalida, err
}
