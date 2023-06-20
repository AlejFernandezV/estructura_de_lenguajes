#| Carga del archivo donde estan definidas las estructuras cliente y cliente |#
(load "defEstructuras.lsp")
(load "crearVectores.lsp")

(setq posB 0)
(crear_vec_bancos)
;Se crea y se inicializa un vector clientes para ser almacenado 
;en vec_clientes dentro de la estrcutura cliente
(crear_vec_clientes)

(defun registrar_banco()
    (setq banco (make-Banco))
    (format t "~%")
    (format t "----------------------------------------")
    (format t "\n\t\tRegistro de Banco~%")
    (format t "----------------------------------------")
    (if (< posB 2) 
        (progn
           ;Se piden y se ingresan los datos para la estructura 
            (print "Ingrese los datos del banco...")
            (loop
                (print "NIT :")
                (setf (Banco-nit banco) (read))
                (if (<= (Banco-nit banco) 0) 
                    (print "El NIT no puede ser cero o negativo")
                )
                (when (> (Banco-nit banco) 0) (return))
            )
            
            (print "Nombre :")
            (setf (Banco-nombre banco) (read))
            ;Se valida el número que el número de empleados esté entre 0 y 3
            (loop
                (print "Numero de empleados :")
                (setf (Banco-num_empleados banco) (read))
                (cond 
                    ((> (Banco-num_empleados banco) 3) (print "El numero de empleados no puede ser mayor a 3"))
                    ((< (Banco-num_empleados banco) 0) (print "El numero de empleados no puede ser negativo"))
                )
                (if (and (>= (Banco-num_empleados banco) 0) (<= (Banco-num_empleados banco) 3))
                    (return)
                )
            )       
            ;Se le da el valor del vector a la variable dentro de la estructura
            (setf (Banco-vec_clientes banco) v_clientes)
            ;Se almacena la estructura con toda la informacion en el vector bancos
            (setf (aref v_bancos posB) banco)
            ;Se suma una posicion para el almacenamiento del siguiente cliente
            (setq posB (+ posB 1))              
        )
        (print "No hay espacio disponible en el vector de bancos")
    )
)