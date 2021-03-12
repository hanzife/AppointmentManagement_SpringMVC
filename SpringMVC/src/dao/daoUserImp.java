package dao;

import Models.User;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;

@Repository
public class daoUserImp implements DaoUser{
    /** Save a User object in database */
    public int saveUser(String username, String email, String password, String role) {
        User user = new User();
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(password);
        user.setRole(role);
        Session session = HibernateUtil.openSession();
        Transaction transaction = session.beginTransaction();;
        session.save(user);
        transaction.commit();
        return 1;
    }
    /** List of all persisted User objects from database */
    public List<User> getAllUsers() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        @SuppressWarnings("unchecked")
        List<User> users = (List<User>) session.createQuery( "FROM User ORDER BY IdUser ASC").list();
        session.getTransaction().commit();
        return users;
    }
    /** Update a specific User objec */
    public void updateUser(int id, String email) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();

        User user = (User) session.get(User.class, id);
        user.setEmail(email);
        session.update(user);
        session.getTransaction().commit();
    }
    /** Delete a specific User object */
    public void deleteUser(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();

        User user  = (User) session.get(User.class, id);
        session.delete(user);
        session.getTransaction().commit();
    }
}


