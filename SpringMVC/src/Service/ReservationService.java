package Service;

import Models.User;
import org.springframework.stereotype.Service;

import java.sql.SQLException;

@Service("iReservationService")
public interface ReservationService {
    public int saveReservation(User user, String DateReservation, Boolean Confirmed) throws ClassNotFoundException, SQLException;

}
