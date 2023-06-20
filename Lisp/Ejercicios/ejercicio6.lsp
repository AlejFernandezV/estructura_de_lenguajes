#|
    Llenar un vector de 5 posiciones con
    numeros ingresados por el usuario.
|#

(setq vec (make-array 5))
(setq a 0)
(loop
    (print "Ingrese un valor")
    (setf (aref vec a)(read))
    (setq a (+ a 1))
    (when (> a 4)(return))
)
(print vec)