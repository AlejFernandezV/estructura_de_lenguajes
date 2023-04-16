/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases;

/**
 *
 * @author USUARIO
 */
public class Triangulo extends Figura{
    private double altura;
    private double base;

    public Triangulo(double altura, double base) {
        this.area = (base*altura)/2;
        this.altura = altura;
        this.base = base;
    }
    
    public double getArea(){
        return this.area;
    }
    
    public String imprimirArea(){
        return "Retornando area fugura:"+getArea();
    }
}
