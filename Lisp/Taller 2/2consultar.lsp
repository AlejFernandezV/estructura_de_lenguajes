(defun consultar_turnos()
    (print "Turnos asignados")
    (setq pos 0)
    (loop
        (print (aref v_turnos pos))
        (setq pos (+ pos 1))
        (when (> x 4)(return))
    )
)