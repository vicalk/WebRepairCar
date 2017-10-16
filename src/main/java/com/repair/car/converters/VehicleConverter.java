package com.repair.car.converters;

import com.repair.car.domain.User;
import com.repair.car.domain.Vehicle;
import com.repair.car.model.VehicleForm;

public class VehicleConverter {

    public static Vehicle buildVehicleObject(VehicleForm vehicleForm) {
        Vehicle vehicle = new Vehicle();
        vehicle.setPlateNo(vehicleForm.getPlateNo());
        vehicle.setCarModel(vehicleForm.getCarModel());
        vehicle.setColor(vehicleForm.getColor());
        vehicle.setYear(vehicleForm.getYear());
        vehicle.setAfm(vehicleForm.getAfm());


        return vehicle;
    }
}