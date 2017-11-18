package br.com.bookman.util;


import br.com.bookman.model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;

@Component
public class SessionUtil {

    private HttpServletRequest request;

    public SessionUtil(HttpServletRequest request) {
        this.request = request;
    }

    private String key = "employee";

    public boolean existeUsuarioAtivo(){
        return request.getSession().getAttribute(key) != null ? true : false ;
    }

    public void inserirUsuarioEmSessao(Employee employee){
        request.getSession().setAttribute(key,employee);
    }

    public void logOff(){
        request.getSession().invalidate();
    }
}
