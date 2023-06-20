#|Solicitar el nombre de un estudiante y las notas definitivas en cada corte. Decir
si el estudiante (con su nombre respectivo) ganó o perdió la materia. Además,
imprima al final las notas obtenidas en cada corte junto con la nota definitiva.

Tenga en cuenta que el 1er corte tiene un peso del 35%, el 2do corte del 35%
y el 3er corte del 30%. La nota definitiva se calcula como la suma de los
cálculos anteriores.

La materia se gana cuando la nota es mayor o igual a 2.96. Realice esta
primera versión sin funciones. |#

(print "Digite su nombre: ")
(setq nombre(read))
(print "Digite su nota del primer corte: ")
(setq nota1(read))
(print "Digite su nota del segundo corte: ")
(setq nota2(read))
(print "Digite su nota del tercer corte: ")
(setq nota3(read))

(setq defnota1 (* nota1 0.35))
(setq defnota2 (* nota2 0.35))
(setq defnota3 (* nota3 0.3))
(setq definitiva (+ defnota1 defnota2 defnota3))

(if (>= definitiva 2.96) 	(format t "El estudiante ~S ha ganado la materia. ~%" nombre) 
							(format t "El estudiante ~S ha perdido la materia. ~%" nombre) 
							
(format t "Primer corte: ~D" nota1) 
(format t "Segundo corte: ~D" nota2) 
(format t "Tercer corte: ~D" nota3)
(format t "Definitiva: ~D" definitiva)  