#|
    dEFINIR UNA FUNCION QUE PERMITA INDICAR LOS CUADRADOS DE LOS NUMEROS
    INGRESADOR EN UNA LISTA
    v1: Uso del car y cdr.
    Mensaje: numero __ cuadrado: __
|#

(defun cuadradov1 (lista)
    (loop
        (setq elemento (car lista))
        (format t "Numero: ~D~%   Cuadrado: ~D~%" elemento (* elemento elemento))
        (setq lista (cdr lista))
    (when (null lista)(return)))
)

(defun cuadradov2 (lista)
    (dolist(elemento lista)
        (format t "Numero: ~D~%   Cuadrado: ~D~%" elemento (* elemento elemento))
    )
)

(print "Ingrese la lista: ")
(setq lista (read))
(cuadradov2 lista)

