/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.devs_bellacos.ejercicio3;

/**
 *
 * @author USUARIO
 */


import java.util.Scanner;
import java.util.HashMap;

public class Ejercicio3 {

    public static void main(String[] args) {
        
        Scanner leer = new Scanner(System.in);
        HashMap<String, Integer> mapMeses = new HashMap<String, Integer>() {{
            put("enero", 31);
            put("febrero", 28);
            put("marzo", 31);
            put("abril", 30);
            put("mayo", 31);
            put("junio", 30);
            put("julio", 31);
            put("agosto", 31);
            put("septiembre", 30);
            put("octubre", 31);
            put("noviembre", 30);
            put("diciembre", 31);
        }};
        
        System.out.println("--- CONTADOR DIAS ---");
        System.out.println("Ingresa el anio: ");
        int anio = Integer.parseInt(leer.nextLine());
        
        System.out.println("Ingresa el mes: ");
        String mes = leer.nextLine().toLowerCase();
        
        if((anio % 4 == 0) && (anio % 400 == 0 || anio % 100 != 0) && (mes.equals("febrero"))){
            System.out.println("febrero "+anio+" -> "+(mapMeses.get(mes)+1) + " dias");
        }
        else{
            System.out.println(mes+" "+anio +" -> "+mapMeses.get(mes)+ " dias");
        }
    }
}
