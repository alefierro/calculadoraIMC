/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.imc;

import java.util.HashSet;

/**
 *
 * @author alejandra
 */
public class CalculoImc {
       
public void CalcularImc(Long vPeso, Long vEstatura){
               
        datosImc datos = new datosImc();
        long vImc = vPeso/((vEstatura/100)^2);
        
        datos.setImc(vImc);
        
    }
}
