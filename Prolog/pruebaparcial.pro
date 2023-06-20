iguales([],[]).
iguales([Cab|Col1],[Cab|Col2]):-iguales([Col1],[Col2]).
?- iguales([1,2],[1,2]).