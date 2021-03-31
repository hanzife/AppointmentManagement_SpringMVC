package dao;

import Models.User;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;

@Repository
@Component(value = "DaoUserImp")
public class daoUserImp implements DaoUser {
    /**
     * Save a User object in database
     */
    public int saveUser(String username, String email, String password, Boolean validated, String role) {
        User user = new User();
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(password);
        user.setValidated(validated);
        user.setRole(role);
        Session session = HibernateUtil.openSession();
        Transaction transaction = session.beginTransaction();
        int xx = (int) session.save(user);
        transaction.commit();

        return xx;
    }

    /**
     * List of all persisted User objects from database
     */
    public List<User> getAllUsers() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        @SuppressWarnings("unchecked")
        List<User> users = (List<User>) session.createQuery("FROM User ORDER BY IdUser ASC").list();
        session.getTransaction().commit();
        return users;
    }

    public User getUserByLogin(String email, String password) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Query query = session.createQuery("FROM User Where email = :email and password = :password AND validated = 1");
        query.setParameter("email", email);
        query.setParameter("password", password);
        List<User> users = (List<User>) query.list();
        session.getTransaction().commit();
        if(users.size()>0)
            return users.get(0);
        else return null;
    }

    /**
     * Update a specific User objec
     */
    public void updateUser(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();

        User user = (User) session.get(User.class, id);
        user.setValidated(true);
        session.update(user);
        session.getTransaction().commit();
    }

    /**
     * Delete a specific User object
     */
    public void deleteUser(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();

        User user = (User) session.get(User.class, id);
        session.delete(user);
        session.getTransaction().commit();
    }


}


