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

    @Override
    public List<Book> getByGenre(Integer genreID) throws PersistenceException {
        Assert.notNull(genreID,"Você precisa especificar um gênero !");
        List<Book> byGenre = bookDAO.getByGenre(genreID);
        Assert.notEmpty(byGenre,"Nenhum livro encontrado com esse gênero !");
        return byGenre;
    }

    @Override
    public Book findByISBN(String isbn) throws PersistenceException {
        Assert.notNull(isbn,"ISBN Vazio não passará !");
        Book b = bookDAO.getByISBN(isbn);
        Assert.notNull(b,"ISBN não encontrado na nossa base de dados");
        return b;
    }
}
