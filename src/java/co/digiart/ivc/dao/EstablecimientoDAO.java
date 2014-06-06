package co.digiart.ivc.dao;

import co.digiart.ivc.model.Empresa;
import java.util.List;

/**
 *
 * @author Julian
 */
public interface EstablecimientoDAO {

    public List findByNit(String nit);
    
}
