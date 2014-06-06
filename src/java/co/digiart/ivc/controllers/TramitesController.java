package co.digiart.ivc.controllers;

import co.digiart.ivc.model.UsuarioEntidad;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

/**
 *
 * @author Julian
 */
public class TramitesController extends AbstractController {

    public ModelAndView index(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        assignGuiaModelMapValues(model);
//        if (this.getSessionService().isLogged()) {
        if(true){    
            return new ModelAndView("tramites/index", model);
        }
        return new ModelAndView(new RedirectView("login.htm"));
    }
    
    public ModelAndView tramite(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        assignGuiaModelMapValues(model);
//        if (this.getSessionService().isLogged()) {
        if(true){        
            return new ModelAndView("tramites/tramite", model);
        }
        return new ModelAndView(new RedirectView("login.htm"));
    }
    
    public ModelAndView resultados(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        assignGuiaModelMapValues(model);
//        if (this.getSessionService().isLogged()) {
        if(true){        
            return new ModelAndView("tramites/resultados", model);
        }
        return new ModelAndView(new RedirectView("login.htm"));
    }
    
    public ModelAndView entidad(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        assignGuiaModelMapValues(model);
//        if (this.getSessionService().isLogged()) {
        if(true){        
            return new ModelAndView("tramites/entidad", model);
        }
        return new ModelAndView(new RedirectView("login.htm"));
    }
    
    public ModelAndView normas(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        assignGuiaModelMapValues(model);
//        if (this.getSessionService().isLogged()) {
        if(true){        
            return new ModelAndView("tramites/normas", model);
        }
        return new ModelAndView(new RedirectView("login.htm"));
    }
    
    public ModelAndView pot(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        assignGuiaModelMapValues(model);
//        if (this.getSessionService().isLogged()) {
        if(true){        
            return new ModelAndView("tramites/pot", model);
        }
        return new ModelAndView(new RedirectView("login.htm"));
    }
}
