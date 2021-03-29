package Service;

import Models.User;
import dao.DaoReservation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;

@Service
public class ReservationServiceImp implements ReservationService  {
    @Autowired
    private DaoReservation reservationDao;
    public int saveReservation(User user, String DateReservation, Boolean Confirmed) throws ClassNotFoundException, SQLException {
        return reservationDao.saveReservation(user, DateReservation,Confirmed);
    }
}
