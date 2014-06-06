package co.digiart.ivc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;

/**
 *
 * @author Julian
 */
public class JdbcVisitasDAO implements VisitasDAO {
    
        private DataSource dataSource;

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }
    
    public List getVisitas(String codEstablecimiento){
        
        String sql = "SELECT * FROM T_VISITA WHERE NRO_ID_PROPIETARIO = ?";
        Connection conn = null;
        List establecimientos = null;
        try {
            conn = dataSource.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, codEstablecimiento);

            ResultSet rs = ps.executeQuery();

            //establecimientos = buildEstablecimientos(rs);
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
}
