package com.repair.car.converters;

import com.repair.car.domain.Vehicle;
import com.repair.car.model.VehicleDetails;
import com.repair.car.model.VehicleRegisterForm;

    public class VehicleToVehicleDetailsConverter {

    public static VehicleDetails convert(Vehicle vehicle) {
        VehicleDetails vehicleDetails = new VehicleDetails();
        vehicleDetails.setPlateNo(vehicle.getPlateNo());
        vehicleDetails.setCarModel(vehicle.getCarModel());
        vehicleDetails.setYear(vehicle.getYear());
        vehicleDetails.setColor(vehicle.getYear());
        vehicleDetails.setAfm(vehicle.getYear());
        return vehicleDetails;
    }


}
