package main

import (
	"fmt"
	"math/rand"
	"time"
)

var rondasPerdidas int

func main() {
	var tablero [4][4]int
	var tableroPintar [4][4]int
	var fila1, columna1, fila2, columna2 int
	llenarTablero(&tablero)
	pintarTablero(tablero)
	pintarTableroPintar(&tableroPintar)

	fmt.Println("Bienvido a MemoTest!")
	fmt.Println("Encuentra las parejas y gana!")

	for {
		for {
			fmt.Println("Digite la primera fila y columna: ")
			for {
				fmt.Println("Digite el numero de fila (opcion 0,1,2,3): ")
				fmt.Scan(&fila1)
				if fila1 >= 0 && fila1 <= 3 {
					break
				} else {
					fmt.Println("Fila mal ingresada")
				}
			}
			for {
				fmt.Println("Digite el numero de columna (opcion 0,1,2,3): ")
				fmt.Scan(&columna1)
				if columna1 >= 0 && columna1 <= 3 {
					break
				} else {
					fmt.Println("Columna mal ingresada")
				}
			}
			if validarMismaFilaColumna(&tableroPintar, fila1, columna1) == 1 {
				break
			} else {
				fmt.Println("La posicion ya fue ingresada.")
			}
		}
		mostrarFilaColumna(tablero, &tableroPintar, fila1, columna1)
		for {
			fmt.Println("Digite la segunda fila y columna: ")
			for {
				fmt.Println("Digite el numero de fila (opcion 0,1,2,3): ")
				fmt.Scan(&fila2)
				if fila2 >= 0 && fila2 <= 3 {
					break
				} else {
					fmt.Println("Fila mal ingresada")
				}
			}
			for {
				fmt.Println("Digite el numero de columna (opcion 0,1,2,3): ")
				fmt.Scan(&columna2)
				if columna2 >= 0 && columna2 <= 3 {
					break
				} else {
					fmt.Println("Columna mal ingresada")
				}
			}
			if validarMismaFilaColumna(&tableroPintar, fila2, columna2) == 1 {
				break
			} else {
				fmt.Println("La posicion ya fue ingresada.")
			}
		}
		validarFilaColumna(tablero, &tableroPintar, fila1, columna1, fila2, columna2)
		if validarTablero(tableroPintar) == 10 {
			fmt.Println("Ganaste el juego")
			break
		}
		if rondasPerdidas == 4 {
			fmt.Println("Perdiste el juego")
			break
		}
	}
}

func llenarTablero(tablero *[4][4]int) {
	// Sembrar la generación de números aleatorios
	rand.Seed(time.Now().UnixNano())

	numeros := []int{1, 2, 3, 4, 5, 6, 7, 8}
	// Barajar los números aleatoriamente
	rand.Shuffle(len(numeros), func(i, j int) {
		numeros[i], numeros[j] = numeros[j], numeros[i]
	})

	index := 0
	for fila := 0; fila < 4; fila++ {
		for columna := 0; columna < 4; columna++ {
			tablero[fila][columna] = numeros[index]
			index++
			if index >= 8 {
				index = 0
			}
		}
	}
}

func pintarTablero(tablero [4][4]int) {
	for fila := 0; fila < 4; fila++ {
		for columna := 0; columna < 4; columna++ {
			fmt.Print(tablero[fila][columna], " ")
		}
		fmt.Println()
	}
}

func pintarTableroPintar(tableroPintar *[4][4]int) {
	for fila := 0; fila < 4; fila++ {
		for columna := 0; columna < 4; columna++ {
			fmt.Print(tableroPintar[fila][columna], " ")
		}
		fmt.Println()
	}
}

func mostrarFilaColumna(tablero [4][4]int, tableroPintar *[4][4]int, fila1 int, columna1 int) {
	tableroPintar[fila1][columna1] = tablero[fila1][columna1]
	pintarTableroPintar(tableroPintar)
}

func validarFilaColumna(tablero [4][4]int, tableroPintar *[4][4]int, fila1 int, columna1 int, fila2 int, columna2 int) {
	if tablero[fila1][columna1] == tablero[fila2][columna2] {
		tableroPintar[fila2][columna2] = tablero[fila2][columna2]
		fmt.Println("Pareja encontrada!")
		pintarTableroPintar(tableroPintar)
	} else {
		tableroPintar[fila1][columna1] = 0
		fmt.Println("Sigue intentando")
		rondasPerdidas++
		pintarTableroPintar(tableroPintar)
	}
}

func validarMismaFilaColumna(tableroPintar *[4][4]int, fila int, columna int) int {
	if tableroPintar[fila][columna] != 0 {
		return 0
	} else {
		return 1
	}
}

func validarTablero(tableroPintar [4][4]int) int {
	var numCeros int
	for fila := 0; fila < 4; fila++ {
		for columna := 0; columna < 4; columna++ {
			if tableroPintar[fila][columna] == 0 {
				numCeros++
			}
		}
	}
	return numCeros
}
