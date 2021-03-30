package org.viv.controllers;

import Service.ReservationService;
import Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import Models.User;
import java.util.List;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping
public class RegisterController {
    @Autowired
    UserService iUserService;
    ReservationService iReservationService;
    //User user = new User();

    @RequestMapping("/signup")
    public String signupTest() {
        return "signup";
    }

    //After SignUp Button retrieve new user data & Redirect to the next step (BookNow)
    @RequestMapping(value = "/BookNow", method = RequestMethod.POST)
    public String BookingRequest(@RequestParam("txt_username") String username, @RequestParam("txt_email") String email, @RequestParam("txt_password") String password, HttpSession session) {
        try {
            //Insert new user
            User user = addUser(username, email, password);
            if (user != null) {
                session.setAttribute("user", user);
            }
        } catch (Exception Ex) {
            Ex.printStackTrace();
        }
        //Next step (BookNow)
        return "BookNow";
    }

    public User addUser(String username, String email, String password) {
        try {
            // Dump data by saving few objects with hibernate
            int idUser = iUserService.saveUser(username, email, password, false, "Student");
            User userX = new User();
            userX.setIdUser(idUser);
            //....
            //
            String msg = "Users been insetred with Success!";
            // m.addAttribute("msg_success", msg);
            System.out.println(msg);
            // Get all saved objects
            List<User> users = iUserService.getAllUsers();
            System.out.println("\n*******List of all persisted students*******");
            for (User user : users) {
                System.out.println(user);
            }
            return userX;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }

    @RequestMapping(value = "/index", method = RequestMethod.POST)
    public String BookingRequest(@RequestParam("txt_date") String txt_date, HttpSession session) {
        try {
            //Insert new Booking
            User user = (User) session.getAttribute("user");
            System.out.println("id: " + user.getIdUser());
            BookNow(user, txt_date, "0");
        } catch (Exception Ex) {
            Ex.printStackTrace();
        }
        return "index";
    }

    //Nook Now Function
    public void BookNow(User user, String txt_date, String confirmed) {
        try {
            // Dump data by saving few objects with hibernate
            iReservationService.saveReservation(user, txt_date, false);
            System.out.println("boo");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}