#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_ESTUDIANTES 1
#define MAX_PROGRAMAS 1

typedef struct {
	int codigo;
	char nombre[30];
	char apellido[30];
	char genero;
} estudiante;

typedef struct{
	int progCod;
	char progNombre[30];
	int progAnio;
	estudiante vecEstudiantes[MAX_ESTUDIANTES];
} progAcademico;

typedef struct{
	int facCod;
	char facNombre[30];
	progAcademico vecProgramas[MAX_PROGRAMAS];
} facultad;

void llenarVecEstudiantes(estudiante *vecEstudiantes){
	
	for(int i=0; i < MAX_ESTUDIANTES; i++){
		printf("----- ESTUDIANTE #%d -----\n",i+1);
		do{
			printf("Ingrese el codigo del estudiante: ");
			scanf("%d", &vecEstudiantes[i].codigo);
			
			if(vecEstudiantes[i].codigo < 0){
				printf("Error! Codigo negativo\n");
				system("pause");
				system("cls");
			}
		} while(vecEstudiantes[i].codigo < 0);
		
		printf("Ingrese el nombre del estudiante: ");
		scanf("%s",vecEstudiantes[i].nombre);
		
		printf("Ingrese el apellido del estudiante: ");
		scanf("%s",vecEstudiantes[i].apellido);
		
		do{
			printf("Ingrese el genero del estudiante: ");
			scanf(" %c", &vecEstudiantes[i].genero);
			
			//strcmp(&vecEstudiantes[i].genero,"f")==1 && strcmp(&vecEstudiantes[i].genero, "m")== 1
			
			if(vecEstudiantes[i].genero!='f' && vecEstudiantes[i].genero!='m'){
				printf("Error! El genero no es f o m\n");
				system("pause");
				system("cls");
				printf("----- ESTUDIANTE #%d -----\n",i+1);
			}
		} while(vecEstudiantes[i].genero!='f' && vecEstudiantes[i].genero!='m');
		system("cls");
		
		
	}
}

void imprimirEstudiantes(estudiante *vecEst){
	for(int i=0; i < MAX_ESTUDIANTES; i++){
		printf("INFO ESTUDIANTE #%d\n", i+1);
		printf("CODIGO: %d \n", vecEst[i].codigo);
		printf("NOMBRE: %s \n", vecEst[i].nombre);
		printf("APELLIDO: %s \n", vecEst[i].apellido);
		printf("GENERO: %c \n", vecEst[i].genero);
		printf("----------------------------------------\n");
	}
}
	
void llenarProgramas(progAcademico *programa, estudiante vecEstdnts[]){
	do{
		printf("Ingrese el codigo del programa: ");
		scanf("%d", &programa->progCod);
		
		if(programa->progCod < 0){
			printf("Error! Codigo negativo\n");
			system("pause");
			system("cls");
		}
	} while(programa->progCod < 0);
	
	printf("Ingrese el nombre del programa: ");
	scanf("%s", programa->progNombre);
	
	do{
		printf("Ingrese el anio de creacion del programa: ");
		scanf("%d", &programa->progAnio);
		
		if(programa->progAnio < 0){
			printf("Error! Anio negativo\n");
			system("pause");
			system("cls");
		}
	} while(programa->progAnio < 0);
	
	llenarVecEstudiantes(vecEstdnts);

}

void imprimirProgramas(progAcademico *vecProgs){
	for(int i=0; i < MAX_PROGRAMAS; i++){
		printf("Informacion del Programa %s\n", vecProgs[i].progNombre);
		printf("Codigo: %d\n", vecProgs[i].progCod);
		printf("Anio creacion: %d\n", vecProgs[i].progAnio);
		printf("------- Informacion de los estudiantes -------\n");
		imprimirEstudiantes(vecProgs[i].vecEstudiantes);
	}
}

void llenarFacultad(facultad *fac){
	do{
		printf("Ingrese el codigo de la facultad: ");
		scanf("%d", &fac->facCod);
		
		if(fac->facCod < 0){
			printf("Error! Codigo negativo\n");
			system("pause");
			system("cls");
		}
	} while(fac->facCod < 0);
	
	printf("Ingrese el nombre de la facultad: ");
	scanf("%s", fac->facNombre);
	
	printf("Ingrese los datos de los programas academicos\n");
	for(int i=0; i < MAX_PROGRAMAS; i++){
		printf("----- PROGRAMA #%d -----\n",i+1);
		llenarProgramas(&fac->vecProgramas[i],fac->vecProgramas[i].vecEstudiantes);
	}
}
	
void imprimirFacultad(facultad *fac){
	printf("------- Informacion facultad %s -------\n",fac->facNombre);
	printf("\tCODIGO: %d\n",fac->facCod);
	printf("---------------------------------------\n");
	imprimirProgramas(fac->vecProgramas);
}
	
int impProgmsAnio(progAcademico *prog){
	int contProgs = 0;
	for(int i = 0;i < MAX_PROGRAMAS; i++){
		if(prog[i].progAnio == 1998){
			contProgs++;
		}
	}
	return contProgs;
}
	
int contarGeneroMasc(estudiante estudiantesPrograma[]) {
	int cont = 0;
	for (int i = 0; i < MAX_ESTUDIANTES; i++) {
		if (estudiantesPrograma[i].genero == 'm') {
			cont++;
		}
	}
	return cont;
}
	
progAcademico encontrarProg(progAcademico *vec,char *nombre){
	progAcademico aux;
	for(int i=0; i< MAX_PROGRAMAS; i++){
		if(strcmp(vec[i].progNombre, nombre)== 0){
			aux = vec[i];
		}
	}
	return aux;
}

int main(int argc, char *argv[]) {
	facultad fac;
	llenarFacultad(&fac);
	imprimirFacultad(&fac);
	char nombreProg[30];
	
	int cantProgsAnio = impProgmsAnio(fac.vecProgramas);
	printf("Cantidad de años que fueron creado en 1998: %d\n",cantProgsAnio);
	
	printf("Ingrese el nombre de un programa para contar sus hombres: ");
	scanf("%s", nombreProg);
	
	int cantidadMasc = contarGeneroMasc(encontrarProg(fac.vecProgramas, nombreProg).vecEstudiantes);
	printf("Cantidad de hombres en el programa %s es: %d\n",nombreProg,cantidadMasc);
	
	
	
	return 0;
}

