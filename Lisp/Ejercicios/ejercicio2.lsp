#|
• La tienda Don Pepe necesita que usted le ayude a controlar el inventario de
alimentos del local. Para ello deberá solicitar que se ingrese el nombre del
producto y verificar si el alimento se encuentra o no en la despensa.

• Una se encuentre el producto solicite que ingrese la cantidad del producto:

• Si la cantidad es igual a 100, mostrará el mensaje: “Tiene la cantidad
exacta en la despensa”.
• Si la cantidad supera los 100, mostrará el mensaje: "Usted tiene unidades
de más de este producto, debe vender __ artículos”.
• Si la cantidad es inferior a los 100, mostrará el mensaje: “Usted debe
reabastecer su negocio de este producto, debe comprar __ unidades de
más. 
|#

;FUNCIONES
(defun validarprod1(nomproducto lista)
    (setq band 0)
    (loop
        (setq elemento (car lista))
        ((if (eq elemento nomproducto) (setq band 1)(setq lista (cdr lista))))
        (when (or (eq elemento nil)(eq band 1))(return))
    )
    (if (eq band 1) 1 0)
)

(defun validarprod2(nomproducto lista)
    (setq band 0)
    (dolist(elemento lista)
        ((if (eq elemento nomproducto) (setq band 1)))
    )
    return band
)

;Definir una lista con los alimentos
(setq lista '(papa maiz arroz harina))

;Pedirle al usuario que ingrese el nombre de un producto
(print "Ingrese el nombre del producto:")
(setq nomproducto(read))

;Verificar si ese proucto esta ingresado en la lista
;Hacerlo através de una función
(setq resultado (validarprod2 nomproducto lista))
#|
    Si el retorno de la funcion es 1 se entra a validar
    En caso contrario indicar que el producto no se encuentra en la dispensa.
|#
(if (eq resultado 1)
    (progn

        (
            loop
                (print "Ingrese la cantidad del producto:")
                (setq cant (read))
            (when (>= cant 0)(return))
        )

        (format t "El producto ~S esta en la despesa ~%" nomproducto)
        
        (cond
            ((= cant 100)(format t "Tiene la cantidadad exacta en la despensa"))
            ((> cant 100)(format t "Usted tiene unidades de mas en la despensa, debe vender ~D ~% del producto ~S ~%" (- cant 100) nomproducto))
            ((< cant 100)(format t "Debe reabastecer este producto, tiene  ~D unidades~%" (- 100 cant)))
        )
    )
    (
        format t "El producto ~S NO esta en la despensa ~%" nomproductoS
    )
)


