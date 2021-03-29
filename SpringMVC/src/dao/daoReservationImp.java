package dao;

import Models.Reservation;
import Models.User;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

@Repository
public class daoReservationImp implements  DaoReservation {
    //Request to book a day
    public int saveReservation(User user, String DateReservation, Boolean Confirmed) {
        Reservation reservation = new Reservation();
        reservation.setUser(user);
        reservation.setDateReservation(DateReservation);
        reservation.setConfirmed(Confirmed);
        Session session = HibernateUtil.openSession();
        Transaction transaction = session.beginTransaction();
        session.save(reservation);
        transaction.commit();
        return 1;
    }
}
