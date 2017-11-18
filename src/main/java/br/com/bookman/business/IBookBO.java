package br.com.bookman.business;


import br.com.bookman.model.Book;

import javax.persistence.PersistenceException;
import java.util.List;

public interface IBookBO {

    void save(Book book) throws PersistenceException;
    void update(Book book, String operation) throws PersistenceException;
    List<Book> getAvaliables() throws PersistenceException;
    List<Book> getByGenre(Integer genreID) throws PersistenceException;
    Book findByISBN(String isbn) throws PersistenceException;
}
