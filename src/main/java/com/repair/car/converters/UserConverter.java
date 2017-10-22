package com.repair.car.converters;

import com.repair.car.domain.User;
import com.repair.car.model.RegistrationForm;
import org.hibernate.usertype.UserType;


public class UserConverter {

    //Registration Form to User
    //Used for register
    public static User buildUserObject(RegistrationForm registrationForm) {
        User user = new User();
        user.setAfm(registrationForm.getAfm());
        user.setFirstname(registrationForm.getFirstname());
        user.setLastname(registrationForm.getLastname());
        user.setEmail(registrationForm.getEmail());
        user.setRole(registrationForm.getRole());
        user.setPassword(registrationForm.getPassword());
        user.setAddress(registrationForm.getAddress());
        return user;
    }

    //RegistrationForm -> User with UserID
    //Used for updates
    public static User buildUpdateUserObject(RegistrationForm registrationForm){
        User user = new User();
        user.setUserId(registrationForm.getUserID());
        user.setAfm(registrationForm.getAfm());
        user.setFirstname(registrationForm.getFirstname());
        user.setLastname(registrationForm.getLastname());
        user.setEmail(registrationForm.getEmail());
        user.setRole(registrationForm.getRole());
        user.setPassword(registrationForm.getPassword());
        user.setAddress(registrationForm.getAddress());
        return user;
    }

    //User -> RegistrationForm
    //Used for updates
    public static RegistrationForm buildRegistrationForm(User user) {
        RegistrationForm registrationForm = new RegistrationForm();
        registrationForm.setUserID(user.getUserId());
        registrationForm.setRole(user.getRole());
        registrationForm.setAfm(user.getAfm());
        registrationForm.setFirstname(user.getFirstname());
        registrationForm.setLastname(user.getLastname());
        registrationForm.setEmail(user.getEmail());
        registrationForm.setPassword(user.getPassword());
        registrationForm.setAddress(user.getAddress());
        return registrationForm;
    }

}
