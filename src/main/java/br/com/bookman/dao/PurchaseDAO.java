package br.com.bookman.dao;


import br.com.bookman.model.Purchase;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceException;
import javax.transaction.Transactional;

@Repository
@Transactional
public class PurchaseDAO implements IPurchaseDAO {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public void newPurchase(Purchase purchase) throws PersistenceException {
        entityManager.persist(purchase);
    }
}
