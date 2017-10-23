package com.repair.car.controller;

import com.repair.car.converters.VehicleConverter;
import com.repair.car.domain.Vehicle;
import com.repair.car.model.VehicleRegisterForm;
import com.repair.car.services.VehicleService;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

public class VehicleController {

    private final static org.slf4j.Logger logger = LoggerFactory.getLogger(VehicleController.class);
    private static final String VEHICLE_REGISTER_FORM = "vehicleRegisterForm";
    private static final String VEHICLE_SEARCH_FORM = "vehicleSearchForm";
    private static final String VEHICLE_LIST = "userList";

    @Autowired
    private VehicleService vehicleService;

    @RequestMapping(value = "/vehicleRegister", method = RequestMethod.GET)
    public String vehicleRegister(Model model) {
        model.addAttribute(VEHICLE_REGISTER_FORM, new VehicleRegisterForm());
        return "vehicleRegister";
    }

    @RequestMapping(value = "/vehicleRegister", method = RequestMethod.POST)
    public String vehicleRegister(@Valid @ModelAttribute(VEHICLE_REGISTER_FORM)
                                          VehicleRegisterForm vehicleRegisterForm,
                                  Model model,
                                  BindingResult bindingResult, HttpSession session,
                                  RedirectAttributes redirectAttributes) {

        if (bindingResult.hasErrors()) {

            logger.error(String.format("%s Validation Errors present: ", bindingResult.getErrorCount()));
            return "vehicleRegister";
        }

        try {
            Vehicle vehicle = VehicleConverter.buildVehicleObject(vehicleRegisterForm);
            vehicleService.vehicleRegister(vehicle);


        } catch (Exception exception) {
            //if an error occurs show it to the user
            redirectAttributes.addFlashAttribute("errorMessage", exception.getMessage());
            logger.error("Vehicle registration failed: " + exception);
            return "redirect:/vehicleRegister";
        }

        redirectAttributes.addFlashAttribute("message", "You have sucessfully completed registration");
        return "redirect:/";
    }

//    @RequestMapping(value = "/vehicleSearch", method = RequestMethod.GET)
//    public String vehicleSearch(Model model) {
//        model.addAttribute(VEHICLE_SEARCH_FORM, new VehicleSearchForm());
//        return "vehicleSearch";
//    }
//
//    @RequestMapping(value = "/vehicleSearch", method = RequestMethod.POST)
//    public String vehicleSearch(@ModelAttribute(VEHICLE_SEARCH_FORM) VehicleSearchForm vehicleSearchForm,
//                         HttpSession session,
//                         RedirectAttributes redirectAttributes) {
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






























