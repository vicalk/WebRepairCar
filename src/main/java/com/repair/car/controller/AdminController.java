package com.repair.car.controller;

import com.repair.car.domain.User;
import com.repair.car.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class AdminController {
    private static final String REPAIRLIST = "repairs";

    /*@Autowired
    private UserService repairService;*/

    @RequestMapping(value="/admin", method= RequestMethod.GET)
    public String adminPage(){
        //typwnei 10 epomena repairs me vash thn hmera kai wra
        //auth h lista tha dwthei sto .ftl arxeio
        /*List<Repairs> repairsList;
            //Search all repairs and get them in a list
            repairsList = repairService.findAll();

        redirectAttributes.addFlashAttribute(REPAIRLIST, repairsList);*/
        return "admin";
    }
}
