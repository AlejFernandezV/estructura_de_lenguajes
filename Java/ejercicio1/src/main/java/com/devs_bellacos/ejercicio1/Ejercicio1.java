
package com.devs_bellacos.ejercicio1;

/**
 *
 * @author ALEJANDRO FERNÁNDEZ
 */

import java.util.Scanner;

public class Ejercicio1 {

    public static void main(String[] args) {
        String cadena;
        
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingrese una letra: ");
        cadena = leer.nextLine().toLowerCase();
        
        char ch = cadena.charAt(0);
        
        if (!Character.isLetterOrDigit(ch)) {
            System.out.println("Se ha ingresado un carácter especial.");
        }
        else if(esNumero(cadena))
            System.out.println("Usted ingresó un número");
        else if(cadena.equals("a") || cadena.equals("e") || cadena.equals("i")
            || cadena.equals("o") || cadena.equals("u")){
            System.out.println("Usted ingresó una vocal");
        }
        else{
            System.out.println("Usted Ingresó una consonante");
        }
        
    }
    
    public static boolean esNumero(String cadena) {
        try {
            Double.parseDouble(cadena);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}
