#|  Creacion de estructuras, vector de estructuras
    los turnos eimicvializacion de la estructura |#

(defun crear()
    ;Crear vector de turnos
    (setq v_turnos(make-array 5))
    ;Crear estructura de perros
    (defstruct Perro
        codigo
        nombre
    )
    ;Creacion del vector de turnos (lista de asociacion)
    (setq turno '((0 "8 a 9am") (1 "9 a 10am") (2 "10 a 11am") (3 "2 a 3pm") (4 "3 a 4pm")))
    ;Inicializacion de los vectores en cero
    (setq x 0)
    (loop
        (setf (aref v_turnos x) 0)
        (setq x (+ x 1))
        (when (> x 4)(return))
    )
)

