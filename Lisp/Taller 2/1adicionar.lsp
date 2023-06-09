(defun registrar_turno()
    (setq p (make-Perro))
    (format t "~%")
    (format t "----------------------------------------")
    (format t "Registro de turnos~%")
    (format t "----------------------------------------")
    (print "Turno 0: 8 a 9am")
    (print "Turno 1: 9 a 10am")
    (print "Turno 2: 10 a 11am")
    (print "Turno 3: 2 a 3am")
    (print "Turno 4: 3 a 4am")
    (print "Digite el numero del turno a reservar, escoja entre 0 y 4:")
    (setq num_turno (read))

    (if (zerop (aref v_turnos num_turno)) 
        (progn
            (print "Turno disponible")
            (print "Ingrese los datos del perro...")
            (print "Codigo perro:")
            (setf (Perro-codigo p) (read))
            (print "Nombre perro:")
            (setf (Perro-nombre p) (read))
            (setf (aref v_turnos num_turno) p)
        )
        (print "Turno no disponible")
    )
)