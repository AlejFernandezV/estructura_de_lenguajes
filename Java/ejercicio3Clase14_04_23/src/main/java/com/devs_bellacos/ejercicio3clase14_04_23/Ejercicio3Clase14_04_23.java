/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.devs_bellacos.ejercicio3clase14_04_23;

import Clases.*;

/**
 *
 * @author USUARIO
 */
public class Ejercicio3Clase14_04_23 {

    public static void main(String[] args) {
        Circulo cir = new Circulo(5);
        Rectangulo rec = new Rectangulo(3,5);
        Triangulo tri = new Triangulo(5,8);
        
        impresionArea(cir);
        impresionArea(rec);
        impresionArea(tri);
    }
    
    public static void impresionArea(Figura fig){
        System.out.println(fig.imprimirArea());
    }
}
