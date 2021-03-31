package test;

import Models.User;
import dao.DaoReservation;
import dao.DaoUser;
import dao.daoUserImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.sql.SQLException;
import java.util.ArrayList;

public class Testing {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        ApplicationContext appContext  = new ClassPathXmlApplicationContext("test/dispatcher-servlet.xml");
        DaoUser bean = (daoUserImp) appContext.getBean("DaoUserImp");
        ArrayList<User> list = (ArrayList<User>) bean.getAllUsers();
        for(User u :list) {
            System.out.println(u.toString());
        }
    }
}
