#|
    Haciendo uso de las funciones car y cdr calcular:
    1. Hallar la media de una lista.
    Si la lista es bacoa se debe mostrar el mensaje:
    "La lista es vacía, no hay valor para la media",
    en caso contrario calcular el valor de la media.
|#

(print "Digite los elementos de la lista:")
(setq lista (read))

(setq sum 0)
(setq cont 0)

(if (null lista)(print "la lista esta vacia no hay valor para la media")
    (progn
        (loop 
            (setq elemento (car lista))
            (setq cont (1+ cont))
            (setq sum (+ sum elemento))
            (setq  lista (cdr lista))
            (when (null lista)(return))
        )
        (setq media (/ sum cont))
        (format t "El valor de la media es: ~D ~%" media)
    )
)
#|
(if (null lista)(print "La lista es vacía, no hay valor para la media")
    (progn(
            (loop
                (setq elemento (car lista))
                (setq sum (+ sum elemento))
                (setq cont (+ cont 1))
                ((setq lista (cdr lista)))
            (when (or (eq elemento nil))(return)))
            (format t "La media de la lista ingresada es: ~D~%" (/ sum cont))
        )
    )
)
 |#


#|
(if (null lista)
    (print "La lista es vacía, no hay valor para la media")
    (
        progn(
            (dolist(elemento lista)
                (setq sum (+ sum elemento))
                (setq cont (+ cont 1))
            )
            (print "La media de la lista ingresada es: ~D~%" (/ sum cont))
        )
    )
)
|#
