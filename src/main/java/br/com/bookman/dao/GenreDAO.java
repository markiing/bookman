package br.com.bookman.dao;

import br.com.bookman.model.Book;
import br.com.bookman.model.Genre;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceException;
import javax.persistence.TypedQuery;
import java.util.List;


@Repository
public class GenreDAO implements IGenreDAO {

    @PersistenceContext
    private EntityManager em;

    @Override
    public List<Genre> getAll() throws PersistenceException {
        TypedQuery<Genre> query = em.createNamedQuery("Genre.findAll", Genre.class);
        return query.getResultList();
    }
}
