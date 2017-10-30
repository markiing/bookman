package br.com.bookman.business;


import br.com.bookman.model.Book;

import javax.persistence.PersistenceException;
import java.util.List;

public interface IBookBO {

    List<Book> getAvaliables() throws PersistenceException;
}
