package br.com.bookman.controller;


import br.com.bookman.facade.IFacade;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @Autowired
    private IFacade facade;

    @RequestMapping("/commerce")
    public ModelAndView index() {
        try {
            ModelAndView modelAndView = new ModelAndView("commerce/principal");
            modelAndView.addObject("mensagem","Mensagem");
            return modelAndView;
        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }
        return null;
    }
}
