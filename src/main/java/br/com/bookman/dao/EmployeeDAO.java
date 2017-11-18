package br.com.bookman.dao;


import br.com.bookman.model.Employee;
import org.springframework.stereotype.Repository;
import org.springframework.util.Assert;

import javax.persistence.*;

@Repository
public class EmployeeDAO implements IEmployeeDAO {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public Employee getByIdentifierAndPassword(String identifier, String password) throws PersistenceException {
        try {
            TypedQuery<Employee> employeeQuery = entityManager.createNamedQuery("Employee.findByIdentifierAndPassword", Employee.class);
            employeeQuery.setParameter("identifier", identifier);
            employeeQuery.setParameter("password", password);
            return employeeQuery.getSingleResult();
        }catch (NoResultException ex){
            throw new RuntimeException("Nenhum usuário encontrado com essas credenciais !");
        }
    }
}
