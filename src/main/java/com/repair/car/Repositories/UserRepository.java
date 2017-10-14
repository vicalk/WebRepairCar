package com.repair.car.Repositories;


import com.repair.car.domain.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {

    Page<User> findAll(Pageable pageable);

    User findByEmail(String email);

    User findByEmailAndPassword(String email, String password);

    User save(User user);
}
