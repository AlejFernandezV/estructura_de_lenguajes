/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.devs_bellacos.ejercicio2clase14_04_23;

/**
 *
 * @author USUARIO
 */
public class SobreCarga {
    public void sumar(int a, int b){
        System.out.println("El resultado de la suma es: "+(a+b));
    }
    public void sumar(double a, double b){
        System.out.println("El resultado de la suma es: "+(a+b));
    }
    public void sumar(String a, String b){
        System.out.println("El resultado de la suma es: "+a+b);
    }
}
