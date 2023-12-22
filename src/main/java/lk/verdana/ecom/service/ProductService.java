package lk.verdana.ecom.service;

import lk.verdana.ecom.entity.Category;
import lk.verdana.ecom.entity.Product;
import lk.verdana.ecom.entity.User;
import lk.verdana.ecom.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class ProductService {
    public void save(Product product){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(product);
        transaction.commit();
        session.close();
    }
    public void delete(Product product){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(product);
        transaction.commit();
        session.close();
    }
    public void update(Product product){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.merge(product);
        transaction.commit();
        session.close();
    }
}
