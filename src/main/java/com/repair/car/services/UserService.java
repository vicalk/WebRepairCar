package com.repair.car.services;

import com.repair.car.domain.User;
//import com.codingSchool.bookstore.Model.BookForm;

import java.util.List;

public interface UserService {

    List <User> findAllUsers();

    List <User> findByEmailOrAfm(String searchText);

    User findByEmail(String email);

    User findByAfm(String afm);

    void save(User user);

    void delete(User user);
}
