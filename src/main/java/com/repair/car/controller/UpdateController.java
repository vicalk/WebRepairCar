package com.repair.car.controller;

import com.repair.car.converters.UserConverter;
import com.repair.car.domain.User;
import com.repair.car.model.RegistrationForm;
import com.repair.car.services.AccountService;
import com.repair.car.services.UserService;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
public class UpdateController {
    private final static org.slf4j.Logger logger = LoggerFactory.getLogger(UpdateController.class);
    private static final String REGISTER_FORM = "registrationForm";

    @Autowired
    private UserService userService;

    @Autowired
    private AccountService accountService;

    @RequestMapping(value="/update/user/{afm}", method= RequestMethod.GET)
    public String editUser(@PathVariable String afm,Model model){

        User retrievedUser = userService.findByAfm(afm).get(0);
        RegistrationForm registrationForm = UserConverter.buildRegistrationForm(retrievedUser);
        //adding to model that form
        model.addAttribute(REGISTER_FORM, registrationForm);
        return "update";
    }

    @RequestMapping(value="/update/user/{afm}", method= RequestMethod.POST)
    public String updateUser(@PathVariable String afm,@Valid @ModelAttribute(REGISTER_FORM)
                             RegistrationForm registrationForm,
                             BindingResult bindingResult,
                             RedirectAttributes redirectAttributes){
        try {
            User user = UserConverter.buildUpdateUserObject(registrationForm);
            userService.save(user);
        } catch (Exception exception) {
            //if an error occurs show it to the user
            redirectAttributes.addFlashAttribute("errorMessage", exception.getMessage());
            logger.error("User registration failed: " + exception);
        }
        return "update";
    }

    /*@RequestMapping(value="/delete/user/{afm}", method=RequestMethod.POST)
    public String deleteUser(@PathVariable String afm,@Valid @ModelAttribute(REGISTER_FORM)
                             RegistrationForm registrationForm,
                             BindingResult bindingResult,
                             RedirectAttributes redirectAttributes){
        try {
            User user = UserConverter.buildUpdateUserObject(registrationForm);
            userService.delete(user);
        } catch (Exception exception) {
            //if an error occurs show it to the user
            redirectAttributes.addFlashAttribute("errorMessage", exception.getMessage());
            logger.error("User registration failed: " + exception);
        }
        return "search";
    }*/
}
