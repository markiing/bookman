package br.com.bookman.business;

import br.com.bookman.dao.IBookDAO;
import br.com.bookman.dao.IEmployeeDAO;
import br.com.bookman.dao.IPurchaseDAO;
import br.com.bookman.model.Employee;
import br.com.bookman.model.Purchase;
import br.com.bookman.util.CryptUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import java.security.NoSuchAlgorithmException;

@Service
public class EmployeeBO implements IEmployeeBO {

    @Autowired
    private IEmployeeDAO employeeDAO;

    @Autowired
    private IPurchaseDAO purchaseDAO;

    @Autowired
    private IBookDAO bookDAO;

    @Override
    public Employee getByIdentifierAndPassword(String identifier, String password) throws NoSuchAlgorithmException {
        Assert.notNull(identifier,"Matrícula precisa estar preenchida");
        Assert.notNull(password,"Você precisa dizer a senha");
        Employee e = employeeDAO.getByIdentifierAndPassword(identifier, CryptUtil.md5(password));
        Assert.notNull(e,"Funcionário não encontrado !");
        return e;
    }

    @Override
    public void newPurchase(Purchase purchase) {
        purchaseDAO.newPurchase(purchase);
        purchase.getBook().subtractOneUnity();
        bookDAO.update(purchase.getBook());
    }
}
