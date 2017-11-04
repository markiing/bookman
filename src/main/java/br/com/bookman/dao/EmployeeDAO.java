package br.com.bookman.dao;


import br.com.bookman.model.Employee;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceException;
import javax.persistence.TypedQuery;

@Repository
public class EmployeeDAO implements IEmployeeDAO {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public Employee getByIdentifierAndPassword(String identifier, String password) throws PersistenceException {
        TypedQuery<Employee> employeeQuery = entityManager.createNamedQuery("Employee.findByIdentifierAndPassword", Employee.class);
        employeeQuery.setParameter("identifier", identifier);
        employeeQuery.setParameter("password",password);
        return employeeQuery.getSingleResult();
    }
}
