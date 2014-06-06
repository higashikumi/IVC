package co.digiart.ivc.dao;

import co.digiart.ivc.model.Empresa;

/**
 *
 * @author Julian
 */
public interface EmpresarioDAO {

    public void insert(Empresa empresario);

    public Empresa findByMatricula(String matricula);
}
