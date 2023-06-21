/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases;

/**
 *
 * @author USUARIO
 */
public class Circulo extends Figura {
    private double radio;

    public Circulo(double radio) {
        this.area = Math.PI*Math.pow(radio, 2);
        this.radio = radio;
    }

    public double getArea() {
        return this.area;
    }
    
    @Override
    public void area() {
        System.out.println("Retornando area circulo:"+getArea()); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void perimetro() {
        System.out.println("Retornando circunferencia del circulo:"+Math.PI*2*radio); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    
    
    
    
}
