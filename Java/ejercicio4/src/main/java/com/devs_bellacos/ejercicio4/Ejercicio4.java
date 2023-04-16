/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.devs_bellacos.ejercicio4;

/**
 *
 * @author USUARIO
 */

import java.util.Scanner;
import java.util.HashMap;

public class Ejercicio4 {

    public static void main(String[] args) {
        
        Scanner leer = new Scanner(System.in);
        
        double a = 0.0, b = 0.0, c = 0.0;
        
        System.out.println("Ingrese el valor de a: ");
        a = Integer.parseInt(leer.nextLine());
        System.out.println("Ingrese el valor de b: ");
        b = Integer.parseInt(leer.nextLine());
        System.out.println("Ingrese el valor de c: ");
        c = Integer.parseInt(leer.nextLine());
        
        double x1 = 0.0, x2 = 0.0;
        
        double v1, v2, v3;
        
        v1 = -b;
        v2 = Math.pow(b, 2) - 4*a*c;
        v3 = 2*a;
        
        System.out.println("----- RESULTADOS -----");
        if(v2 < 0){
            System.out.println("x1 = ("+v1+" - "+ Math.sqrt(-v2)+"i)/"+v3);
            System.out.println("x2 = ("+v1+" + "+ Math.sqrt(-v2)+"i)/"+v3);
        }
        else{
            double raiz = Math.sqrt(v2);
            x1 = (v1 + raiz)/v3;
            x2 = (v1 - raiz)/v3;
            System.out.println("x1 = "+x1);
            System.out.println("x2 = "+x2);
        }
    }
}
