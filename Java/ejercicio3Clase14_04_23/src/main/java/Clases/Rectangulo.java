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
    
    public String imprimirArea(){
        return "Retornando area fugura:"+getArea();
    }
}
