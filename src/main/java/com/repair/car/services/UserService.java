package com.repair.car.services;

import com.repair.car.domain.User;
import org.springframework.security.core.AuthenticationException;


public interface UserService {

    User login(String email, String password) throws AuthenticationException;

    void logout(String email) throws Exception;

    void register(User user) throws Exception;
}
