package co.digiart.ivc.dao;

import co.digiart.ivc.model.Establecimiento;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;
import javax.sql.DataSource;

/**
 *
 * @author Julian
 */
public class JdbcEstablecimientoDAO implements EstablecimientoDAO {

    private DataSource dataSource;

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public List findByNit(String nit) {
        String sql = "SELECT * FROM CCB_ESTABLECIMIENTOS_COMERCIO WHERE NRO_ID_PROPIETARIO = ?";
        Connection conn = null;
        List establecimientos = null;
        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, nit);

            ResultSet rs = ps.executeQuery();

            establecimientos = buildEstablecimientos(rs);
            rs.close();
            ps.close();
            return establecimientos;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                }
            }
        }
    }

    public List buildEstablecimientos(ResultSet rs) throws SQLException {
        List establecimientos = new ArrayList();        
        
        while (rs.next()) {
            Establecimiento est = new Establecimiento();
            est.setMatricula(rs.getString("NRO_MATRI_ESTABLECIMIENTO"));            
            est.setFechaMatricula(rs.getString("F_MATRI_ESTABLECIMIENTO"));
            est.setRazonSocial(rs.getString("RAZON_SOCIAL_PER_SOC"));
            est.setCategoria(rs.getString("CATEGORIA_ESTABLECIMIENTO"));
            est.setOrganizacionJuridica(rs.getString("ORG_JURIDICA_ESTABL"));
            est.setDireccion(rs.getString("DIR_COM_ESTABL"));
            est.setDirEstandar(rs.getString("DIR_COM_ESTABL_ESTANDAR"));
            est.setCodMunicipio(rs.getString("COD_MUN_DIR_COM_E"));
            est.setTelefono(rs.getString("TELEFONO_ESTABLECIMIENTO"));
            est.setEdoMatricula(rs.getString("ESTADO_MATRICULA"));
            est.setFechaCancelacionMatricula(rs.getString("F_CANCELACION_MATRICULA_E"));
            est.setPersonalOcupado(rs.getString("CANT_PERSONAL_OCUPADO"));
            est.setValorActivo(rs.getString("VLR_ACTIVO_ASOCIADO"));
            est.setFechaRenovacionMatricula(rs.getString("F_ULTIMA_RENOVACION"));
            est.setUltimoAnioRenovado(rs.getString("ULTIMO_ANO_RENOVADO"));
            est.setFechaRenovacionCCB(rs.getString("FECHA_ACTUALIZACION_CCB"));
            est.setFechaRecepcionCCB(rs.getString("FECHA_RECEPCION_CCB"));
            est.setFechaEnvioIVC(rs.getString("FECHA_ENVIO_IVC"));
            est.setFechaEnvioEstandar(rs.getString("FECHA_ENVIO_ESTANDAR"));
            est.setLocalidad(rs.getString("LOCALIDAD"));
            est.getRepLegal().setNombre(rs.getString("REPRESENTANTE_LEGAL_SUC"));
            est.getRepLegal().setIdentificacion(rs.getString("NRO_ID_REP_LEGAL_SUC"));
            establecimientos.add(est);
        }
        return establecimientos;
    }
}
