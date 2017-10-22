package com.repair.car.services;

import com.repair.car.Exceptions.InvalidCredentialsException;
import com.repair.car.repositories.UserRepository;
import com.repair.car.domain.User;
//import com.repair.car.Exceptions.InvalidCredentialsException;
//import com.repair.car.Exceptions.LogoutException;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

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
    public List<User> userSearch(String userSearchText, String userSearchType)  {

        List<User> retrievedUser;

        switch (userSearchType) {
            case "AFM":
                 retrievedUser =  userRepository.findByAfm(userSearchText);
                break;
            case "EMAIL":
                 retrievedUser = userRepository.findByEmail(userSearchText);
                break;
            default:
                retrievedUser = null ;
        }

        return retrievedUser;

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

}

