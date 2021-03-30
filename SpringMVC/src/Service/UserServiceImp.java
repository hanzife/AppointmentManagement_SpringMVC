package Service;

import Models.User;
import dao.DaoUser;
import dao.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class UserServiceImp implements UserService{
    @Autowired
    private DaoUser userDao;

    @Override
    public List<User> getAllUsers() throws ClassNotFoundException, SQLException {
        return userDao.getAllUsers();
    }

    @Override
    public int saveUser(String username, String email, String password, Boolean validated, String role) throws ClassNotFoundException, SQLException {
        return userDao.saveUser(username, email,password,validated, role);
    }

    @Override
    public void updateUser(int id, String email) throws ClassNotFoundException, SQLException {
    }

    @Override
    public void deleteUser(int IdUser) throws SQLException {
    }

    @Override
    public User getUserByLogin(String email, String password){
        return  userDao.getUserByLogin(email, password);

    }
}
