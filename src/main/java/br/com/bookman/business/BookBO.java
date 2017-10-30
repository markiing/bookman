package br.com.bookman.business;


import br.com.bookman.dao.IBookDAO;
import br.com.bookman.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import javax.persistence.PersistenceException;
import java.util.List;

@Service
public class BookBO implements IBookBO{

    @Autowired
    private IBookDAO bookDAO;

    @Override
    public List<Book> getAvaliables() throws PersistenceException {
        List<Book> bookAvaliables = bookDAO.getAvaliables();
        Assert.notEmpty(bookAvaliables,"Não possuem livros cadastrados na base de dados !");
        return bookAvaliables;
    }
}
