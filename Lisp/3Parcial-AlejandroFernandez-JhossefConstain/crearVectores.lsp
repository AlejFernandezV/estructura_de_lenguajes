#|  Creacion de estructuras, vector de estructuras de los bancos|#
(defun crear_vec_bancos()
    ;Crear vector de bancos
    (setq v_bancos(make-array 2))
    
    ;Inicializacion del vector en cero
    (setq xb 0)
    (loop
        (setf (aref v_bancos xb) 0)
        (setq xb (+ xb 1))
        (when (> xb 1)(return))
    )
)
(defun crear_vec_clientes()
    ;Crear vector de clientes
    (setq v_clientes(make-array 3))
    
    ;Inicializacion del vector en cero
    (setq xc 0)
    (loop
        (setf (aref v_clientes xc) 0)
        (setq xc (+ xc 1))
        (when (> xc 2)(return))
    )
)