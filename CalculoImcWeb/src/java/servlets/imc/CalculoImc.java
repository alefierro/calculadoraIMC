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

            nivel = "Delgadez severa. Busca un especialista en nutrición.";

        } else if (vImc < 17) {

            nivel = "Delgadez moderada. Busca un especialista en nutrición.";

        } else if (vImc < 18.5) {

            nivel = "Delgadez aceptable. ¡Felicidades! Te vendría bien ganar un poco de peso.";

        } else if (vImc < 25) {

            nivel = "Normal. ¡Felicidades! Estás en excelente estado.";

        } else if (vImc < 30) {

            nivel = "Sobrepeso. Busca un especialista en nutrición para ayudarte con tu alimentación.";

        } else if (vImc < 35) {

            nivel = "Obesidad tipo I. Busca un especialista en nutrición para ayudarte con tu alimentación.";

        } else if (vImc <= 40) {

            nivel = "Obesidad tipo II. ¡Cuidado! Busca un especialista en nutrición para ayudarte con tu alimentación.";

        } else if (vImc > 40) {

            nivel = "Obesidad tipo III. ¡Cuidado! Busca un especialista en nutrición para ayudarte con tu alimentación.";

        }

        return nivel;

    }
}
