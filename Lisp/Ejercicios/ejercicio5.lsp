#|
    Llenar un vector de 5 posiciones con
    los numeros del 1 al 5.
|#

(setq vec (make-array 5))
(setq a 0)
(loop
    (setf (aref vec a)(set a (+ a 1)))
    (when (> a 4)(return))
)
(print vec)