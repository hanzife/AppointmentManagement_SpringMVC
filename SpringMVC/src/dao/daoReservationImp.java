package dao;

import Models.Reservation;
import Models.User;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("reservationDao")
public class daoReservationImp implements  DaoReservation {

    public List<Reservation> getAllReservations() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        @SuppressWarnings("unchecked")
        List<Reservation> reservations = (List<Reservation>) session.createQuery("FROM Reservation ORDER BY IdReservation ASC").list();
        session.getTransaction().commit();
        return reservations;
    }


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

    //Update Reservation
    public void updateReservation(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();

        Reservation reservation = (Reservation) session.get(Reservation.class, id);
        reservation.setConfirmed(true);
        session.update(reservation);
        session.getTransaction().commit();
    }



}
