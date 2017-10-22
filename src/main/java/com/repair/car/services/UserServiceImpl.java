package com.repair.car.services;

import com.repair.car.converters.SearchConverter;
import com.repair.car.converters.UserConverter;
//import com.codingSchool.bookstore.Converters.BookToBookDetailsConverter;
import com.repair.car.domain.User;
import com.repair.car.model.SearchForm;
import com.repair.car.Repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public List<User> findByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    @Override
    public List<User> findByAfm(String afm) {
        return userRepository.findByAfm(afm);
    }

    @Override
    public void save(User user) {
        userRepository.save(user);
    }
    @Override
    public void delete(User user){
        userRepository.delete(user);
    }
}
