package main

import (
	"bufio"
	"fmt"
	"math/rand"
	"os"
	"strings"
)

func main() {
	// palabras disponibles para adivinar
	palabras := []string{"gato", "perro", "elefante", "leon", "jirafa", "rinoceronte", "serpiente"}

	// elegir una palabra al azar de la lista
	palabra := palabras[rand.Intn(7)]

	// crear la cadena para mostrar el progreso del jugador
	progreso := strings.Repeat("_", len(palabra))

	// cantidad de intentos
	intentos := 7

	// entrada del usuario
	scanner := bufio.NewScanner(os.Stdin)

	// juego principal
	for intentos > 0 {
		fmt.Println("Adivina una letra de la palabra:", progreso)
		fmt.Printf("Tienes %d intentos restantes\n", intentos)

		// leer la entrada del usuario
		scanner.Scan()
		letra := scanner.Text()

		// verificar si la letra está en la palabra
		if strings.Contains(palabra, letra) {
			// reemplazar los guiones bajos por la letra adivinada
			for i := 0; i < len(palabra); i++ {
				if string(palabra[i]) == letra {
					progreso = progreso[:i] + letra + progreso[i+1:]
				}
			}

			// verificar si el jugador adivinó toda la palabra
			if progreso == palabra {
				victoria(palabra)
				return
			}
		} else {
			// si no esta la letra entonces le avisa al usuario
			fmt.Println("La letra no está en la palabra")
			intentos--
		}
	}

	// si llega aquí, el jugador no adivinó la palabra
	derrota(palabra)
}

func victoria(palabra string) {
	fmt.Println("**************************************")
	fmt.Println("* ¡Felicidades! ¡Adivinaste la palabra\n! *")
	fmt.Println("**************************************")
	fmt.Println("La palabra era: ", palabra)
}
func derrota(palabra string) {
	fmt.Println("*****************************************")
	fmt.Println("* ¡Lo siento, perdiste! La palabra era: ", palabra, "*")
	fmt.Println("****************************************")

}
