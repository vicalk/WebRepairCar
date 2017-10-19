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


//@Controller
//public class RegistrationController {
//    private final static org.slf4j.Logger logger = LoggerFactory.getLogger(RegistrationController.class);
//    private static final String REGISTER_FORM = "registrationForm";
//
//    @Autowired
//    private AccountService accountService;
//
//    @RequestMapping(value = "/register", method = RequestMethod.GET)
//    public String register(Model model) {
//        model.addAttribute(REGISTER_FORM, new RegistrationForm());
//        return "register";
//    }


//    @RequestMapping(value = "/register", method = RequestMethod.POST)
//    public String register(@Valid @ModelAttribute(REGISTER_FORM)
//                                   RegistrationForm registrationForm,
//                           BindingResult bindingResult, HttpSession session,
//                           RedirectAttributes redirectAttributes) {
//
//        if (bindingResult.hasErrors()) {
//
//            logger.error(String.format("%s Validation Errors present: ", bindingResult.getErrorCount()));
//            return "register";
//        }
//
//        try {
//            User user = UserConverter.buildUserObject(registrationForm);
//            accountService.register(user);
//            session.setAttribute("username", registrationForm.getEmail());
//
//        } catch (Exception exception) {
//            //if an error occurs show it to the user
//            redirectAttributes.addFlashAttribute("errorMessage", exception.getMessage());
//            logger.error("User registration failed: " + exception);
//            return "redirect:/register";
//        }
//
//
//        redirectAttributes.addFlashAttribute("message", "You have sucessfully completed registration");
//        return "redirect:/";
//
//
//    }


//}
