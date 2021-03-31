package Service;

import Models.Reservation;
import Models.User;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service("iReservationService")
public interface ReservationService {
    public List<Reservation> getAllReservations();
    public int saveReservation(User user, String DateReservation, Boolean Confirmed) throws ClassNotFoundException, SQLException;
    public void updateReservation(int id);

}
