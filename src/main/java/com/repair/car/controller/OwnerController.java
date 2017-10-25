package com.repair.car.controller;

import com.repair.car.converters.UserConverter;
import com.repair.car.domain.User;
import com.repair.car.model.UserRegistrationForm;
import com.repair.car.model.UserSearchForm;
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
import java.util.List;


@Controller
public class OwnerController {
    private final static org.slf4j.Logger logger = LoggerFactory.getLogger(OwnerController.class);
    private static final String REGISTER_FORM = "UserRegistrationForm";
    private static final String SEARCH_FORM = "UserSearchForm";
    private static final String USERLIST = "users";

    @Autowired
    private AccountService accountService;

    @Autowired
    private UserService userService;
    //Register Mappings
    @RequestMapping(value = "/admin/userRegister", method = RequestMethod.GET)
    public String register(Model model) {
        model.addAttribute(REGISTER_FORM, new UserRegistrationForm());
        return "userRegister";
    }


    @RequestMapping(value = "/admin/userRegister", method = RequestMethod.POST)
    public String register(@Valid @ModelAttribute(REGISTER_FORM)
                                   UserRegistrationForm userRegistrationForm,
                           BindingResult bindingResult, HttpSession session,
                           RedirectAttributes redirectAttributes) {

        if (bindingResult.hasErrors()) {
            logger.error(String.format("%s Validation Errors present: ", bindingResult.getErrorCount()));
            return "userRegister";
        }

        try {
            User user = UserConverter.buildUserObject(userRegistrationForm);
            accountService.register(user);
            //session.setAttribute("firstname", userRegistrationForm.getFirstname());

        } catch (Exception exception) {
            //if an error occurs show it to the user
            redirectAttributes.addFlashAttribute("errorMessage", exception.getMessage());
            logger.error("User registration failed: " + exception);
            return "redirect:/admin/userRegister";
        }
        redirectAttributes.addFlashAttribute("message", "You have sucessfully completed registration");
        return "redirect:/admin";
    }
    //search Mappings
    @RequestMapping(value = "/admin/userSearch", method = RequestMethod.GET)
    public String login(Model model) {
        model.addAttribute(SEARCH_FORM, new UserSearchForm());
        model.addAttribute(USERLIST,userService.findAllUsers());
        return "userSearch";
    }

    @RequestMapping(value = "/admin/userSearch", method = RequestMethod.POST)
    public String search(Model model, @Valid @ModelAttribute(SEARCH_FORM) UserSearchForm userSearchForm) {


        List<User> userList = userService.findByEmailOrAfm(userSearchForm.getSearchText());

        model.addAttribute(USERLIST, userList);
        return "userSearch";
    }
    @RequestMapping(value="/admin/userDelete/{afm}", method = RequestMethod.POST)
    public String deleteUser(@PathVariable String afm,
                             RedirectAttributes redirectAttributes){
        try {
            User user = userService.findByAfm(afm);
            userService.delete(user);
        } catch (Exception exception) {
            //if an error occurs show it to the user
            redirectAttributes.addFlashAttribute("errorMessage", exception.getMessage());
        }
        return "redirect:/admin/userSearch";
    }

    //update Mappings
    @RequestMapping(value="/admin/userUpdate/{afm}", method= RequestMethod.GET)
    public String editUser(@PathVariable String afm,Model model){

        User retrievedUser = userService.findByAfm(afm);
        UserRegistrationForm userRegistrationForm = UserConverter.buildRegistrationForm(retrievedUser);
        //adding to model that form
        model.addAttribute(REGISTER_FORM, userRegistrationForm);
        return "userUpdate";
    }

    @RequestMapping(value="/admin/userUpdate/{afm}", method= RequestMethod.POST)
    public String updateUser(@PathVariable String afm,@Valid @ModelAttribute(REGISTER_FORM)
            UserRegistrationForm userRegistrationForm,
                             BindingResult bindingResult,
                             RedirectAttributes redirectAttributes){
        try {
            User user = UserConverter.buildUpdateUserObject(userRegistrationForm);
            userService.save(user);
        } catch (Exception exception) {
            //if an error occurs show it to the user
            redirectAttributes.addFlashAttribute("errorMessage", exception.getMessage());
            logger.error("User registration failed: " + exception);
        }
        return "userUpdate";
    }
}
//