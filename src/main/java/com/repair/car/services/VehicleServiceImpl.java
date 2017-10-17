package com.repair.car.services;


import com.repair.car.domain.Vehicle;
import com.repair.car.repositories.VehicleRepository;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


    @Service
    @Transactional
    public class VehicleServiceImpl implements VehicleService{

        private final static org.slf4j.Logger LOG = LoggerFactory.getLogger(com.repair.car.services.VehicleServiceImpl.class);

        @Autowired
        private VehicleRepository vehicleRepository;

        @Override
        public void vehicleRegister(Vehicle vehicle) throws Exception {
            vehicleRepository.save(vehicle);
            LOG.debug("Vehicle has been registered!");

        }
}
