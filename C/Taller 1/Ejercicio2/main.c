#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */
typedef struct {
	int codigo;
	char nombre [15];
	char apellido[15];
	char genero[2];
} Estudiante;

typedef struct{
	int codigo;
	char nombre[20];
	int anio;
	Estudiante vecEstud[3];
} Programa;

void ingresarPrograma(Programa *prmProg){
	printf("Digite el codigo del programa: \n");
	scanf("%d", &prmProg->codigo);
	
	printf("Digite el nombre del programa: \n");
	scanf("%s", prmProg->nombre);
	
	printf("Digite el anio de creacion del programa: \n");
	scanf("%d", &prmProg->anio);
	
	system("cls");
	
	printf("INGRESO DE LOS ESTUDIANTES \n");
	llenarVector(prmProg->vecEstud);
}

void llenarVector(Estudiante *prmVecEst){
	for(int i=0; i < 3; i++){
		
		do{
			printf("Digite el codigo del estudiante #%d: ", i+1);
			scanf("%d", &prmVecEst[i].codigo);		
			
			if(prmVecEst[i].codigo < 0){
				printf("Error! El codigo es negativo");
				system("pause");
				system("cls");
			}
			
		}while(prmVecEst[i].codigo < 0);
		
		
		printf("Digite el nombre del estudiante #%d: ", i+1);
		scanf("%s", prmVecEst[i].nombre);
		
		printf("Digite el apellido del estudiante #%d: ", i+1);
		scanf("%s", prmVecEst[i].apellido);
		
		do{
			
			printf("Digite el genero del estudiante #%d: ", i+1);
			scanf("%s", prmVecEst[i].genero);
			
			if(strcmp(&prmVecEst[i].genero, "f") == 1 && strcmp(&prmVecEst[i].genero, "m") == 1){
				printf("Error! El genero no es m o f\n");
			}
		}while(strcmp(&prmVecEst[i].genero, "f") == 1 && strcmp(&prmVecEst[i].genero, "m") == 1);
		
		system("cls");
	}
}

void imprimirVector(Estudiante vecEst[]){
	for(int i=0; i < 3; i++){
		printf("INFO ESTUDIANTE #%d\n", i+1);
		printf("CODIGO: %d \n", vecEst[i].codigo);
		printf("NOMBRE: %s \n", vecEst[i].nombre);
		printf("APELLIDO: %s \n", vecEst[i].apellido);
		printf("GENERO: %s \n", vecEst[i].genero);
		printf("----------------------------------------\n");
	}
}

void imprimirPrograma(Programa *Prog){
	printf("Informacion del Programa %s\n", Prog->nombre);
	printf("Codigo: %d\n", Prog->codigo);
	printf("Anio creacion: %d\n", Prog->anio);
	printf("------- Informacion de los estudiantes -------\n");
	imprimirVector(Prog->vecEstud);
}

int main(int argc, char *argv[]) {
	
	Programa prog;
	
	ingresarPrograma(&prog);
	
	imprimirPrograma(&prog);
	
	
	return 0;
}