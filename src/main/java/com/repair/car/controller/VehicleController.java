package com.repair.car.controller;

import com.repair.car.converters.UserConverter;
import com.repair.car.domain.User;
import com.repair.car.model.RegistrationForm;
import com.repair.car.services.AccountService;
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

    private final static org.slf4j.Logger logger = LoggerFactory.getLogger(RegistrationController.class);
    private static final String VEHICLE_FORM = "vehicleForm";

    @Autowired
    private VehicleService vehicleService;

    @RequestMapping(value = "/vehicleRegister", method = RequestMethod.GET)
    public String vehicleService(Model model) {
        model.addAttribute(VEHICLE_FORM, new RegistrationForm());
        return "vehicleRegister";
    }


    @RequestMapping(value = "/vehicleRegister", method = RequestMethod.POST)
    public String register(@Valid @ModelAttribute(VEHICLE_FORM)
                                   RegistrationForm registrationForm,
                           BindingResult bindingResult, HttpSession session,
                           RedirectAttributes redirectAttributes) {

        if (bindingResult.hasErrors()) {

            logger.error(String.format("%s Validation Errors present: ", bindingResult.getErrorCount()));
            return "vehicleRegister";
        }

        try {
            User user = UserConverter.buildUserObject(registrationForm);
            vehicleService.vehicleRegister(vehicle);
            session.setAttribute("username", registrationForm.getEmail());

        } catch (Exception exception) {
            //if an error occurs show it to the user
            redirectAttributes.addFlashAttribute("errorMessage", exception.getMessage());
            logger.error("User registration failed: " + exception);
            return "redirect:/register";
        }


        redirectAttributes.addFlashAttribute("message", "You have sucessfully completed registration");
        return "redirect:/";


    }





























}
