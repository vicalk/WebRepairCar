package com.repair.car.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class UserController {
    @RequestMapping(value="/user", method= RequestMethod.GET)
    public String userPage(){
        //repairs twn vehicles tou sygkekrimenou user
        return "user";
    }
}
//
//    String email = addUsernameInModel(model);
//
//
//    User user = userService.findByEmail(email);
//
//    List<Repair> repairList = userService.findByUser(user);
//
//        model.addAttribute(USER,user);
//                model.addAttribute(REPAIR_DATA,repairList);
//
//                return "userInfo";