package br.com.bookman.facade;

/**
 * Created by marcus on 30/10/17.
 */
public interface IFacade {

    <T> T get(Class<T> clazz) throws Exception;
}
