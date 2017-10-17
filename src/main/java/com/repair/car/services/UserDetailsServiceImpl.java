/*
package com.repair.car.services;

import com.repair.car.Repositories.UserRepository;
import com.repair.car.domain.User;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    private final static org.slf4j.Logger LOG = LoggerFactory.getLogger(UserDetailsServiceImpl.class);

    @Autowired
    private UserRepository userRepository;

    @Override
    @Transactional
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {

        LOG.debug("Authenticating {}", email);
        User user = userRepository.findByEmail(email);
        if(user==null){

            System.out.println("not found");
        }

        Set<GrantedAuthority> grantedAuthorities = new HashSet<>();

        */
/*if (user == null) {
            throw new UsernameNotFoundException(email);
        }*//*

        if (user.getRole()==)
            grantedAuthorities.add(new SimpleGrantedAuthority("ADMIN"));
            //redirectToSucccesssURL(request, response, success_URL);

        return new org.springframework.security.core.userdetails.User(user.getEmail(), user.getPassword(), grantedAuthorities);
    }
    //to redirect tha bei se mia klash loginsuccesshandler kai tha se petaei antistoixa
    */
/*private void redirectToSucccesssURL(HttpServletRequest request, HttpServletResponse response, String Url) throws IOException{
        RedirectStrategy redirectStrategy = super.getRedirectStrategy();
        redirectStrategy.sendRedirect(request,response,success_URL);
    }*//*

}*/
