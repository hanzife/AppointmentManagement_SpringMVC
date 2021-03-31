package dao;

import Models.Reservation;
import Models.User;

import java.sql.SQLException;
import java.util.List;

public interface DaoReservation {
    public List<Reservation> getAllReservations();
    public int saveReservation(User user, String DateReservation, Boolean Confirmed) throws ClassNotFoundException, SQLException;
    public void updateReservation(int id);

}
