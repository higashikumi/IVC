package co.digiart.ivc.controllers;

import co.digiart.ivc.model.Establecimiento;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

/**
 *
 * @author Julian
 */
public class VisitaController extends AbstractController {
    
    public ModelAndView visita(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        assignModelMapValues(model);
        
//        if (this.getSessionService().isLogged()) {
        if(true){    
            model.addAttribute("selected", "estado");
            return new ModelAndView("visita/visita", model);
        }
        return new ModelAndView(new RedirectView("login.htm"));
    }

    public ModelAndView solicitarvisita(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        assignModelMapValues(model);
//        if (this.getSessionService().isLogged()) {            
        if(true){
            Establecimiento est = (Establecimiento)this.getSessionService().getEstablecimientos().get(0);            
            model.addAttribute("establecimiento", est);
            model.addAttribute("selected", "visita");
            return new ModelAndView("visita/solicitarvisita", model);
        }

        return new ModelAndView(
                new RedirectView("login.htm"));
    }
    
    public ModelAndView solicitarvisitacobb(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        assignModelMapValues(model);
//        if (this.getSessionService().isLogged()) {            
        if(true){
            Establecimiento est = (Establecimiento)this.getSessionService().getEstablecimientos().get(0);            
            model.addAttribute("establecimiento", est);
            model.addAttribute("selected", "visita");
            return new ModelAndView("visita/solicitarvisitacobb", model);
        }

        return new ModelAndView(
                new RedirectView("login.htm"));
    }

    public ModelAndView estadovisitas(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        assignModelMapValues(model);
//        if (this.getSessionService().isLogged()) {
        if(true){
            
            Establecimiento est = (Establecimiento)this.getSessionService().getEstablecimientos().get(0);
            if (est == null) {
                return new ModelAndView(new RedirectView("establecimiento.htm"));
            }
            model.addAttribute("establecimiento", est);
            model.addAttribute("selected", "estadovisita");
            return new ModelAndView("visita/estadovisitas", model);
        }

        return new ModelAndView(
                new RedirectView("login.htm"));
    }

    public ModelAndView resultadovisita(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        assignModelMapValues(model);
//        if (this.getSessionService().isLogged()) {
        if(true){
            model.addAttribute("selected", "sol_cobb");
            return new ModelAndView("visita/resultadovisita", model);
        }
        return new ModelAndView(new RedirectView("login.htm"));
    }
}
