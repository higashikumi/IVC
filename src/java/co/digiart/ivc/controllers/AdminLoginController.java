package co.digiart.ivc.controllers;

import co.digiart.ivc.dao.JdbcEstablecimientoDAO;
import co.digiart.ivc.model.LoginAdmin;
import co.digiart.ivc.services.AdminSessionService;
import org.springframework.web.servlet.view.RedirectView;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;
import org.springframework.validation.BindException;
import org.springframework.validation.ObjectError;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Julian
 */
public class AdminLoginController extends SimpleFormController {

    public AdminLoginController() {
        setCommandClass(LoginAdmin.class);
        setCommandName("loginadmin");
        setSuccessView("");
        setFormView("entidades/index");
    }

    protected ModelAndView onSubmit(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) throws Exception {

        LoginAdmin login = (LoginAdmin) command;
        if (!this.login(login).equals("")) {
            if(this.login(login).equals("bomberos") || this.login(login).equals("sda") ||this.login(login).equals("sds"))
                return new ModelAndView(new RedirectView("visitasentidad.htm"));
            if(this.login(login).equals("administrador"))
                return new ModelAndView(new RedirectView("admintramites.htm"));
        }

        ObjectError oe = new ObjectError("login", "Las Credenciales no son válidas");
        errors.addError(oe);
        return showForm(request, response, errors);
    }

    private String login(LoginAdmin login) {
        if(login.getUsername().equals("bomberos")  && login.getPassword().equals("temporal")){
            AdminSessionService session = (AdminSessionService) getApplicationContext().getBean("adminsessionService", AdminSessionService.class);
            session.setUserType(AdminSessionService.BOMBEROS);
            session.setUsername(login.getUsername());       
            return "bomberos";
        }
        
        if(login.getUsername().equals("sds")  && login.getPassword().equals("temporal")){
            AdminSessionService session = (AdminSessionService) getApplicationContext().getBean("adminsessionService", AdminSessionService.class);
            session.setUserType(AdminSessionService.SALUD);
            session.setUsername(login.getUsername());       
            return "sds";
        }
        
        if(login.getUsername().equals("sda")  && login.getPassword().equals("temporal")){
            AdminSessionService session = (AdminSessionService) getApplicationContext().getBean("adminsessionService", AdminSessionService.class);
            session.setUserType(AdminSessionService.AMBIENTE);
            session.setUsername(login.getUsername());       
            return "sda";
        }
        
        if(login.getUsername().equals("administrador")  && login.getPassword().equals("temporal")){
            AdminSessionService session = (AdminSessionService) getApplicationContext().getBean("adminsessionService", AdminSessionService.class);
            session.setUserType(AdminSessionService.GENERAL);
            session.setUsername(login.getUsername());       
            return "administrador";
        }
        return "";
    }
}
