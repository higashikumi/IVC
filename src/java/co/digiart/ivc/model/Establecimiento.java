package co.digiart.ivc.model;


/**
 *
 * @author Julian
 */
public class Establecimiento {

    private String Matricula;
    private String fechaMatricula;
    private String razonSocial;
    private String organizacionJuridica;
    private String categoria;
    private String direccion;
    private String dirEstandar;
    private String codMunicipio;
    private String telefono;
    private String edoMatricula;
    private String fechaCancelacionMatricula;
    private String personalOcupado;
    private String valorActivo;
    private String fechaRenovacionMatricula;
    private String ultimoAnioRenovado;
    private String fechaRenovacionCCB;
    private String fechaRecepcionCCB;
    private String fechaEnvioIVC;
    private String fechaEnvioEstandar;
    private String localidad;
    private Persona repLegal;
    
    public Establecimiento(){
        this.repLegal = new Persona();
    }
    
    public String getMatricula() {
        return Matricula;
    }

    public void setMatricula(String Matricula) {
        this.Matricula = Matricula;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getCodMunicipio() {
        return codMunicipio;
    }

    public void setCodMunicipio(String codMunicipio) {
        this.codMunicipio = codMunicipio;
    }

    public String getDirEstandar() {
        return dirEstandar;
    }

    public void setDirEstandar(String dirEstandar) {
        this.dirEstandar = dirEstandar;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getEdoMatricula() {
        return edoMatricula;
    }

    public void setEdoMatricula(String edoMatricula) {
        this.edoMatricula = edoMatricula;
    }

    public String getFechaCancelacionMatricula() {
        return fechaCancelacionMatricula;
    }

    public void setFechaCancelacionMatricula(String fechaCancelacionMatricula) {
        this.fechaCancelacionMatricula = fechaCancelacionMatricula;
    }

    public String getFechaEnvioEstandar() {
        return fechaEnvioEstandar;
    }

    public void setFechaEnvioEstandar(String fechaEnvioEstandar) {
        this.fechaEnvioEstandar = fechaEnvioEstandar;
    }

    public String getFechaEnvioIVC() {
        return fechaEnvioIVC;
    }

    public void setFechaEnvioIVC(String fechaEnvioIVC) {
        this.fechaEnvioIVC = fechaEnvioIVC;
    }

    public String getFechaMatricula() {
        return fechaMatricula;
    }

    public void setFechaMatricula(String fechaMatricula) {
        this.fechaMatricula = fechaMatricula;
    }

    public String getFechaRecepcionCCB() {
        return fechaRecepcionCCB;
    }

    public void setFechaRecepcionCCB(String fechaRecepcionCCB) {
        this.fechaRecepcionCCB = fechaRecepcionCCB;
    }

    public String getFechaRenovacionCCB() {
        return fechaRenovacionCCB;
    }

    public void setFechaRenovacionCCB(String fechaRenovacionCCB) {
        this.fechaRenovacionCCB = fechaRenovacionCCB;
    }

    public String getFechaRenovacionMatricula() {
        return fechaRenovacionMatricula;
    }

    public void setFechaRenovacionMatricula(String fechaRenovacionMatricula) {
        this.fechaRenovacionMatricula = fechaRenovacionMatricula;
    }

    public String getLocalidad() {
        return localidad;
    }

    public void setLocalidad(String localidad) {
        this.localidad = localidad;
    }

    public String getOrganizacionJuridica() {
        return organizacionJuridica;
    }

    public void setOrganizacionJuridica(String organizacionJuridica) {
        this.organizacionJuridica = organizacionJuridica;
    }

    public String getPersonalOcupado() {
        return personalOcupado;
    }

    public void setPersonalOcupado(String personalOcupado) {
        this.personalOcupado = personalOcupado;
    }

    public String getRazonSocial() {
        return razonSocial;
    }

    public void setRazonSocial(String razonSocial) {
        this.razonSocial = razonSocial;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getUltimoAnioRenovado() {
        return ultimoAnioRenovado;
    }

    public void setUltimoAnioRenovado(String ultimoAnioRenovado) {
        this.ultimoAnioRenovado = ultimoAnioRenovado;
    }

    public String getValorActivo() {
        return valorActivo;
    }

    public void setValorActivo(String valorActivo) {
        this.valorActivo = valorActivo;
    }

    public Persona getRepLegal() {
        return repLegal;
    }

    public void setRepLegal(Persona repLegal) {
        this.repLegal = repLegal;
    }
    
    
    
    
}
