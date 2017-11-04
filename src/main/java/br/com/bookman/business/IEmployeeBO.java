package br.com.bookman.business;


import br.com.bookman.model.Employee;
import br.com.bookman.model.Purchase;

import javax.persistence.PersistenceException;
import java.security.NoSuchAlgorithmException;

public interface IEmployeeBO {

    Employee getByIdentifierAndPassword(String identifier, String password) throws NoSuchAlgorithmException;
    void newPurchase(Purchase purchase);
}
