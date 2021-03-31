package org.viv.controllers;

import Models.Reservation;
import Models.User;
import Service.ReservationService;
import Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;

@Controller
@RequestMapping
public class AdminController {

    @Autowired
    UserService iUserService;

    //To link between Services and Servlets
    @Autowired
    ReservationService iReservationService;


    @RequestMapping(value = "/validatedaccount", method = RequestMethod.POST)
    public String AccountValidate(@RequestParam("text_userID") int userID,  ModelMap model) throws SQLException, ClassNotFoundException {
        //validate user sign up
        iUserService.updateUser(userID);
        List<User> students = iUserService.getAllUsers();
        model.addAttribute("students", students);
        return "AdminDashAccounts";
    }

    @RequestMapping(value = "/reservations")
    public String ReservationsRequests(ModelMap model){

        List<Reservation> reservations = iReservationService.getAllReservations();
        model.addAttribute("reservations", reservations);
        return "AdminDashReservations";
    }

    @RequestMapping(value = "/ConfirmReservation", method = RequestMethod.POST)
    public String ConfirmReservation(@RequestParam("text_reservationID") int reservationID,  ModelMap model) throws SQLException, ClassNotFoundException {
        //validate user sign up
        iReservationService.updateReservation(reservationID);
        List<Reservation> reservations = iReservationService.getAllReservations();
        model.addAttribute("reservations", reservations);
        return "AdminDashReservations";
    }




}
