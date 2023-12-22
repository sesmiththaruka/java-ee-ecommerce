package lk.verdana.ecom.service;

import lk.verdana.ecom.entity.Category;
import lk.verdana.ecom.entity.Product;
import lk.verdana.ecom.entity.User;
import lk.verdana.ecom.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class CategoryService {
    public void save(Category category){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(category);
        transaction.commit();
        session.close();
    }
    public Category getCategoryByCategoryId(String id){
        System.out.println("service method id");
        System.out.println(id);
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.createQuery("select c from Category c where c.id=:id", Category.class).setParameter("id", id).uniqueResult();
//        return new UserDTO(user.getFirstname(), user.getLastname(), user.getEmail(), user.getPassword(), user.getMobile(), user.getUserType());
    }
    public void delete(Category category){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(category);
        transaction.commit();
        session.close();
    }
}
