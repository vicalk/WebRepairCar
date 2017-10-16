package com.repair.car.repositories;

import com.repair.car.domain.Vehicle;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import java.util.List;


@Repository
public interface VehicleRepository extends CrudRepository<Vehicle, Long> {

    List<Vehicle> findAll();

    List<Vehicle> findByPlateNo(String PlateNo);

    List<Vehicle> findByAfm(String Afm);


    Vehicle save(Vehicle vehicle);

}
