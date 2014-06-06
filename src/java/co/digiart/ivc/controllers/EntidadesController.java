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
public class EntidadesController extends AbstractController {

    public ModelAndView visitas(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        assignAdminModelMapValues(model);
        if (this.getAdminSessionService().isLogged()) {
            model.addAttribute("selected","solicitudes");
            return new ModelAndView("entidades/visitas", model);
        }
        return new ModelAndView(new RedirectView("administrador.htm"));
    }
    
    public ModelAndView tramites(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        assignAdminGenModelMapValues(model);
        if (this.getAdminSessionService().isLogged()) {
            model.addAttribute("selected", "tramites");
            return new ModelAndView("entidades/tramites", model);
        }
        return new ModelAndView(new RedirectView("administrador.htm"));
    }
    
    public ModelAndView editartramite(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        assignAdminGenModelMapValues(model);
        if (this.getAdminSessionService().isLogged()) {
            model.addAttribute("selected", "tramites");
            return new ModelAndView("entidades/tramite", model);
        }
        return new ModelAndView(new RedirectView("administrador.htm"));
    }
    
    public ModelAndView actividades(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        assignAdminGenModelMapValues(model);
        if (this.getAdminSessionService().isLogged()) {
            model.addAttribute("selected", "actividades");
            return new ModelAndView("entidades/adminactividadeconomica", model);
        }
        return new ModelAndView(new RedirectView("administrador.htm"));
    }
    
    public ModelAndView actividad(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        assignAdminGenModelMapValues(model);
        if (this.getAdminSessionService().isLogged()) {
            model.addAttribute("selected", "actividades");
            return new ModelAndView("entidades/editactividadeconomica", model);
        }
        return new ModelAndView(new RedirectView("administrador.htm"));
    }
    
    public ModelAndView actualizarbomberos(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        assignAdminModelMapValues(model);
        if (this.getAdminSessionService().isLogged()) {
            model.addAttribute("selected", "actualizar");            
            return new ModelAndView("entidades/actualizarbomberos", model);
        }
        return new ModelAndView(new RedirectView("administrador.htm"));
    }
    
}
