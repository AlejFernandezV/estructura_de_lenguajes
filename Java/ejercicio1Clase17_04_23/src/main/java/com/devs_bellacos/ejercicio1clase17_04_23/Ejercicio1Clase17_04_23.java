/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.devs_bellacos.ejercicio1clase17_04_23;

import Clases.*;

/**
 *
 * @author USUARIO
 */
public class Ejercicio1Clase17_04_23 {

    public static void main(String[] args) {
        Circulo cir = new Circulo(2);
        Rectangulo rec = new Rectangulo(2,3);
        Cuadrado cuadrado = new Cuadrado(3);
        
        calcularOperaciones(cir);
        calcularOperaciones(rec);
        calcularOperaciones(cuadrado);

    }
    
    public static void calcularOperaciones(Figura f){
        f.area();
        f.perimetro();
    }
}
