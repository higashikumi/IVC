package co.digiart.ivc.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

/**
 *
 * @author Julian
 */
public class GeneralController extends AbstractController {

    public ModelAndView logout(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        this.getSessionService().logout();
        return new ModelAndView(new RedirectView("index.htm"));
    }

}
