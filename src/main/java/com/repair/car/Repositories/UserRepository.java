package com.repair.car.Repositories;


import com.repair.car.domain.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {

    Page<User> findAll(Pageable pageable);

    List<User> findAll();

    User findByEmailAndPassword(String email, String password);

    List<User> findByAfm(String afm);

    List<User> findByEmail(String email);

    User save(User user);

    void delete(User user);
}