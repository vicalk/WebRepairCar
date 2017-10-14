package com.repair.car.services;

import com.repair.car.domain.User;
import org.springframework.security.core.AuthenticationException;


public interface AccountService {

    void login(String username, String password) throws AuthenticationException;

    void logout(String username) throws Exception;

    void register(User user) throws Exception;
}
