/*
multiplicar([Cabeza|[]],Cabeza).
multiplicar([Cabeza|Cola],M):- multiplicar(Cola,P), M is Cabeza * P. 

?- multiplicar([2,3,5,6,7,8],M), write(M), nl.


contar([],0).
contar([Cabeza|Cola],S):- contar(Cola,A), S is A + 1.

?- contar([],S),write(S),nl.
*/

/*
posicion(X,[X|_],1).
posicion(X,[Cabeza|Cola],Pos):- posicion(X,Cola,P), Pos is P+1.

?- posicion(2,[1,2,3,6,9,7],P), write(P), nl.
*/

/*
Insertar un elemento al iniico de la lista
insertar(X,ListaV,[X|ListaV]).
?-read(X), insertar(X,[1,5,6,7],Lista), write(Lista).
*/


/*
Insertar un elemento al final de la lista
insertar(X,[],[X]).
insertar(X,[Cabeza|Cola],[Cabeza|NCola]):- insertar(X,Cola,NCola).
?- insertar(9,[1,5,6,7],Lista), write(Lista).
*/


/*
Conocer el ultimo elemento de una lista

ultimo([X],X).
ultimo([Cabeza|Cola],Elemento):- ultimo(Cola,Elemento).

?- ultimo([1,5,6,8,10,89],Elemento), write(Elemento), nl.
*/

/*
Cuantos numeros en la lista son impares
impar([],0).
impar([Cabeza|Cola],Contador):- impar(Cola,Aux), Cabeza mod 2=\=0, Contador is Aux + 1.
?-impar([1,3,5,6,9,4,8],Cont), write(Cont),nl.
*/

contar_impares([], 0).  
contar_impares([Cabeza|Cola], Contador) :- es_impar(H),contar_impares(Cola, ContadorRestante),Contador is ContadorRestante + 1.       
contar_impares([_|Cola], Contador) :- contar_impares(Cola, Contador).
es_impar(X) :- X mod 2 =\= 0.
?-contar_impares([1,3,5,6,9,4,8],Cont), write(Cont),nl.