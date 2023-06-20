#| Carga del archivo donde estan definidas las estructuras cliente y cliente |#
(load "defEstructuras.lsp")
#| Carga del archivo donde estan creados los vectores para bancos y clientes|#
(load "crearVectores.lsp")
#| Carga del archivo donde se buscará el banco a asociar |#
(load "3buscarBanco.lsp")

(setq posC 0)
(setq generos '((0 "FEMENINO") (1 "MASCULINO") (2 "NO DEFINIDO")))

(defun registrar_cliente ()
    (setq cliente (make-Cliente))
    (format t "~%")
    (format t "----------------------------------------")
    (format t "\n\t\tRegistro de cliente~%")
    (format t "----------------------------------------")
    (if (< posC 3) 
        (progn
            (print "Ingrese los datos del cliente...")
            (loop
                (print "Nombre del banco al que estara asociado el cliente:")
                (setq nom_banco (read))
                (setq posBanco (buscar_banco_por_nombre nom_banco))
                (if (< posBanco 0) (print "Ese banco no existe, intentelo de nuevo..."))
                (when (/= posBanco -1)(return))
            )
            
            (loop
                (print "Numero de identificacion :")
                (setf (Cliente-numId cliente) (read))
                (cond 
                    ((< (Cliente-numId cliente) 0) (print "La identificacion no puede ser negativa"))
                )
                (when (>= (Cliente-numId cliente) 0)(return))
            )  
            (print "Nombre :")
            (setf (Cliente-nombreCliente cliente) (read))

            (loop
                (print "------------Generos disponibles------------\n") 
                (print "- 0: FEMENINO\n")
                (print "- 1: MASCULINO\n")
                (print "- 2: NO DEFINIDO\n")
                (print "Ingrese el numero del genero :")
                (setq num_gen (read))
                (setf (Cliente-genero cliente) (cdr (assoc num_gen generos)))
                (if (and (>= num_gen 0) (<= num_gen 2))
                    (progn 
                        (format t "\n El genero ingresado fue ~S" (Cliente-genero cliente))
                        (return)
                    )
                    (print "Ese genero no es valido")
                )
            )

            (setf bancoAsociar (aref v_bancos posBanco))
            (setf (aref (Banco-vec_clientes bancoAsociar) posC) cliente)
            (setq posC (+ posC 1))              
        )
        (print "No hay espacio disponible en el vector de clientes")
    )
)