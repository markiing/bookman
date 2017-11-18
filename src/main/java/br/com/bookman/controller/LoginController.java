package br.com.bookman.controller;


import br.com.bookman.business.EmployeeBO;
import br.com.bookman.facade.IFacade;
import br.com.bookman.model.Employee;
import br.com.bookman.util.SessionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {

    @Autowired
    private IFacade facade;

    private SessionUtil sessionUtil;

    @RequestMapping(value = {"/login","/login/"})
    public String goToLoginScreen(){
        return "login";
    }

    @PostMapping(value = {"/login/auth","/login/auth/"})
    public ModelAndView logar(String matricula, String senha, HttpServletRequest request) throws Exception {
        ModelAndView mav = new ModelAndView();
        try {
            sessionUtil = new SessionUtil(request);
            Assert.notNull(matricula, "Você precisa digitar a matrícula");
            Assert.notNull(senha, "Você precisa digitar a senha");

            Employee employee = facade.get(EmployeeBO.class).getByIdentifierAndPassword(matricula, senha);
            sessionUtil.inserirUsuarioEmSessao(employee);
            mav.setViewName("redirect:admin/newbook");
        }catch (Exception ex){
            mav.setViewName("login");
            mav.addObject("error",ex.getMessage());
        }
        return mav;
    }

}
