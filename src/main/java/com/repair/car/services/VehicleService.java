package com.repair.car.services;


import com.repair.car.domain.Vehicle;
import com.repair.car.model.VehicleDetails;
import java.util.List;


public interface VehicleService {


    void vehicleRegister(Vehicle vehicle) throws Exception;

    List<VehicleDetails> findByPlateNo(String plateNo);




}
