package de.gbsschulen.bookstore.book;

import de.gbsschulen.bookstore.login.User;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class BookService {

    private EntityManagerFactory entityManagerFactory;
    private EntityManager entityManager;

    public BookService(){
        entityManagerFactory = Persistence.createEntityManagerFactory("bookstore");
        entityManager = entityManagerFactory.createEntityManager();
    }

    public void save(Book book){
        entityManager.getTransaction().begin();
        entityManager.persist(book);
        entityManager.getTransaction().commit();
    }
}
