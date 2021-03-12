package org.viv.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import dao.daoUserImp;
import Models.User;
import java.util.List;
import org.springframework.web.bind.annotation.RequestMethod;
//import java.sql.SQLException;
//import org.springframework.ui.ModelMap;
//import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping
public class RegisterController{
    daoUserImp userImp = new daoUserImp();

    @RequestMapping("/signup")
    public String signupTest() {
        return "signup";
    }

    @RequestMapping(value = "/BookNow", method = RequestMethod.POST)
    public String BookingRequest() {
        try {

            String username = "";
            String email = "";
            String password = "";
            addUser(username, email, password);
        } catch (Exception Ex) {
            Ex.printStackTrace();
        }
        return "BookNow";
    }

    public void addUser( String username,   String email, String password){
        try {
            // Dump data by saving few objects with hibernate
            //ModelMap m = null;
            System.out.println("Inserting");
            userImp.saveUser(username, email, password, "Student");
            String msg = "Users been insetred with Success!";
            // m.addAttribute("msg_success", msg);
            System.out.println(msg);
            // Get all saved objects
            List<User> users = userImp.getAllUsers();
            System.out.println("\n*******List of all persisted students*******");
            for (User user : users) {
               System.out.println(user);
            }
        }
        catch (Exception ex){
            ex.printStackTrace();
        }
    }

}



/*
 * Update an object
 */
//.updateStudent(id3, "Tim Cook");

/*
 * Deletes an object
 */
//application.deleteStudent(id2);

/*
 * Retrieve all saved objects
 */
//List<Student> remaingStudents = application.getAllStudents();
//System.out.println("\n*******List of all remained persisted students*******");
//for (Student student : remaingStudents) {
//   System.out.println(student);
//}