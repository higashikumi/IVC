package co.digiart.ivc.controllers;

import co.digiart.ivc.services.AdminSessionService;
import co.digiart.ivc.services.SessionService;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

/**
 *
 * @author Julian
 */
public abstract class AbstractController extends MultiActionController {

    protected SessionService getSessionService() {
        return (SessionService) getApplicationContext().getBean("sessionService");
    }
    
    protected AdminSessionService getAdminSessionService(){
        return (AdminSessionService) getApplicationContext().getBean("adminsessionService");
    }
    
    public ModelMap assignModelMapValues(ModelMap model){
        Boolean showAdmin = Boolean.valueOf(!this.getSessionService().isLogged());
        //Boolean isLogged = Boolean.valueOf(this.getSessionService().isLogged());
        Boolean isLogged = true;
        model.addAttribute("showAdminLinks", showAdmin);
        model.addAttribute("logged", isLogged);
        model.addAttribute("loggedAdmin", false);
        model.addAttribute("loggedAdminGeneral", false);
        return model;
    }
    
    public ModelMap assignAdminModelMapValues(ModelMap model){
        model.addAttribute("showAdminLinks", false);
        model.addAttribute("logged", false);
        model.addAttribute("loggedAdmin", true);
        model.addAttribute("loggedAdminGeneral", false);
        if(this.getAdminSessionService().getUserType().equals(AdminSessionService.BOMBEROS)){
            model.addAttribute("bomberos","bomberos");
        }else{
            model.addAttribute("bomberos","");
        }
        
        return model;
    }
    
    public ModelMap assignAdminGenModelMapValues(ModelMap model){
        model = this.assignAdminModelMapValues(model);
        model.addAttribute("loggedAdminGeneral", true);
        
        return model;
    }
    
    public ModelMap assignGuiaModelMapValues(ModelMap model){
        Boolean showAdmin = Boolean.valueOf(!this.getSessionService().isLogged());
        model.addAttribute("showAdminLinks", showAdmin);
        model.addAttribute("logged", false);
        model.addAttribute("loggedAdmin", false);
        model.addAttribute("loggedAdminGeneral", false);
        model.addAttribute("guia", true);
        return model;
    }
}
