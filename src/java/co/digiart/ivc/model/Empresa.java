package co.digiart.ivc.model;

import java.util.List;


/**
 *
 * @author Julian
 */
public class Empresa {
    
    private int id;
    
    
    //Validados contra BD!!
    private String nit;
    private String matricula; //Hace referencia a la matricula mercantil
    private String razonSocial;
    private String digitoVerificacion;
    
    private Persona propietario;
    private Persona repLegal;
    
    
    private List establecimientos;
    
    private String matriculaEstablecimiento;
    

    //private String propietario;
    
    public Empresa(){
        
    }
    
    public Empresa(String matricula, String nit){
        this.matricula = matricula;
        this.nit = nit;
        //this.propietario = propietario;
        
    }
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    
    
    public String getRazonSocial() {
        return razonSocial;
    }

    public void setRazonSocial(String razonSocial) {
        this.razonSocial = razonSocial;
    }
    
    public List getEstablecimientos() {
        return establecimientos;
    }

    public void setEstablecimientos(List establecimientos) {
        this.establecimientos = establecimientos;
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public String getDigitoVerificacion() {
        return digitoVerificacion;
    }

    public void setDigitoVerificacion(String digitoVerificacion) {
        this.digitoVerificacion = digitoVerificacion;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }    
    

    public String getMatriculaEstablecimiento() {
        return matriculaEstablecimiento;
    }

    public void setMatriculaEstablecimiento(String matriculaEstablecimiento) {
        this.matriculaEstablecimiento = matriculaEstablecimiento;
    }
    
    
    
    
    
}
