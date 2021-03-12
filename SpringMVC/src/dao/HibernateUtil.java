package dao;

import Models.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class HibernateUtil {
    private static SessionFactory factory;

    private HibernateUtil() {
    }

    public static SessionFactory getSessionFactory() {
        if (factory == null) {
            Configuration config = new Configuration().configure("hibernate.cfg.xml");
            factory = setupClasses(config).buildSessionFactory();
        }
        return factory;
    }

    public static Session openSession() {
        return getSessionFactory().openSession();
    }

    public static void closeSession() {
        getSessionFactory().close();
    }

    //
    private static Configuration setupClasses(Configuration config) {
        //Classes here
        config.addAnnotatedClass(User.class);
        //
        return config;
    }
}