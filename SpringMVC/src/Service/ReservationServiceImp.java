package Service;

import Models.Reservation;
import Models.User;
import dao.DaoReservation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class ReservationServiceImp implements ReservationService {
    @Autowired
    private DaoReservation reservationDao;

    public List<Reservation> getAllReservations() {
        return reservationDao.getAllReservations();
    }

    public int saveReservation(User user, String DateReservation, Boolean Confirmed) throws ClassNotFoundException, SQLException {
        return reservationDao.saveReservation(user, DateReservation, Confirmed);
    }

    public void updateReservation(int id) {
        reservationDao.updateReservation(id);
    }
}
