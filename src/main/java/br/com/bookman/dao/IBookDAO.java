package br.com.bookman.dao;


import br.com.bookman.model.Book;

import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceException;
import java.util.List;

public interface IBookDAO {
    List<Book> getAvaliables() throws PersistenceException;
    List<Book> getNews() throws PersistenceException;
    Book getByISBN(String isbn) throws PersistenceException;
    void save(Book book) throws PersistenceException;
    void update(Book book) throws PersistenceException;
}
