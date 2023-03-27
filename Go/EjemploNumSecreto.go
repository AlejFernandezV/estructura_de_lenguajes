package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	rand.Seed(time.Now().UnixNano()) // Inicializar la semilla del generador de números aleatorios

	target := rand.Intn(100) + 1 // Generar un número aleatorio entre 1 y 100
	fmt.Println("Adivina el número secreto entre 1 y 100.")

	for i := 0; i < 10; i++ { // Permitir al usuario 10 intentos para adivinar el número secreto
		fmt.Printf("Intento %d: ", i+1)
		var guess int
		fmt.Scan(&guess) // Leer la entrada del usuario

		if guess < target {
			fmt.Println("Muy bajo.")
		} else if guess > target {
			fmt.Println("Muy alto.")
		} else {
			fmt.Println("¡Adivinaste!")
			return
		}
	}

	fmt.Println("¡Te quedaste sin intentos! El número secreto era", target)
}
