/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.devs_bellacos.ejercicioclase14_04_23;

import Clases.Carro;
import Clases.Moto;
import Clases.Vehiculo;

/**
 *
 * @author USUARIO
 */
public class EjercicioClase14_04_23 {

    public static void main(String[] args) {
        
        Carro objCar = new Carro(123);
        objCar.setPlaca(111);
        objCar.setMarca("Renault");
        objCar.setModelo(2023);
        
        Moto objMoto = new Moto(250);
        objMoto.setPlaca(250);
        objMoto.setMarca("Kawasaki");
        objMoto.setModelo(2023);
        
        System.out.println("INFORMACION MOTO");
        System.out.println("Cilindraje: "+objMoto.getCilindraje());
        System.out.println("Placa: "+objMoto.getPlaca());
        System.out.println("Marca: "+objMoto.getMarca());
        System.out.println("Modelo:"+objMoto.getModelo());
        System.out.println("Arrancado?: ");
        System.out.println("-------------------------------------");
        System.out.println("INFORMACION CARRO");
        System.out.println("Numero motor: "+objCar.getNumMotor());
        System.out.println("Placa: "+objCar.getPlaca());
        System.out.println("Marca: "+objCar.getMarca());
        System.out.println("Modelo:"+objCar.getModelo());
    }
}
