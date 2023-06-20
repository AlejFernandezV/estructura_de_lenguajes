#|
    Llenar un vector de 5 elementos con números ingresados 
    por el usuario, imprimir el vector lleno, luego imprimir 
    las posiciones pares del vector
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

(setq a 0)
(loop
    (if (evenp a)(print (aref vec a)))
    (setq a (+ a 1))
    (when (> a 4)(return))
)

 