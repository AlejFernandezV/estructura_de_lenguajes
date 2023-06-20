#|
    Calcula de una lista cuantas vocales hay
|#

(print "Digite los elementos de la lista:")
(setq lista (read))

(setq conta 0)
(setq conte 0)
(setq conti 0)
(setq conto 0)
(setq contu 0)

(dolist (elemento lista)
    (cond
        ((member elemento '(a A)) (setq conta (+ conta 1)))
        ((member elemento '(e E)) (setq conte (+ conte 1)))
        ((member elemento '(i I)) (setq conti (+ conti 1)))
        ((member elemento '(o O)) (setq conto (+ conto 1)))
        ((member elemento '(u U)) (setq contu (+ contu 1)))
    )   
)
(format t "La cantidad de a's es: ~D ~%" conta)
(format t "La cantidad de e's es: ~D ~%" conte)
(format t "La cantidad de i's es: ~D ~%" conti)
(format t "La cantidad de o's es: ~D ~%" conto)
(format t "La cantidad de u's es: ~D ~%" contu)


