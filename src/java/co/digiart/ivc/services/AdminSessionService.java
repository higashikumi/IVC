package co.digiart.ivc.services;

/**
 *
 * @author Julian
 */
public class AdminSessionService {
    
    public static final String  BOMBEROS = "bomberos";
    public static final String  SALUD = "sds";
    public static final String  AMBIENTE = "sda";
    public static final String  GENERAL = "general";

    private String username;
    private String password;
    private String userType;     
    

    public AdminSessionService() {
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    public boolean isLogged(){
        if(this.username != null)
            return true;
        return false;
    }

    
}
