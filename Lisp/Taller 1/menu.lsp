;Lab. EL -JTimana


(defun mensaje()
  (print "buenos dias")
) 


(loop
      
	(print " ===========================================")
	(print " |                M E N U                  |")
	(print " ===========================================")
	(format t" ~%") 
	(print "   1.   Ejercicio 1 ")
	(print "   2.   Ejercicio 2 ")
	(print "   3.   Media de una lista")
	(print "   4.   Cuantos ceros impares y pares en una lista")
	(print "   5.   Salir.")
	(format t" ~%")
	(print "   Digite la opcion:")
      (setq opcion (read))	
  	(case opcion
		(1 (mensaje))
		(2 (print "hola"))
		(3 (print "mundo"))
		(4 ceroparimpar)
	    (otherwise nil)
	)
	(when (eq opcion 4) (print "fin programa")(return))
)

(defun ceroparimpar()
	(print "Digite los elementos de la lista:")
	(setq lista (read))

	(setq contz 0)
	(setq contp 0)
	(setq conti 0)

	(if (null lista)(print "la lista esta vacia, no hay valores para mostrar")
		(progn
			(loop 
				(setq elemento (car lista))
				(cond
					((zerop elemento)(setq contz (+ contz 1)))
					((evenp elemento)(setq contp (+ contp 1)))    ;((= (mod elemento 2) 0)(setq contp (+ contp 1)))
					((oddp elemento)(setq conti (+ conti 1)))    ;((= (mod elemento 2) 1)(setq conti (+ conti 1)))
				)  
				(setq  lista (cdr lista))
				(when (null lista)(return))
			)
			(format t "Cantidad de ceros: ~D ~%" contz)
			(format t "Cantidad de pares: ~D ~%" contp)
			(format t "Cantidad de impares: ~D ~%" conti)
		)
	)
)




