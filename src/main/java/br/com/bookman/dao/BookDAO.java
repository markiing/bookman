package br.com.bookman.dao;


import br.com.bookman.model.Book;
import org.springframework.stereotype.Repository;

import javax.persistence.*;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class BookDAO implements IBookDAO {

    @PersistenceContext
    private EntityManager em;


    @Override
    public List<Book> getAvaliables() throws PersistenceException {
        TypedQuery<Book> query = em.createNamedQuery("Book.findAll", Book.class);
        query.setParameter("visible", true);
        return query.getResultList();
    }

    @Override
    public List<Book> getNews() throws PersistenceException {
        TypedQuery<Book> query = em.createNamedQuery("Book.findNews", Book.class);
        query.setMaxResults(5);
        query.setParameter("visible", true);
        return query.getResultList();
    }

    @Override
    public List<Book> getByGenre(Integer genreID) throws PersistenceException {
        TypedQuery<Book> namedQuery = em.createNamedQuery("Book.findByGenre", Book.class);
        namedQuery.setParameter("codeGenre", genreID);
        namedQuery.setParameter("visible", true);
        return namedQuery.getResultList();
    }

    @Override
    public Book getByISBN(String isbn) throws PersistenceException {
        Book book = em.find(Book.class, isbn);
        return book;
    }

    @Override
    public void save(Book book) throws PersistenceException {
        em.persist(book);
    }

    @Override
    public void update(Book book) throws PersistenceException {
        String jpql = "update Book s SET s.title =:title, s.quantity =:quantity, s.yearPublished =:yearPublished, s.price =:price, s.pageQuantity =:pageQuantity, s.visible =:visible, s.sinopsis =:sinopsis, s.UrlFolder =:UrlFolder where s.isbn =:isbn";
        Query q = em.createQuery(jpql);
        q.setParameter("isbn", book.getIsbn());
        q.setParameter("sinopsis", book.getSinopsis());
        q.setParameter("visible", book.getVisible());
        q.setParameter("pageQuantity", book.getPageQuantity());
        q.setParameter("price", book.getPrice());
        q.setParameter("yearPublished", book.getYearPublished());
        q.setParameter("quantity", book.getQuantity());
        q.setParameter("title", book.getTitle());
        q.setParameter("UrlFolder",book.getUrlFolder());
        q.executeUpdate();
    }
}
