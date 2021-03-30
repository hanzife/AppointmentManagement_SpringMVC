package org.viv.controllers;

import Models.User;
import Service.ReservationService;
import Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;

@Controller
@RequestMapping
public class LoginController {

    @Autowired
    UserService iUserService;
    ReservationService iReservationService;

    //User user = new User();
    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    //Whats User Logged in
    @RequestMapping(value = "/Home", method = RequestMethod.POST)
    public String BookingRequest(@RequestParam("txt_email") String email, @RequestParam("txt_password") String password, ModelMap model, HttpSession session) throws SQLException, ClassNotFoundException {
        //get user
        User user = iUserService.getUserByLogin(email, password);
        List<User> students = iUserService.getAllUsers();
        /*for (User student : students) {
            System.out.println(student.getIdUser());
        }*/
        int idUser = user.getIdUser();
        session.setAttribute("userID", idUser);
        if (user.getRole().equals("Admin")) {
            model.addAttribute("students", students);
            return "AdminDashAccounts";
        } else {
            return "BookNow";
        }
    }

}
