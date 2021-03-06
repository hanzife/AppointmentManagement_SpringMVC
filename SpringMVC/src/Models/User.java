package Models;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.List;
import javax.persistence.*;

@Component
@Entity
@Table(name = "USER")
public class User{

    //the serialVersionUID attribute to remember versions of a Serializable class to verify that a loaded class and the serialized object are compatible.
    //Don't have to be unique
    private static final long serialVersionUID = 6832006422622219737L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int IdUser;

    @Column(name = "USERNAME", nullable = false)
    private String username;

    @Column(name = "EMAIL", nullable = false)
    private String email;

    @Column(name = "PASSWORD", nullable = false)
    private String password;

    @Column(name = "VALIDATED", nullable = false)
    private Boolean validated;


    @Column(name = "ROLE", nullable = false)
    private String role;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true)
    List<Reservation> reservations;

    public List<Reservation> getReservations() {
        return reservations;
    }

    public void setReservations(List<Reservation> reservations) {
        this.reservations = reservations;
    }

    public int getIdUser() {
        return IdUser;
    }

    public void setIdUser(int idUser) {
        IdUser = idUser;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public Boolean getValidated() {
        return validated;
    }

    public void setValidated(Boolean validated) {
        this.validated = validated;
    }

    /* //hash password by Id
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + IdUser;
        result = prime * result + ((password == null) ? 0 : password.hashCode());
        return result;
    }*/

}






