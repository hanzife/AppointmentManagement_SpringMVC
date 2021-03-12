package Models;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
@Table(name = "USER")
public class User{

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

    @Column(name = "ROLE", nullable = false)
    private String role;


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






