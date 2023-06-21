%%% Ejemplo1

%%% Hechos
%%%mujer(jimena).
%%%mujer(maria).

%?- mujer(jimena).

%%%---- EJERCICIO 1
%Deduzca el estado del tiempo a partir 
%de como se ncuentta el suelo

%%%estadotiempo(tiempo_lluvioso, humedo).
%%%estadotiempo(tiempo_soleado, seco).

%%%?- estadotiempo(X, seco), write(x).

%Determine si un numero es par

%%%es_par(N):- N mod 2 =:= 0.

%%%?- es_par(3).

%Un alumno gana la asignatura si la nota definitiva es mayor o
%igual a 3. Crear base del conocimiento que involucre alumnos,
%asignatura vista y nota obtenida.
/*
alumno(alejandro,estructuras,2.5).
alumno(pedro,estructuras,4).
alumno(julian,bases_de_datos,2).
alumno(camilo,bases_de_datos,5).
alumno(pedro,bases_de_datos,3.8).
alumno(brayan,poo,4).
alumno(jesus,poo,1).

gano_asignatura(X, Asignatura):- alumno(X, Asignatura, Nota), Nota >= 3.

?- gano_asignatura(pedro, Asignatura), write(Asignatura), nl, ln.
*/

%%%humano(felipe).
%%%humano(jimena).
%%%humano(matias).
%%%humano(joaquin).

%Reglas
%%%mortal(X):-humano(X).

%Quien es humano?
%?- humano(X), write(X), nl, ln.

%Quien es mortal?
%?- mortal(X), write(X), nl,ln.

%Carlos es mortal?
%%%?- mortal(carlos).

/*
gusta(luisa, pedro).
gusta(pedro, luisa).
gusta(carlos, patricia).
gusta(patricia, pedro).
gusta(luisa,carlos).

son_novios(X,Y):- gusta(X,Y), gusta(Y,X).

?-son_novios(X,Y), write(X), write(Y), nl,ln.
*/
/*
se_respeta(andres).
se_respeta(maria).
se_respeta(david).
se_respeta(cristian).
se_respeta(carlos).

respeta_otros(andres,carlos,no).
respeta_otros(maria,carlos,si).
respeta_otros(cristian,carlos,si).
respeta_otros(carlos,cristian,si).

es_respetado(X):- se_respeta(X),respeta_otros(X, Condicion), Condicion = si.
es_respetado_por(Z):- respeta_otros(Z,carlos,si).

%?- es_respetado(maria, Y).

?- es_respetado_por(Z), write(Z), nl, ln.

*/
/*
tiene_libro(andres,si).
tiene_libro(maria,no).
tiene_libro(david,no).
tiene_libro(cristian,si).
tiene_libro(carlos,si).
tiene_libro(jimena,no).


prestar_libro(X):- tiene_libro(X,si).

?- prestar_libro(X), write(X), nl, ln.
*/

/*
profesor(chaustre,poo).
profesor(cobos,introduccion).
profesor(zambrano,tc).

estudiante(jhossef,poo).
estudiante(alejandro,poo).
estudiante(julian,poo).
estudiante(camilo,tc).
estudiante(camilo,introduccion).

es_profesor_de(E,Profesor):- estudiante(E,Materia),profesor(Profesor,Materia).

%?- es_profesor_de(camilo, Profesor), write(Profesor), nl, ln.

?- profesor(chaustre,poo).
*/

% EJERCICIO 1 PARCIAL

paciente(maria,pension,popayan).
paciente(lucia,activo,silvia).
paciente(javier,pension,piendamo).
paciente(julio,pension,popayan).
paciente(oscar,activo,silvia).
paciente(juan,activo,popayan).

atiende(jose,maria).
atiende(jose,lucia).
atiende(carlos,javier).
atiende(carlos,julio).
atiende(pedro,oscar).
atiende(pedro,juan).

atencion(Paciente,Doctor):- paciente(Paciente,Actividad,Locacion), atiende(Doctor,Paciente).

paciente_actividad(X,Actividad,Localidad):- paciente(X,Actividad,Localidad), atiende(Doctor,X).

%?-atencion(X,carlos), write(X), nl, ln. 
%?- atencion(maria,jose). 
%?- atencion(julio,X), write(X),nl,ln.
%?-paciente_actividad(X,pension,popayan), write(X),nl,ln.
%?-paciente_actividad(X,activo,silvia), write(X),nl,ln.


% EJERCICIO 2
persona(sofia).
persona(diego).
persona(valentina).
persona(ricardo).
persona(ana).
persona(marcos).

amor_comprension(sofia,no).
amor_comprension(diego,si).
amor_comprension(ricardo,si).
amor_comprension(ana,no).
amor_comprension(marcos,no).

violencia(sofia,familiar).
violencia(sofia,social).
violencia(diego,familiar).
violencia(ricardo,familiar).
violencia(ana,familiar).
violencia(ana,social).
violencia(marcos,familiar).
violencia(marcos,social).

complejo(sofia,consigo_mismo).
complejo(sofia,fisico).
complejo(diego,consigo_mismo).
complejo(valentina,fisico).
complejo(ricardo,economico).
complejo(ana,consigo_mismo).
complejo(ana,economico).
complejo(marcos,consigo_mismo).
complejo(marcos,fisico).

maltrato(sofia,golpes).
maltrato(diego,golpes).
maltrato(valentina,palabras).
maltrato(ricardo,palabras).
maltrato(ana,palabras).
maltrato(marcos,golpes).
maltrato(marcos,palabras).

infancia_traumatica(X):- violencia(X,familiar), violencia(X,social).
es_acomplejada(X):- complejo(X,Condicion),complejo(X,consigo_mismo),complejo(X,fisico);complejo(X,economico).
es_maltratada(X):- maltrato(X,golpes);maltrato(X,palabras).

criminal_potencia(X):-infancia_traumatica(X),es_acomplejada(X),es_maltratada(X),amor_comprension(X,no).


?-criminal_potencia(ricardo).





