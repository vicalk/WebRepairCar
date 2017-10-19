package com.repair.car.controller;


import com.repair.car.model.VehicleSearchForm;
import com.repair.car.services.AccountServiceImpl;
import com.repair.car.services.VehicleService;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import javax.servlet.http.HttpSession;
import java.util.List;

public class HomeController {

    private final static org.slf4j.Logger logger = LoggerFactory.getLogger(HomeController.class);
    private static final String VEHICLE_REGISTER_FORM = "vehicleRegisterForm";
    private static final String VEHICLE_SEARCH_FORM = "vehicleSearchForm";

    @Autowired
    private VehicleService vehicleService;


    @RequestMapping(value = "/vehicleSearch", method = RequestMethod.GET)
    public String vehicleSearch(Model model) {
        model.addAttribute(VEHICLE_SEARCH_FORM, new VehicleSearchForm());
        return "vehicleSearch";
    }
//
//    @RequestMapping(value = "/vehicleSearch", method = RequestMethod.POST)
//    public String vehicleSearch(@ModelAttribute(VEHICLE_SEARCH_FORM) VehicleSearchForm vehicleSearchForm,
//                                HttpSession session,
//                                RedirectAttributes redirectAttributes) {
//
//        List vehicleList = vehicleService.finByPlateNo(vehicleSearchForm.getPlateNo());
//
//        List vehicleList = vehicleService.finByAfm(vehicleSearchForm.getAfm());
//
//        if (vehicleList.isEmpty()) {
//            redirectAttributes.addFlashAttribute("errorMessage", "No vehicles found");
//        }
//
//        redirectAttributes.addFlashAttribute(VEHICLELIST, vehicleList);
//        return "redirect:/vehicleSearch";
//    }

    }



