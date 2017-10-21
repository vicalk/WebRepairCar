package com.repair.car.controller;

import com.repair.car.converters.UserConverter;
import com.repair.car.domain.User;
import com.repair.car.model.UserRegisterForm;
import com.repair.car.services.UserService;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

public class UserController {

    private final static org.slf4j.Logger logger = LoggerFactory.getLogger(UserController.class);
    private static final String REGISTER_FORM = "userRegisterForm";

    @Autowired
    private UserService userService;


    @RequestMapping(value = "/userCreate", method = RequestMethod.GET)
    public String userRegister(Model model) {


        model.addAttribute(REGISTER_FORM, new UserRegisterForm());
        return "userCreate";
    }


    @RequestMapping(value = "/userCreate", method = RequestMethod.POST)
    public String userRegister(@Valid @ModelAttribute(REGISTER_FORM)
                                   UserRegisterForm userRegisterForm,
                           Model model,
                           BindingResult bindingResult, HttpSession session,
                           RedirectAttributes redirectAttributes) {

        if (bindingResult.hasErrors()) {
            //have some error handling here, perhaps add extra error messages to the model
            //for now we're going to return a view ( register) but normally we would redirect to the
            //get method after adding the binding result and the form to the redirect attributes.
            logger.error(String.format("%s Validation Errors present: ",
                    bindingResult.getErrorCount()));
            model.addAttribute(REGISTER_FORM, userRegisterForm);
            return "userCreate";
        }

        //here we would have the logic for sending the registration request  to our service
        // and then redirect to the home page
        //we want to show the user's username in the homepage welcome message, so we'll use session storage for that
        //We'll also pass a second parameter using Redirect attributes to do the same thing

        try {
            User user = UserConverter.buildUserObject(userRegisterForm);
            userService.register(user);
            session.setAttribute("email", userRegisterForm.getEmail());

        } catch (Exception exception) {
            //if an error occurs show it to the user
            redirectAttributes.addFlashAttribute("errorMessage", exception.getMessage());
            logger.error("User registration failed: " + exception);
        }


        redirectAttributes.addFlashAttribute("message", "You have sucessfully completed registration");
        return "redirect:/admin/userCreate";


    }


}


