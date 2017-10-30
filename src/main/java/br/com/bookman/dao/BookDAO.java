package br.com.bookman.dao;


import br.com.bookman.model.Book;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceException;
import javax.persistence.TypedQuery;
import java.util.List;

@Repository
public class BookDAO implements IBookDAO{

    @PersistenceContext
    private EntityManager em;


    @Override
    public List<Book> getAvaliables() throws PersistenceException {
        TypedQuery<Book> query = em.createNamedQuery("Book.findAll", Book.class);
        query.setParameter("visible",true);
        return query.getResultList();
    }

    @Override
    public void save(Book book) throws PersistenceException {
        em.persist(book);
    }

    @Override
    public void update(Book book) throws PersistenceException {
        em.merge(book);
    }
}
