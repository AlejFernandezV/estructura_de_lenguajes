%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
%  PARCIAL 2
%  Elaborado por: Alejandro Fernández Vitoncó y Jhossef Nicolás Constain Nieves  %
%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Aqui definición de hechos y reglas, funciones básicas y recursivas
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% HECHOS Y REGLAS PARA EL MENÚ LISTAS

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%REGLAS PARA BUSCAR UN ELEMENTO EN UNA LISTA%
%Basica
buscar(X,[X|Cola]).
%Recursiva
buscar(X,[Cabeza|Cola]):- 
	buscar(X,Cola).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%REGLAS PARA CONCATENAR 2 LISTAS
%Basica
concatenar([],Lista,Lista).
%Recursiva
concatenar([Cabeza|Cola1],Cola2,[Cabeza|Resultante]):- 
	concatenar(Cola1,Cola2,Resultante).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%REGLAS PARA INVERTIR UNA LISTA%
%Basica
invertir([], []).
%Recursiva
invertir([Cabeza|Cola], ListaInvertida) :-
    	invertir(Cola, Resultado),
	concatenar(Resultado,[Cabeza],ListaInvertida).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%REGLAS PARA CONTAR LAS REPETICIONES DE UN ELEMENTO EN UNA LISTA%
%Basica
reps(_, [], 0).
%Recursiva cuando se encuentra el número
reps(Numero, [Numero|Cola], Cantidad) :-
    reps(Numero, Cola, Subcantidad),
    Cantidad is Subcantidad + 1.
%Recursiva cuando NO se encuentra el número
reps(Numero, [_|Cola], Cantidad) :-
    reps(Numero, Cola, Cantidad).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% HECHOS Y REGLAS PARA EL MENÚ LOGICO

%%%%%%%%%%%%%%%%%%%%%%% HECHOS %%%%%%%%%%%%%%%%%%%%%%%
%DIRECTORES
dirige(jj_abrams, star_trek).
dirige(guillermo_del_toro, hellboy).
dirige(gabriele_muccino, siete_almas).
dirige(michael_bay, transformers).
dirige(jon_favreu, iron_man).

%ACTORES
actua(daniel_radcliffe, harry_potter).
actua(tom_hanks, angeles_y_demonios).
actua(megan_fox, transformers).
actua(brad_pitt, benjamin_button).
actua(downey_jr, iron_man).
actua(will_smith, siete_almas).

%PELICULAS
genero(harry_potter, aventura).
genero(star_trek, ciencia_ficcion).
genero(angeles_y_demonios, suspenso).
genero(transformers, accion).
genero(benjamin_button, drama).
genero(siete_almas, drama).
genero(iron_man, ciencia_ficcion).
genero(hellboy, ciencia_ficcion).

%%%%%%%%%%%%%%%%%%%%%%% REGLAS %%%%%%%%%%%%%%%%%%%%%%%
%REGLA PARA CONOCER SI EL DIRECTOR Y LA PELICULA EXISTE
existe_dir_peli(Director,Pelicula):-
	dirige(Director,Pelicula).

%PUNTO 1
pregunta1(Director,Pelicula,Actor,Genero):-
	genero(Pelicula,Genero),
	dirige(Director,Pelicula),
	actua(Actor,Pelicula).

%PUNTO 2
pregunta2(Director,Pelicula,Genero,Actor):-
	dirige(Director,Pelicula),
	genero(Pelicula,Genero),
	actua(Actor,Pelicula).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


?-window(_, _,crea_ventana(),"Aplicación",150, 50, 450, 450), 
  window_brush(_, rgb(16, 184, 222)),update_window(_).

%Creacion del menú
crea_ventana(init):- 
menu(pop_up, _,_,archivo(_),"&ARCHIVO"), 
menu(pop_up, _,_,listas(_),"&LISTAS"),
menu(pop_up, _,_,logico(_),"&LOGICO").

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% OPCION ARCHIVO
archivo(init):- 
menu(normal, _,_,imprimir_info(_),"&Informacion"),
menu(normal, _,_,cerrar_ven(_),"&Salir").

cerrar_ven(press):- close_window(X).

% Ventana nom_autores
imprimir_info(press):-
window_brush(_, rgb(0, 128, 128)),
text_out(45,70,"Autores:"),
text_out(50,120,"Alejandro Fernandez Vitonco"),
text_out(90,140,"<alejfernandez@unicauca.edu.co>"),
text_out(50,160,"Jhossef Nicolas Constain"),
text_out(90,180,"<jhniconstain@unicauca.edu.co>").


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Submenus LISTAS
listas(init):-	
menu(normal, _,_,invertir_lista(_),"&Invertir lista"),
menu(normal, _,_,concatenar(_),"&Concatenar listas"),
menu(normal, _,_,reps_elemento(_),"&Repeticiones elemento").

% SUBFUNCIONES LISTAS
% subfuncion para invertir una lista
invertir_lista(press):- 
window( _, _, ventana_invertir(_), "Invertir lista", 150,50,450,450).

ventana_invertir(init):-
window_brush(_, rgb(16, 184, 222)),
button(_,_,boton_invertir(_),"&Invertir",320,35,95,30).

% BOTON INVERTIR
boton_invertir(press):-
	read(L1,"Digite la lista a invertir :"),
	%Etiqueta para la lista a invertir
     text_out(50,120,"La lista a invertir es:"),
     %Caja de texto con el nombre de G_lista
     edit(G_lista,_,edit_func(_),"",235,120,150,28),
	set_text(print(L1),G_lista),
     text_out(50,200,"La lista invertida es:"),
  	invertir(L1,Resultado),
	text_out(235,200, print(Resultado)).

% subfuncion para concatenar listas

concatenar(press):- 
window( _, _, ventana_concatenar(_), "Concatenar listas", 150,50,450,450).

ventana_concatenar(init):-
window_brush(_, rgb(16, 184, 222)),
button(_,_,boton_concatenar(_),"&Concatenar listas",280,35,125,30).

% BOTON CONCATENAR
boton_concatenar(press):-
	read(L1,"Digite la lista 1 :"),
     read(L2,"Digite la lista 2 :"),
	%Etiqueta para la lista 1
     text_out(50,120,"La Lista 1 es:"),
     %Caja de texto con el nombre de G_lista
     edit(G_lista,_,edit_func(_),"",235,120,150,28),
	set_text(print(L1),G_lista),
	%Etiqueta para la lista 2
	text_out(50,140,"La Lista 2 es:"),
     %Caja de texto con el nombre de G_lista
     edit(G_lista,_,edit_func(_),"",235,140,150,28),
	set_text(print(L2),G_lista),
     text_out(50,200,"La lista nueva es:"),
  	concatenar(L1,L2,ListaResultante),
	text_out(235,200, print(ListaResultante)).

% subfuncion para las repeticiones de un elemento en una lista
reps_elemento(press):-
window( _, _, ventana_reps_elemento(_), "Repeticiones de un elemento", 150,50,450,450).

ventana_reps_elemento(init):-
window_brush(_, rgb(16, 184, 222)),
button(_,_,boton_reps(_),"&Numero de repeticiones",225,35,180,30).

boton_reps(press):-
	read(Lista,"Digite la lista en la que se va a buscar:"),
	read(Num,"Digite el elemento a contar:"),
	%Etiqueta para la lista de busqueda
  	text_out(50,100,"La Lista de busqueda es:"),
	%Caja de texto con el nombre G_lista
 	edit(G_lista,_,edit_func(_),"",235,100,150,28),
	set_text(print(Lista),G_lista),
	text_out(50,140,"Elemento a contar es:"),
	text_out(235,140, print(Num)),
	(buscar(Num,Lista)->
		text_out(50,200,"Numero de repeticiones: "),
		reps(Num,Lista,Cant),
		text_out(235,200, print(Cant))
	else
		message( "Informacion", "El elemento no se encontro en la lista.",s)).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Creacion submenú LOGICO
logico(init):- 
menu(normal, _, _,hollywood(_),"&Hollywood").

hollywood(press):-
window( _, _, ventana_hollywood(_), "Preguntas Hollywood", 150,50,450,450).

ventana_hollywood(init):-
window_brush(_, rgb(16, 184, 222)),
button(_,_,boton_pregunta1(_),"&Determinar actor",5,10,180,30),
button(_,_,boton_pregunta2(_),"&Informacion director",240,10,180,30).
	

boton_pregunta1(press):-
	read(Director,"Ingrese el director:"),
	read(Pelicula,"Ingrese la pelicula:"),
	%Etiqueta para el director
	text_out(70,160,"El director es: "),
	text_out(235,160,print(Director)),
	%Etiqueta para la pelicula
	text_out(70,180,"La pelicula es: "),
	text_out(235,180, print(Pelicula)),
	(existe_dir_peli(Director,Pelicula)->
		(pregunta1(Director,Pelicula,Actor,Genero)->
			text_out(70,200,"Actor: "),
			text_out(235,200, print(Actor)),
			text_out(70,220,"Genero pelicula: "),
			text_out(235,220, print(Genero))
		 else
			message( "Informacion", "El director o la pelicula no tiene actor asociado.",s))
	else
		message( "Informacion", "El director o la pelicula no existen.",s)).

boton_pregunta2(press):-
	read(Director,"Ingrese el director: "),
	%Etiqueta para el director
  	text_out(70,160,"El director es: "),
	text_out(235,160,print(Director)),
	(existe_dir_peli(Director,P)->
		(pregunta2(Director,Pelicula,Genero,Actor)->
			text_out(70,180,"Pelicula:"),
			text_out(235,180, print(Pelicula)),
			text_out(70,220,"Genero pelicula: "),
			text_out(235,220, print(Genero)),
			text_out(70,200,"Actor: "),
			text_out(235,200, print(Actor))			
		 else
			message( "Informacion", "El director no tiene actor asociado.",s))
	else
		message( "Informacion", "El director no existe.",s)).




