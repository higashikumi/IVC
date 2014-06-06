package co.digiart.ivc.controllers;

import co.digiart.ivc.model.Establecimiento;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.view.RedirectView;

/**
 *
 * @author Julian
 */
public class EstablecimientosController extends AbstractController { 

    /*public ModelAndView showlist(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        assignModelMapValues(model);
        if (this.getSessionService().isLogged()) {
            model.addAttribute("estab", this.getSessionService().getEstablecimientos());
            model.addAttribute("empresa", this.getSessionService().getEmpresa());
            model.addAttribute("selected", "establecimiento");
            return new ModelAndView("establecimientos/establecimientos", model);
        }
        return new ModelAndView(new RedirectView("login.htm"));
    }*/

    public ModelAndView establecimiento(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        assignModelMapValues(model);
        
//        if (this.getSessionService().isLogged()) {
        if(true){
            Establecimiento est = (Establecimiento)this.getSessionService().getEstablecimientos().get(0);                        
            model.addAttribute("establecimiento", est);
            model.addAttribute("selected", "establecimiento");            
            return new ModelAndView("establecimientos/establecimiento", model);
        }
        return new ModelAndView(new RedirectView("login.htm"));
    }
    
    public ModelAndView autoregulacion(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        assignModelMapValues(model);
        if (this.getSessionService().isLogged()) {
            model.addAttribute("selected", "autoregulacion");
            String matricula = request.getParameter("est");
            Establecimiento est = this.getSessionService().getEstablecimiento(matricula);
            if(est == null)
                return new ModelAndView(new RedirectView("establecimientos.htm"));
            model.addAttribute("establecimiento",est);
            return new ModelAndView("establecimientos/autoregulacion", model);
        }
        return new ModelAndView(new RedirectView("login.htm"));
    }
    
    public ModelAndView representante(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        assignModelMapValues(model);
//        if (this.getSessionService().isLogged()) {
        if(true){ 
//            return new ModelAndView("tramites/tramite", model);
            return new ModelAndView("establecimientos/representante", model);
        }
        return new ModelAndView(new RedirectView("login.htm"));
    }
}
