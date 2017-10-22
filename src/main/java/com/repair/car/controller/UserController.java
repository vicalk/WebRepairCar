package com.repair.car.controller;

import com.repair.car.converters.UserConverter;
import com.repair.car.domain.User;
import com.repair.car.model.UserRegisterForm;
import com.repair.car.model.UserSearchForm;
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

@Controller
public class UserController {

    private final static org.slf4j.Logger logger = LoggerFactory.getLogger(UserController.class);
    private static final String REGISTER_FORM = "userRegisterForm";
    private static final String SEARCH_FORM = "usersearchForm";

    @Autowired
    private UserService userService;


    @RequestMapping(value = "/admin/userCreate", method = RequestMethod.GET)
    public String userRegister(Model model) {


        model.addAttribute(REGISTER_FORM, new UserRegisterForm());
        return "userCreate";
    }


    @RequestMapping(value = "/admin/userCreate", method = RequestMethod.POST)
    public String userRegister(Model model,@Valid @ModelAttribute(REGISTER_FORM)
                                   UserRegisterForm userRegisterForm,
                           BindingResult bindingResult, HttpSession session,
                           RedirectAttributes redirectAttributes) {

        if (bindingResult.hasErrors()) {

            logger.error(String.format("%s Validation Errors present: ",
                    bindingResult.getErrorCount()));
            model.addAttribute(REGISTER_FORM, userRegisterForm);
            return "userCreate";
        }


        try {
            User user = UserConverter.buildUserObject(userRegisterForm);
            userService.register(user);


        } catch (Exception exception) {
            //if an error occurs show it to the user
            redirectAttributes.addFlashAttribute("errorMessage", exception.getMessage());
            logger.error("User registration failed: " + exception);
        }


        redirectAttributes.addFlashAttribute("message", "You have sucessfully completed registration");
        return "redirect:/admin/userCreate";


    }

    @RequestMapping(value = "admin/owners/search", method = RequestMethod.GET)
    public String search(Model model, @ModelAttribute(SEARCH_FORM) UserSearchForm userSearchForm) {

        pair= accountService.searchOwnerBySearchText(searchOwnerForm.getSearchText().replaceAll(" ",""));

        model.addAttribute(OWNERS_LIST,pair.getKey());
        model.addAttribute(SEARCH_OWNER,new SearchOwnerForm());
        model.addAttribute("message", pair.getValue());

        return "owners";
    }
}


