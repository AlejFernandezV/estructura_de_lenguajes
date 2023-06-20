;Lab. EL -JTimana
(load "crear.lsp")
(load "llenar.lsp")
(load "imprimir.lsp")

(crearPersona)
(loop
      
	(print " ===========================================")
	(print " |                M E N U                  |")
	(print " ===========================================")
	(format t" ~%") 
	(print "   1.   Solicitar Datos Persona ")
	(print "   2.   Imprimir Datos persona ")
	(print "   3.   Ejercicio 3 ")
	(print "   4.    Salir.")
	(format t" ~%")
	(print "   Digite la opcion:")
      (setq opcion (read))	
  	(case opcion
		(1 (llenarDatos))
		(2 (imprimirDatos))
		(3 (print "mundo"))
	    (otherwise nil)
	)
	(when (eq opcion 4) (print "fin programa")(return))
  )




