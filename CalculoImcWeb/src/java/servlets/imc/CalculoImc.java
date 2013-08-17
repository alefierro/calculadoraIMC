/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.imc;

/**
 *
 * @author alejandra
 */
public class CalculoImc {

    public double CalcularImc(double vPeso, double vEstatura) {

        vEstatura = vEstatura/100;
        
        double vImc = (long) (vPeso / Math.pow(vEstatura,2));

        return vImc;

    }

    public String nivelImc(double vImc) {

        String nivel = "";

        if (vImc < 16) {

            nivel = "Delgadez severa";

        } else if (vImc < 17) {

            nivel = "Delgadez moderada";

        } else if (vImc < 18.5) {

            nivel = "Delgadez aceptable";

        } else if (vImc < 25) {

            nivel = "Normal";

        } else if (vImc < 30) {

            nivel = "Sobrepeso";

        } else if (vImc < 35) {

            nivel = "Obesidad tipo I";

        } else if (vImc <= 40) {

            nivel = "Obesidad tipo II";

        } else if (vImc > 40) {

            nivel = "Obesidad tipo III";

        }

        return nivel;

    }
}
