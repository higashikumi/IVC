package co.digiart.ivc.services;

import co.digiart.ivc.model.Empresa;
import co.digiart.ivc.model.Establecimiento;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

/**
 *
 * @author Julian
 */
public class SessionService {

    private Empresa empresa;
    private List establecimientos;
    private Map positionEstabl;

    public SessionService() {
        this.empresa = null;
        this.establecimientos = null;
    }

    public Empresa getEmpresa() {
        return empresa;
    }

    public void setEmpresa(Empresa empresario) {
        this.empresa = empresario;
    }

    public void setEstablecimientos(List establecimientos) {
        this.establecimientos = establecimientos;
        this.positionEstabl = new HashMap();
        for (int i = 0; i < establecimientos.size(); i++) {
            this.positionEstabl.put(((Establecimiento) establecimientos.get(i)).getMatricula(), Integer.valueOf(i));
        }
    }

    public Integer getEstablecimientosPosition(String matricula) {
        if (this.positionEstabl.containsKey(matricula)) {
            return ((Integer) this.positionEstabl.get(matricula));
        }
        return new Integer(-1);
    }
    
    public Establecimiento getEstablecimiento(String matricula){
        Integer pos =  this.getEstablecimientosPosition(matricula);
        if(pos.intValue()!=-1){
            return (Establecimiento) this.establecimientos.get(pos.intValue());
        }
        return null;
    }

    public List getEstablecimientos() {
        return this.establecimientos;
    }

    public boolean isLogged() {
        return (this.empresa != null);
    }
    
    public void logout(){
        this.empresa = null;
        this.establecimientos = null;
        System.gc();
    }
}
