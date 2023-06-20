#|  Creacion de estructuras cliente y banco|#
(defstruct Cliente
    numId
    nombreCliente
    genero
)
(defstruct Banco
    nit
    nombre
    num_empleados
    vec_clientes
)