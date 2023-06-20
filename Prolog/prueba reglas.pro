%%%%%%%%%%%%%%%%%% HECHOS %%%%%%%%%%%%%%%%%%
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

%%%%%%%%%%%%%%%%%% REGLAS %%%%%%%%%%%%%%%%%%
%REGLA PARA CONOCER SI LA INFORMACION EXISTE
existe_pregunta1(Director,Pelicula):-
	dirige(Director,Pelicula).

existe_pregunta2(Director):-
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

?- existe_pregunta1(hola,Y).

%OK ?- pregunta1(jon_favreu,iron_man,Act,Gen), 
%	write(Act), nl, write(Gen),nl.	

%OK ?- pregunta2(michael_bay,P,G,A), 
%write(P), nl, write(G), nl, write(A), nl.

