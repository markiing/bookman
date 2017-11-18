package br.com.bookman.controller;


import br.com.bookman.business.IBookBO;
import br.com.bookman.business.IEmployeeBO;
import br.com.bookman.dao.IBookDAO;
import br.com.bookman.dao.IEmployeeDAO;
import br.com.bookman.dao.IGenreDAO;
import br.com.bookman.facade.IFacade;
import br.com.bookman.model.Book;
import br.com.bookman.model.Employee;
import br.com.bookman.model.Purchase;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Calendar;
import java.util.List;

@Controller
@RequestMapping("/commerce")
public class CommerceController {

    @Autowired
    private IFacade facade;

    @RequestMapping({"/",""})
    public ModelAndView index(ModelAndView modelAndView) {
        modelAndView.setViewName("commerce/principal");
        try {
            modelAndView.addObject("genres", facade.get(IGenreDAO.class).getAll());
            modelAndView.addObject("bookNews", facade.get(IBookDAO.class).getNews());
        } catch (Exception ex) {
            modelAndView.addObject("error", ex.getMessage());
        }
        return modelAndView;
    }

    @GetMapping("/filter/genre/{genre}")
    public ModelAndView getByGenre(@PathVariable("genre") Integer genreId) {
        ModelAndView mav = new ModelAndView("commerce/search");
        try {
            List<Book> books = facade.get(IBookBO.class).getByGenre(genreId);
            mav.addObject("filterMessage", String.format("Livros filtrados com o genero %s", books.get(0).getGenre().getGenre()));
            mav.addObject("books", books);
        } catch (Exception e) {
            mav.addObject("error", e.getMessage());
        }
        return mav;
    }

    @GetMapping("/details/{isbn}")
    public ModelAndView getDetails(@PathVariable(name = "isbn") String isbn, HttpServletResponse response) throws IOException {
        ModelAndView maV = new ModelAndView();
        try {
            maV.addObject("bookDetails", facade.get(IBookBO.class).findByISBN(isbn));
            maV.addObject("genres", facade.get(IGenreDAO.class).getAll());
            maV.setViewName("commerce/details");
        } catch (Exception ex) {
            response.sendRedirect("/Bookman/commerce");
            maV.addObject("error", ex.getMessage());
        }
        return maV;
    }


    @PostMapping("/purchase")
    public ModelAndView purchase(String matricula, String senha, String isbn) {
        ModelAndView mAV = new ModelAndView("commerce/details");
        try {
            Book book = facade.get(IBookBO.class).findByISBN(isbn);
            Employee employee = facade.get(IEmployeeBO.class).getByIdentifierAndPassword(matricula, senha);
            Purchase purchase = new Purchase(null, book, Calendar.getInstance().getTime(), employee, null);
            facade.get(IEmployeeBO.class).newPurchase(purchase);
            mAV.addObject("bookDetails", facade.get(IBookBO.class).findByISBN(isbn));
            mAV.addObject("message", String.format("Livro %s comprado com sucesso !", book.getTitle()));
        } catch (Exception ex) {
            mAV.addObject("error", ex.getMessage());
            index(mAV);
        }
        return mAV;
    }
}
