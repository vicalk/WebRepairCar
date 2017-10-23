package com.repair.car.services;

import com.repair.car.Exceptions.InvalidCredentialsException;
import com.repair.car.converters.UserConverter;
import com.repair.car.model.UserRegisterForm;
import com.repair.car.repositories.UserRepository;
import com.repair.car.domain.User;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service
@Transactional
public class UserServiceImpl implements UserService {
    private final static org.slf4j.Logger LOG = LoggerFactory.getLogger(UserServiceImpl.class);
    private Set<String> loggedInUsers = new HashSet<>();

    @Autowired
    private UserRepository userRepository;

    @Override
    public User login(String email, String password) throws AuthenticationException {


        User retrievedUser = userRepository.findByEmailAndPassword(email, password);
        if (retrievedUser == null) {
            throw new InvalidCredentialsException("User not found!");
        }

        // loggedInUsers.add(username);
        return retrievedUser;
    }

    @Override
    public List<UserRegisterForm> findAllUsers() {


        List<User> retrievedUsers = userRepository.findAll();

        return retrievedUsers
                .stream()
                .map(UserConverter::buildOwnerForm)
                .collect(Collectors.toList());
    }


    @Override
    public List<UserRegisterForm> userSearch(String userSearchText, String userSearchType)  {

        List<User> retrievedUsers;

        switch (userSearchType) {
            case "AFM":
                 retrievedUsers =  userRepository.findByAfm(userSearchText);
                break;
            case "EMAIL":
                 retrievedUsers = userRepository.findByEmail(userSearchText);
                break;
            default:
                retrievedUsers = null ;
        }

            return retrievedUsers
                    .stream()
                    .map(UserConverter::buildOwnerForm)
                    .collect(Collectors.toList());
        }





    @Override
    public void logout(String email) {
        loggedInUsers.remove(email);
    }

    @Override
    public void register(User user) throws Exception {
        userRepository.save(user);
        LOG.debug("User has been registered!");
    }

    @Override
    public void deleteById(Long userId) {
        userRepository.deleteByUserId(userId);
    }

}

