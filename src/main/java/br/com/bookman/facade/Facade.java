package br.com.bookman.facade;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Component;


@Component
public class Facade implements IFacade {

    @Autowired
    private ApplicationContext context;

    @Override
    public <T> T get(Class<T> clazz) throws Exception {
        return context.getBean(clazz);
    }
}
