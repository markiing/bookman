package br.com.bookman.controller;


import br.com.bookman.business.IBookBO;
import br.com.bookman.dao.IGenreDAO;
import br.com.bookman.facade.IFacade;
import br.com.bookman.model.Book;
import br.com.bookman.model.Genre;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin")
public class AdministratorController {

    @Autowired
    private IFacade facade;

    @RequestMapping("/new/book")
    public ModelAndView newBook(ModelAndView modelAndView) throws Exception {
        modelAndView.setViewName("admin/newbook");
        modelAndView.addObject("genres",facade.get(IGenreDAO.class).getAll());
        return modelAndView;
    }

    @RequestMapping("/book/update")
    public ModelAndView update(Book book,String operation) throws Exception {
        ModelAndView modelAndView = new ModelAndView("redirect:/admin/registeredBooks");
        String message;
        String classe;
        try {
            facade.get(IBookBO.class).update(book, operation);
            message = "Livro alterado com sucesso !";
            classe = "info";
        }catch (Exception ex){
            message = ex.getMessage();
            classe = "danger";
        }
        modelAndView.addObject("message",message);
        modelAndView.addObject("classe",classe);
        return this.registeredBooks(modelAndView);
    }

    @RequestMapping("/registeredBooks")
    public ModelAndView registeredBooks(ModelAndView modelAndView) throws Exception {
        modelAndView.setViewName("admin/livrosCadastrados");
        modelAndView.addObject("booksRegistereds",facade.get(IBookBO.class).getAvaliables());
        return modelAndView;
    }


    @PostMapping("/new/book/register")
    public ModelAndView newBook(Book book,Integer g) throws Exception {
        ModelAndView mav = new ModelAndView("redirect:/admin/newbook");
        String message;
        String classe;
        try {
            Assert.notNull(g, "Você precisa preencher o gênero");
            book.setGenre(facade.get(IGenreDAO.class).getByCode(g));
            facade.get(IBookBO.class).save(book);
            message = "Livro inserido com sucesso !";
            classe = "info";
        }catch (Exception ex){
            message = ex.getMessage();
            classe = "danger";
        }
        mav.addObject("classe",classe);
        mav.addObject("message",message);
        return this.newBook(mav);
    }
}
