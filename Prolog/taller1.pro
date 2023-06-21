%TALLER 1
%PUNTO 1

enfermo(gustavo,gripe).
enfermo(natalia,hepatitis).
enfermo(juanes,intoxicacion).
enfermo(francia,hepatitis).
enfermo(sofia,gripe).

sintoma(fiebre,gripe).
sintoma(cansancio, hepatitis).
sintoma(dolor_estomago, intoxicacion).
sintoma(cansancio, gripe).

suprime(aspirina,fiebre).
suprime(lomotil,dolor_estomago).


farmaco_alivia(Farmaco,Enfermedad):- suprime(Farmaco,Sintoma), sintoma(Sintoma,Enfermedad).

toma_farmaco(Persona):- enfermo(Persona,Enfermedad), sintoma(Sintoma,Enfermedad),suprime(Farmaco,Sintoma).

farmaco_para(Persona,F):- enfermo(Persona,Enfermedad), sintoma(S,Enfermedad), suprime(F,S).

siente(Persona,Sintoma):- enfermo(Persona,Enfermedad), sintoma(Sintoma,Enfermedad).


%PREGUNTAS
%?- read(P,"digite una persona"),write(P),write(" padece "),enfermo(P,E), write(E), nl.
%?- enfermo(X,gripe), write(X), nl,ln.
%?- siente(X,dolor_estomago), write(X), nl,ln.
%?- siente(X,cansancio), write(X), nl,ln.
?- read(P,"digite una persona"), write("el farmaco "), farmaco_para(P,F),write(F),write(" aliviara a "), write(P), nl.



