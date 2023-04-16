/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases;

/**
 *
 * @author USUARIO
 */
public class Figura {
    protected double area;

    public Figura() {
    }

    public double getArea() {
        return area;
    }
    
    public String imprimirArea(){
        return "Retornando area fugura:"+this.area;
    }
}
