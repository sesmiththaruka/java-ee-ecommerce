package lk.verdana.ecom.service;

import lk.verdana.ecom.dto.UserDTO;
import lk.verdana.ecom.entity.User;
import lk.verdana.ecom.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class UserService {
    public User getUserByEmail(String email){
        Session session = HibernateUtil.getSessionFactory().openSession();
       return session.createQuery("select u from User u where u.email=:email", User.class).setParameter("email", email).uniqueResult();
//        return new UserDTO(user.getFirstname(), user.getLastname(), user.getEmail(), user.getPassword(), user.getMobile(), user.getUserType());
    }

    public void save(User user){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(user);
        transaction.commit();
        session.close();
    }
}
