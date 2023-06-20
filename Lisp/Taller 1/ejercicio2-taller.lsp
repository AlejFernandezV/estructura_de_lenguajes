#|
    uso del car y cdr
    2. Solicitar una lista e indicar cuántos de los elementos
    son cero, cuántos son pares y cuántos son impares.
    si la lista es vacia se debe mostrar el mensaje:
    la lista esta vacia, no hay valores para mostrar
    v1: haciendo uso del mod 
|#

(print "Digite los elementos de la lista:")
(setq lista (read))

(setq contz 0)
(setq contp 0)
(setq conti 0)

(if (null lista)(print "la lista esta vacia, no hay valores para mostrar")
    (progn
        (loop 
            (setq elemento (car lista))
            (cond
                ((zerop elemento)(setq contz (+ contz 1)))
                ((evenp elemento)(setq contp (+ contp 1)))    ;((= (mod elemento 2) 0)(setq contp (+ contp 1)))
                ((oddp elemento)(setq conti (+ conti 1)))    ;((= (mod elemento 2) 1)(setq conti (+ conti 1)))
            )  
            (setq  lista (cdr lista))
            (when (null lista)(return))
        )
        (format t "Cantidad de ceros: ~D ~%" contz)
        (format t "Cantidad de pares: ~D ~%" contp)
        (format t "Cantidad de impares: ~D ~%" conti)
    )
)
