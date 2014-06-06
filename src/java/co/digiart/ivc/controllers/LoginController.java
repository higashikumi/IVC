package co.digiart.ivc.controllers;

import co.digiart.ivc.dao.JdbcEmpresarioDAO;
import co.digiart.ivc.dao.JdbcEstablecimientoDAO;
import co.digiart.ivc.model.Empresa;
import co.digiart.ivc.model.Establecimiento;
import co.digiart.ivc.model.LoginObject;
import co.digiart.ivc.services.SessionService;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.validation.BindException;
import org.springframework.validation.ObjectError;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;
import org.springframework.web.servlet.view.RedirectView;

/**
 *
 * @author Julian
 */
public class LoginController extends SimpleFormController {

    public LoginController() {
        setCommandClass(LoginObject.class);
        setCommandName("loginObject");
        setSuccessView("loginOK");
        setFormView("login");
    }

    protected ModelAndView onSubmit(HttpServletRequest request, HttpServletResponse response, Object command, BindException errors) throws Exception {

        LoginObject login = (LoginObject) command;        
        if (this.login(login)) {
            return new ModelAndView(new RedirectView("establecimiento.htm"));
        }

        ObjectError oe = new ObjectError("login", "El establecimiento no se encuentra registrado en el sistema");
        errors.addError(oe);
        return showForm(request, response, errors);
    }

    private boolean login(LoginObject login) {
/*        JdbcEmpresarioDAO dao = (JdbcEmpresarioDAO) getApplicationContext().getBean("empresarioDAO");
        Empresa e = dao.getLoginEmpresa(login);    
        
        if (e != null) {
            SessionService session = (SessionService) getApplicationContext().getBean("sessionService", SessionService.class);
            session.setEmpresa(e);
            JdbcEstablecimientoDAO daoest = (JdbcEstablecimientoDAO) getApplicationContext().getBean("establecimientoDAO");
            session.setEstablecimientos(daoest.findByNit(e.getNit()));
            return true;
        }
        return false;
*/
  
        
        SessionService session = (SessionService) getApplicationContext().getBean("sessionService", SessionService.class);
        ArrayList<Establecimiento> est= new ArrayList<Establecimiento>();
        est.add(new Establecimiento());
        session.setEstablecimientos(est);
        return true;
    }
}
