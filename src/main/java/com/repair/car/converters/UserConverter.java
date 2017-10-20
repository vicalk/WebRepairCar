package com.repair.car.converters;

import com.repair.car.domain.User;
import com.repair.car.model.UserRegisterForm;


public class UserConverter {

    public static User buildUserObject(UserRegisterForm userRegisterForm) {
        User user = new User();
        user.setAfm(userRegisterForm.getAfm());
        user.setLastname(userRegisterForm.getLastname());
        user.setFirstname(userRegisterForm.getFirstname());
        user.setAddress(userRegisterForm.getAddress());
        user.setEmail(userRegisterForm.getEmail());
        user.setPassword(userRegisterForm.getPassword());
        user.setUserType(userRegisterForm.getUserType());

        return user;
    }
}
