/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases;

/**
 *
 * @author USUARIO
 */
public class Rectangulo extends Figura{
    private double alto;
    private double ancho;

    public Rectangulo(double alto, double ancho) {
        this.area = alto * ancho;
        this.alto = alto;
        this.ancho = ancho;
    }
    
    public double getArea(){
        return this.area;
    }

    @Override
    public void area() {
        System.out.println("Retornando area rectangulo:"+getArea()); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void perimetro() {
        System.out.println("Retornando el perimetro del rectangulo:"+((2*alto)+(2*ancho))); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
