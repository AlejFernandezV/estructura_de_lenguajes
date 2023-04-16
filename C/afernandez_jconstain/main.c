#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* Programa elaborado por:  ALEJANDRO FERNANDEZ Y JHOSSEF CONSTAÍN*/
#define MAX_EMPS 2
#define MAX_PLTS 2
#define MAX_REST 1

typedef struct{
	int pltCod;
	char pltNombre[30];
	char pltTipo[15];
} plato;

typedef struct{
	int empId;
	char empNombre[30];
	char empApellido[30];
}empleado;

typedef struct{
	int resNit;
	char resNombre[30];
	char resDirec[30];
	empleado vecEmps[MAX_EMPS];
	plato vecPlatos[MAX_PLTS];
}restaurante;

void llenarVecPlatos(plato *vecPlatos){
	for(int i=0; i < MAX_PLTS; i++){
		printf("----- PLATO #%d -----\n",i+1);
		do{
			
			printf("Ingrese el codigo del plato: ");
			scanf("%d",&vecPlatos[i].pltCod);
			
			if(vecPlatos[i].pltCod < 0){
				printf("Error! Codigo negativo");
			}
		}while(vecPlatos[i].pltCod < 0);
		
		printf("Ingrese el nombre del plato: ");
		scanf("%s",vecPlatos[i].pltNombre);
		
		do{
			printf("Ingrese el tipo de del plato: ");
			scanf("%s",vecPlatos[i].pltTipo);
			
			if(strcmp(vecPlatos[i].pltTipo, "entrada") == 0 && strcmp(vecPlatos[i].pltTipo, "fuerte") == 0){
				printf("Error! El tipo no es entarda o fuerte");
			}
		}while(strcmp(vecPlatos[i].pltTipo, "entrada") == 0 && strcmp(vecPlatos[i].pltTipo, "fuerte") == 0);	
	}
	printf("NOTA: Solo se pueden agregar %d platos.\n", MAX_PLTS);
}

void llenarVecEmpleados(restaurante *res){
	
	for(int i=0; i < MAX_EMPS; i++){
		printf("----- EMPLEADO #%d -----\n",i+1);
		do{
			printf("Ingrese el id del empleado: ");
			scanf("%d", &res->vecEmps[i].empId);
			
			if(res->vecEmps[i].empId < 0){
				printf("Error! Codigo negativo\n");
				
			}
		} while(res->vecEmps[i].empId< 0);
		
		printf("Ingrese el nombre del empleado: ");
		scanf("%s",res->vecEmps[i].empNombre);
		
		printf("Ingrese el apellido del estudiante: ");
		scanf("%s",res->vecEmps[i].empApellido);
	}
	
	printf("NOTA: Solo se pueden agregar %d empleados.\n", MAX_EMPS);
}

void ingresarRestaurante(restaurante *res){
	
		do{
			printf("Ingrese el NIT del restaurante: ");
			scanf("%d", &res->resDirec);
			
			if(res->resNit < 0){
				printf("Error! El NIT es negativo.\n'");
			}
		}while(res->resNit < 0);
		
		printf("Ingrese el nombre del restaurante: ");
		scanf("%s", res->resNombre);
		
		printf("Ingrese la direccion del restaurante: ");
		scanf("%s",res->resDirec);
		//fgets(res[i].resDirec, strlen(res[i].resDirec), stdin);	
	
}

void buscarRestaurante(int nit, restaurante rest){

		if(rest.resNit == nit){
			printf("Hola");
			llenarVecEmpleados(rest.vecEmps);
		}
		else{
			printf("No se encontró\n");
		}

}

void imprimirPlatos(plato vecPlts[]){
	printf("----------- INFO PLATOS -----------\n");
	for(int i=0; i < MAX_PLTS;i++){
		printf("Plato #%d\n",i+1);
		printf("Codigo: %d\n", vecPlts[i].pltCod);
		printf("Nombre: %s\n", vecPlts[i].pltNombre);
		printf("Tipo: %s\n", vecPlts[i].pltTipo);
		printf("-------------------------------\n");
	}
}

void imprimirEmpleados(empleado *vecEmps){
	printf("----------- INFO EMPLEADOS -----------\n");
	for(int i=0; i < MAX_EMPS;i++){
		printf("Empleado #%d\n",i+1);
		printf("Id: %d\n", vecEmps[i].empId);
		printf("Nombre: %s\n",vecEmps[i].empNombre);
		printf("Apellido: %s\n",vecEmps[i].empApellido);
	}
}

void imprimirDatosRest(restaurante *rest){
	printf("--- Informacion restaurante %s ---\n", rest->resNombre);
	printf("\t NIT: %d\n", rest->resNit);
	printf("\t DIRECCION: %s\n", rest->resDirec);
	
	/*
	imprimirEmpleados(rest->vecEmps);
	imprimirPlatos(rest->vecPlatos);
	*/
}

int main(int argc, char *argv[]) 
{
	int opc,n;
	restaurante res;
  	int nit;
  	
  	do{
    	system("cls"); 
    	printf("MENU DE OPCIONES\n\n");
      	printf(" 1. Crear restaurante \n");
      	printf(" 2. Ingresar empleados de un restaurante\n");
      	printf(" 3. Ingresar platos de un restaurante\n");
      	printf(" 4. Mostrar los datos de un restaurante\n");
      	printf(" 5. Salir\n\n ");      
      	printf("Digite la opcion: ");
      	scanf("%d",&opc);
      	switch(opc){
        	case 1: 
            	system("cls");//función para limpiar pantalla
            	
            	ingresarRestaurante(&res);
            	//getche();                                                
            	break;
                 
        	case 2: 
            	system("cls");
            	printf("OPCION 2 LLENAR EMPLEADOS \n");
             	
             	printf("Ingrese el NIT del restaurante para agregarle los empleados: ");
             	scanf("%d", nit);
             	
             	buscarRestaurante(nit, res);
             	
             	nit = 0;
            	break;
             
        	case 3: 
            	system("cls");
            	printf("OPCION INGRESAR PLATOS\n");
				llenarVecPlatos(res.vecPlatos);

            	//getche();
            	nit = 0;
				break;
            	
            case 4:
            	system("cls");
				printf("OPCION IMPRIMIR RESTAURANTE\n");
             	printf("Ingrese el NIT del restaurante para agregarle los empleados: ");
             	scanf("%d", nit);

            	//getche();
            	nit = 0;
            	break;
            case 5:
            	system("cls");

				printf("Ha salido del programa\n");
            	//getche();
            	break;
             
        	default:
        		printf("Error! Opcion incorrecta.");
        		break;
      	}
  	}while(opc!=4);
  	system("PAUSE");	 
  	return 0;
}