package br.com.bookman.dao;

import br.com.bookman.model.Genre;

import javax.persistence.PersistenceException;
import java.util.List;

public interface IGenreDAO {

    List<Genre> getAll() throws PersistenceException;
    Genre getByCode(Integer code) throws PersistenceException;
}
