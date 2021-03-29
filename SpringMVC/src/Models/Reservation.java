package Models;

import javax.persistence.*;
import java.util.Date;

public class Reservation {
    private static final long serialVersionUID = 6832006422622219737L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int IdReservation;

    @ManyToOne
    private User user;

    @Column(name = "DATARESERVATION", nullable = false)
    private String DateReservation;

    @Column(name = "CONFIRMED", nullable = false)
    private Boolean Confirmed;

    public int getIdReservation() {
        return IdReservation;
    }

    public void setIdReservation(int idReservation) {
        IdReservation = idReservation;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getDateReservation() {
        return DateReservation;
    }

    public void setDateReservation(String dateReservation) {
        DateReservation = dateReservation;
    }

    public Boolean getConfirmed() {
        return Confirmed;
    }

    public void setConfirmed(Boolean confirmed) {
        Confirmed = confirmed;
    }
}
