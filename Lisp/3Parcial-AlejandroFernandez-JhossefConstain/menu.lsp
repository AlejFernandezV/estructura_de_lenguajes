;EL -JTimana
(load "1registroBanco.lsp")
(load "2registroCliente.lsp")
(load "3buscarBanco.lsp")

(loop
      
	(print " ===========================================")
	(print " |              ADMIN BANCOS               |")
	(print " ===========================================")
	(format t" ~%") 
	(print "   1.   Registrar banco ")
	(print "   2.   Registrar cliente ")
	(print "   3.   Buscar banco por NIT ")
	(print "   4.   Buscar cliente y banco en especifico ")
	(print "   5.   Consultar cantidad de clientes femeninos ")
	(print "   6.   Salir.")
	(format t" ~%")
	(print "   Digite la opcion:")
    (setq opcion (read))	
  	(case opcion
		(1 (registrar_banco))
		(2 (registrar_cliente))
		(3 (buscar_banco_por_nit))
		(4 (print "mundo"))
		(5 (print "mundo"))
	    (otherwise nil)
	)
	(when (eq opcion 6) (print "fin programa")(return))
  )




