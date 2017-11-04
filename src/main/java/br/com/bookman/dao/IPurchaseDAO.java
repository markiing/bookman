package br.com.bookman.dao;


import br.com.bookman.model.Purchase;

import javax.persistence.PersistenceException;

@FunctionalInterface
public interface IPurchaseDAO {

    void newPurchase(Purchase purchase) throws PersistenceException;

}
