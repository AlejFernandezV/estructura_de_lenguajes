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
