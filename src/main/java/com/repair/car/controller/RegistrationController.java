package com.repair.car.controller;

import com.repair.car.converters.UserConverter;
import com.repair.car.domain.User;
import com.repair.car.model.RegistrationForm;
import com.repair.car.services.AccountService;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;


@Controller
public class RegistrationController {
    private final static org.slf4j.Logger logger = LoggerFactory.getLogger(RegistrationController.class);
    private static final String REGISTER_FORM = "registrationForm";

    @Autowired
    private AccountService accountService;

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(Model model) {
        model.addAttribute(REGISTER_FORM, new RegistrationForm());
        return "register";
    }


    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@Valid @ModelAttribute(REGISTER_FORM)
                                   RegistrationForm registrationForm,
                           BindingResult bindingResult, HttpSession session,
                           RedirectAttributes redirectAttributes) {

        if (bindingResult.hasErrors()) {
            //have some error handling here, perhaps add extra error messages to the model
            //for now we're going to return a view ( register) but normally we would redirect to the
            //get method after adding the binding result and the form to the redirect attributes.
            logger.error(String.format("%s Validation Errors present: ", bindingResult.getErrorCount()));
            return "register";
        }

        //here we would have the logic for sending the registration request  to our service
        // and then redireect to the home page
        //we want to show the user's username in the homepage welcome message, so we'll use session storage for that
        //We'll also pass a second parameter using Redirect attributes to do the same thing

        try {
            User user = UserConverter.buildUserObject(registrationForm);
            accountService.register(user);
            //session.setAttribute("firstname", registrationForm.getFirstname());

        } catch (Exception exception) {
            //if an error occurs show it to the user
            redirectAttributes.addFlashAttribute("errorMessage", exception.getMessage());
            logger.error("User registration failed: " + exception);
            return "redirect:/register";
        }
        redirectAttributes.addFlashAttribute("message", "You have sucessfully completed registration");
        return "redirect:/admin";
    }


}
