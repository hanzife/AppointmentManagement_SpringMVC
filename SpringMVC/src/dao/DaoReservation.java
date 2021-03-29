package dao;

import Models.User;

import java.sql.SQLException;

public interface DaoReservation {
    public int saveReservation(User user, String DateReservation, Boolean Confirmed) throws ClassNotFoundException, SQLException;


}
