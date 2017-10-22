package com.repair.car.services;

import com.repair.car.domain.User;
import org.springframework.security.core.AuthenticationException;

import java.util.List;


public interface UserService {

    User login(String email, String password) throws AuthenticationException;

    void logout(String email) throws Exception;

    void register(User user) throws Exception;

    List<User> userSearch(String userSearchText, String userSearchType) ;


}
