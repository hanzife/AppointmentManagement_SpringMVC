package Service;

import Models.User;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service("iUserService")
public interface UserService {
    public List<User> getAllUsers() throws ClassNotFoundException, SQLException;
    public int saveUser(String username, String email, String password, Boolean validated, String role) throws ClassNotFoundException, SQLException;
    public void updateUser(int id, String email) throws ClassNotFoundException, SQLException;
    public void deleteUser(int IdUser) throws SQLException;
    public User getUserByLogin(String email, String password);
}
