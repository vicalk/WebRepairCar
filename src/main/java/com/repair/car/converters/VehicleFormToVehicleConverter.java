package com.repair.car.converters;

import com.repair.car.domain.Vehicle;
import com.repair.car.model.VehicleRegisterForm;

public class VehicleFormToVehicleConverter {

    public static Vehicle buildVehicleObject(VehicleRegisterForm vehicleRegisterForm) {
        Vehicle vehicle = new Vehicle();
        vehicle.setPlateNo(vehicleRegisterForm.getPlateNo());
        vehicle.setCarModel(vehicleRegisterForm.getCarModel());
        vehicle.setColor(vehicleRegisterForm.getColor());
        vehicle.setYear(vehicleRegisterForm.getYear());
        vehicle.setAfm(vehicleRegisterForm.getAfm());


        return vehicle;
    }
}