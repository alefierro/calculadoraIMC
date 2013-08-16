/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.imc;

/**
 *
 * @author alejandra
 */
public class datosImc {
    
    private String nombre;
    private Long estatura;
    private Long peso;
    private Long imc;
    
    public datosImc(){
        
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the estatura
     */
    public Long getEstatura() {
        return estatura;
    }

    /**
     * @param estatura the estatura to set
     */
    public void setEstatura(Long estatura) {
        this.estatura = estatura;
    }

    /**
     * @return the peso
     */
    public Long getPeso() {
        return peso;
    }

    /**
     * @param peso the peso to set
     */
    public void setPeso(Long peso) {
        this.peso = peso;
    }

    /**
     * @return the imc
     */
    public Long getImc() {
        return imc;
    }

    /**
     * @param imc the imc to set
     */
        public void setImc(Long imc) {
        this.imc = imc;
    }
            
    
    
}
