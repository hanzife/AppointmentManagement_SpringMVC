package dao;

import Models.User;

import java.sql.SQLException;
import java.util.List;

public interface DaoUser {

    public List<User> getAllUsers() throws ClassNotFoundException, SQLException;

    public int saveUser(String username, String email, String password, String role) throws ClassNotFoundException, SQLException;

    public void updateUser(int id, String email) throws ClassNotFoundException, SQLException;

    public void deleteUser(int IdUser) throws SQLException;
}
