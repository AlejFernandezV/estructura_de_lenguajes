/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases;

/**
 *
 * @author USUARIO
 */
public class Carro extends Vehiculo{
    private int numMotor;

    public Carro(int numMotor) {
        super();
        this.numMotor = numMotor;
    }

    public int getNumMotor() {
        return numMotor;
    }

    public void setNumMotor(int numMotor) {
        
        this.numMotor = numMotor;
    }
    
    public void arrancar(){
        super.arrancar();
        System.out.println("Ha arrancado el carro.");
    }
}
