package com.repair.car.services;

//import com.codingSchool.bookstore.Converters.BookToBookDetailsConverter;
import com.repair.car.domain.User;
        import com.repair.car.Repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public User findByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    @Override
    public User findByAfm(String afm) {
        return userRepository.findByAfm(afm);
    }


    @Override
    public List<User> findByEmailOrAfm(String searchText) {
        return userRepository.findByEmailOrAfm(searchText,searchText);
    }

    @Override
    public void save(User user) {
        userRepository.save(user);
    }
    @Override
    public void delete(User user){
        userRepository.delete(user);
    }

    @Override
    public List<User> findAllUsers() {
        List<User> retrievedUsers = userRepository.findAll();

        return retrievedUsers;
    }
}
