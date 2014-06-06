package co.digiart.ivc.dao;

import co.digiart.ivc.model.Entidad;

/**
 *
 * @author Julian
 */
public interface EntidadDAO {
     
    public Entidad findByUsername(String username);
    
}
