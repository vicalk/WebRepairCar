package com.repair.car.converters;

import com.repair.car.domain.User;
import com.repair.car.model.RegistrationForm;


public class UserConverter {

    public static User buildUserObject(RegistrationForm registrationForm) {
        User user = new User();
        user.setAfm(registrationForm.getAfm());
        user.setLastname(registrationForm.getLastname());
        user.setFirstname(registrationForm.getFirstname());
        user.setAddress(registrationForm.getAddress());
        user.setEmail(registrationForm.getEmail());
        user.setPassword(registrationForm.getPassword());
        user.setUserType(registrationForm.getUserType());

        return user;
    }
}
