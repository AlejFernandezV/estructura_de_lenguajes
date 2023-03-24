#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

typedef struct{
	char placa[10];
	char marca[20];
	int modelo;
}  Carro;

int main(int argc, char *argv[]) {
	
	Carro carro;
	
	printf("Ingrese la placa del carro: ");
	scanf("%s",carro.placa);
	
	printf("Ingrese la marca del carro: ");
	scanf("%s", carro.marca);
	
	
	do{
		printf("Ingrese el modelo del carro: ");
		scanf("%d", &carro.modelo);
		
		if(carro.modelo > 2024){
			printf("Error! El modelo no existe, Ingreselo de nuevo.\n");
		}
	}while(carro.modelo > 2024);
	
	printf("Placa: %s, Marca: %s, Modelo: %d.\n", carro.placa, carro.marca, carro.modelo);
	
	
	return 0;
}