(defun llenarDatos()
    (print "Ingrese su nombre")
    (setf (Persona-nombre p) (read))
    (print "Ingrese su apellido")
    (setf (Persona-apellido p) (read))
    (print "Ingrese su edad")
    (setf (Persona-edad p) (read))
)