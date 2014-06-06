package co.digiart.ivc.model;

/**
 *
 * @author Julian
 */
public class UsuarioEntidad {
    
    private int id;
    private String username;
    private String password;
    private String rol;
    private String tipoUsuario;
    private String fechaRegistro;
    private String fechaInicioContrato;
    private String fechaFinContrato;
    private String cargo;
    
    public static boolean isValidUser(String username, String password){
        if(username.equals("bomberos") && password.equals("temppass"))
            return true;
        return false;
    }
    
}
