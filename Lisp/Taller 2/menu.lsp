;EL -JTimana
(load "0crear.lsp")
(load "1adicionar.lsp")
(load "2consultar.lsp")
(load "3imprimir.lsp")

(crear)


(loop
      
	(print " ===========================================")
	(print " |         VETERINARIA PETS POPAYAN        |")
	(print " ===========================================")
	(format t" ~%") 
	(print "   1.   Registrar turno ")
	(print "   2.   Consultar todos los turnos ")
	(print "   3.   Imprimir ticket ")
	(print "   4.   Salir.")
	(format t" ~%")
	(print "   Digite la opcion:")
      (setq opcion (read))	
  	(case opcion
		(1 (mensaje))
		(2 (print "hola"))
		(3 (print "mundo"))
	    (otherwise nil)
	)
	(when (eq opcion 4) (print "fin programa")(return))
)




