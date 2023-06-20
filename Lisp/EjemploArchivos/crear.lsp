(defun crearPersona()
    (defstruct Persona
        nombre
        apellido
        edad
    )
    (setq p (make-Persona))
)