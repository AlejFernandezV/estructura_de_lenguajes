/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.devs_bellacos.ejercicio2;

/**
 *
 * @author USUARIO
 */

import java.util.Scanner;

public class Ejercicio2 {

    public static void main(String[] args) {
        
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingrese una letra: ");
        String cadena = leer.nextLine().toLowerCase();
        
        char ch;
        
        int contA = 0, contE = 0, contI = 0, contO = 0, contU = 0, contCons = 0, contDig = 0;
        
        for(int i=0; i < cadena.length(); i++){
            ch = cadena.charAt(i);
            
            if(Character.isDigit(ch))
                contDig++;
            else{
                switch(ch){
                    case 'a':
                        contA++;
                        break;
                    case 'e':
                        contE++;
                        break;
                    case 'i':
                        contI++;
                        break;
                    case 'o':
                        contO++;
                        break;
                    case 'u':
                        contU++;
                        break;
                    default:
                        contCons++;
                        break;
                }
            }
        }
        
        System.out.println("- Hay "+contA+" letras que son a");
        System.out.println("- Hay "+contE+" letras que son e");
        System.out.println("- Hay "+contI+" letras que son i");
        System.out.println("- Hay "+contO+" letras que son o");
        System.out.println("- Hay "+contU+" letras que son u");
        System.out.println("- Hay "+contCons+" consonantes");
        System.out.println("- Hay "+contDig+" digitos");
    }

}
