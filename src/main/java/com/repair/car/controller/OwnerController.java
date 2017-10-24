package com.repair.car.controller;

import com.repair.car.converters.UserConverter;
import com.repair.car.domain.User;
import com.repair.car.model.RegistrationForm;
import com.repair.car.model.SearchForm;
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
    private static final String REGISTER_FORM = "registrationForm";
    private static final String SEARCH_FORM = "searchForm";
    private static final String USERLIST = "users";

    @Autowired
    private AccountService accountService;

    @Autowired
    private UserService userService;

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
            logger.error(String.format("%s Validation Errors present: ", bindingResult.getErrorCount()));
            return "register";
        }

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
    //search Mappings
    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String login(Model model) {
        model.addAttribute(SEARCH_FORM, new SearchForm());
        return "search";
    }

    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public String search(@Valid @ModelAttribute(SEARCH_FORM) SearchForm searchForm, BindingResult bindindResult,
                         HttpSession session,
                         RedirectAttributes redirectAttributes) {

        /*if (bindindResult.hasErrors()){
            //redirectattributes.addfla("message", lathos)
            return "search";
        }*/
        List<User> userList;
        if (searchForm.getAfm().indexOf('@') != -1){
            //Search with mail
            userList = userService.findByEmail(searchForm.getAfm());
        }
        else{
            //Search with afm
            userList = userService.findByAfm(searchForm.getAfm());
        }

        if (USERLIST.isEmpty()) {
            redirectAttributes.addFlashAttribute("errorMessage", "No users found");
        }
        redirectAttributes.addFlashAttribute(USERLIST, userList);
        return "redirect:/search";
    }
    @RequestMapping(value="/delete/user/{afm}", method = RequestMethod.POST)
    public String deleteUser(@PathVariable String afm,
                             RedirectAttributes redirectAttributes){
        try {
            User user = userService.findByAfm(afm).get(0);
            userService.delete(user);
        } catch (Exception exception) {
            //if an error occurs show it to the user
            redirectAttributes.addFlashAttribute("errorMessage", exception.getMessage());
        }
        return "redirect:/search";
    }
    //update Mappings
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
}
