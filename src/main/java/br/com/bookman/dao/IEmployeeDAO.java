package br.com.bookman.dao;


import br.com.bookman.model.Employee;

import javax.persistence.PersistenceException;

@FunctionalInterface
public interface IEmployeeDAO {
    Employee getByIdentifierAndPassword(String identifier, String password) throws PersistenceException;
}
