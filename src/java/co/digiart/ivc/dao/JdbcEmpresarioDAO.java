package co.digiart.ivc.dao;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import co.digiart.ivc.model.Empresa;
import co.digiart.ivc.model.Establecimiento;
import co.digiart.ivc.model.LoginObject;

/**
 *
 * @author Julian
 */
public class JdbcEmpresarioDAO implements EmpresarioDAO {

    private DataSource dataSource;

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public void insert(Empresa empresario) {

        String sql = "INSERT INTO CUSTOMER "
                + "(CUST_ID, NAME, AGE) VALUES (?, ?, ?)";
        Connection conn = null;

        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, empresario.getId());
            //ps.setString(2, empresario.getName());
            //ps.setInt(3, empresario.getAge());
            ps.executeUpdate();
            ps.close();

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

    public Empresa findByMatricula(String matricula) {

        String sql = "SELECT * FROM CCB_ESTABLECIMIENTOS_COMERCIO WHERE NRO_MATRICULA = ?";

        Connection conn = null;
        Empresa empresa = null;
        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, matricula);
            
            ResultSet rs = ps.executeQuery();

            empresa = buildEmpresa(rs);
            rs.close();
            ps.close();
            return empresa;
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

    public Empresa getLoginEmpresa(LoginObject login) {
        String sql = "SELECT * FROM CCB_ESTABLECIMIENTOS_COMERCIO WHERE NRO_MATRICULA = ? AND NRO_ID_PROPIETARIO = ? AND NRO_MATRI_ESTABLECIMIENTO = ?";
        Connection conn = null;
        Empresa empresa = null;
        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, login.getMatricula());
            ps.setString(2, login.getNit());
            ps.setString(3, login.getMatriculaEstablecimiento());
            
            ResultSet rs = ps.executeQuery();
            empresa = buildEmpresa(rs);
            rs.close();
            ps.close();
            return empresa;
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

    private Empresa buildEmpresa(ResultSet rs) throws SQLException{
        if (rs.next()) {
            Establecimiento est = new Establecimiento();
            Empresa empresa = new Empresa(
                    rs.getString("NRO_MATRICULA"),
                    rs.getString("NRO_ID_PROPIETARIO"));
            empresa.setRazonSocial(rs.getString("RAZON_SOCIAL_ESTABL"));
            empresa.setDigitoVerificacion(rs.getString("DIG_VERIFICACION_PROPI"));
            
            System.out.println("NRO_MATRI_ESTABLECIMIENTO:" + rs.getString("NRO_MATRI_ESTABLECIMIENTO"));
            System.out.println("CONTAR_MATRI_EST:" + rs.getString("CONTAR_MATRI_EST"));
            System.out.println("NRO_ID_PROPIETARIO:" + rs.getString("NRO_ID_PROPIETARIO"));
            System.out.println("NRO_MATRICULA:" + rs.getString("NRO_MATRICULA"));
            System.out.println("COD_CAM_MATRI_PROP:" + rs.getString("COD_CAM_MATRI_PROPI"));
            System.out.println("RAZON_SOCIAL_PER_SOC:" + rs.getString("RAZON_SOCIAL_PER_SOC"));
            System.out.println("T_ID_PROPIETARIO:" + rs.getString("T_ID_PROPIETARIO"));
            System.out.println("DIG_VERIFICACION_PROPI:" + rs.getString("DIG_VERIFICACION_PROPI"));
            System.out.println("DIR_COM_PROPIETARIO:" + rs.getString("DIR_COM_PROPIETARIO"));
            System.out.println("COD_MUN_DIR_COM_PRO:" + rs.getString("COD_MUN_DIR_COM_PRO"));
            System.out.println("TELEFONO_PROPIETARIO:" + rs.getString("TELEFONO_PROPIETARIO"));
            System.out.println("REPRESENTANTE_LEGAL_SUC:" + rs.getString("REPRESENTANTE_LEGAL_SUC"));
            System.out.println("T_ID_REP_LEGAL_SUC:" + rs.getString("T_ID_REP_LEGAL_SUC"));
            System.out.println("NRO_ID_REP_LEGAL_SUC:" + rs.getString("NRO_ID_REP_LEGAL_SUC"));
            System.out.println("F_MATRI_ESTABLECIMIENTO:" + rs.getString("F_MATRI_ESTABLECIMIENTO"));
            System.out.println("RAZON_SOCIAL_ESTABL:" + rs.getString("RAZON_SOCIAL_ESTABL"));
            System.out.println("ORG_JURIDICA_ESTABL:" + rs.getString("ORG_JURIDICA_ESTABL"));
            System.out.println("CATEGORIA_ESTABLECIMIENTO:" + rs.getString("CATEGORIA_ESTABLECIMIENTO"));
            System.out.println("DIR_COM_ESTABL:" + rs.getString("DIR_COM_ESTABL"));
            System.out.println("DIR_COM_ESTABL_ESTANDAR:" + rs.getString("DIR_COM_ESTABL_ESTANDAR"));
            System.out.println("COD_MUN_DIR_COM_E:" + rs.getString("COD_MUN_DIR_COM_E"));
            System.out.println("TELEFONO_ESTABLECIMIENTO:" + rs.getString("TELEFONO_ESTABLECIMIENTO"));
            System.out.println("ESTADO_MATRICULA:" + rs.getString("ESTADO_MATRICULA"));
            System.out.println("F_CANCELACION_MATRICULA_E:" + rs.getString("F_CANCELACION_MATRICULA_E"));
            System.out.println("CANT_PERSONAL_OCUPADO:" + rs.getString("CANT_PERSONAL_OCUPADO"));
            System.out.println("VLR_ACTIVO_ASOCIADO:" + rs.getString("VLR_ACTIVO_ASOCIADO"));
            System.out.println("F_ULTIMA_RENOVACIO:" + rs.getString("F_ULTIMA_RENOVACION"));
            System.out.println("ULTIMO_ANO_RENOVADO:" + rs.getString("ULTIMO_ANO_RENOVADO"));
            System.out.println("FECHA_ACTUALIZACION_CCB:" + rs.getString("FECHA_ACTUALIZACION_CCB"));
            System.out.println("FECHA_RECEPCION_CCB:" + rs.getString("FECHA_RECEPCION_CCB"));
            System.out.println("FECHA_ENVIO_ICV:" + rs.getString("FECHA_ENVIO_IVC"));
            System.out.println("FECHA_ENVIO_ESTANDAR:" + rs.getString("FECHA_ENVIO_ESTANDAR"));
            System.out.println("LOCALIDAD:" + rs.getString("LOCALIDAD"));
            return empresa;
        }
        return null;
    }
}
