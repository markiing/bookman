package br.com.bookman.controller;


import br.com.bookman.business.IBookBO;
import br.com.bookman.dao.IBookDAO;
import br.com.bookman.dao.IGenreDAO;
import br.com.bookman.facade.IFacade;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class CommerceController {

    @Autowired
    private IFacade facade;

    @RequestMapping("/commerce")
    public ModelAndView index() {
        try {
            ModelAndView modelAndView = new ModelAndView("commerce/principal");
            modelAndView.addObject("genres",facade.get(IGenreDAO.class).getAll());
            modelAndView.addObject("bookNews",facade.get(IBookDAO.class).getNews());
            return modelAndView;
        }catch (Exception ex){
            //TODO DEVEMOS TRATAR AS MENSAGENS DE ERRO
            System.out.println(ex.getMessage());
        }
        return null;
    }

    @GetMapping("/commerce/details/{isbn}")
    public ModelAndView getDetails(@PathVariable(name = "isbn")String isbn, HttpServletResponse response) throws IOException {
        ModelAndView maV = new ModelAndView();
        try {
                maV.addObject("bookDetails", facade.get(IBookBO.class).findByISBN(isbn));
                maV.addObject("genres",facade.get(IGenreDAO.class).getAll());
                maV.setViewName("commerce/details");
                return maV;
        }catch (Exception ex){
            response.sendRedirect("/Bookman/commerce");
            System.out.println(ex.getMessage());
        }
        return null;
    }
}
