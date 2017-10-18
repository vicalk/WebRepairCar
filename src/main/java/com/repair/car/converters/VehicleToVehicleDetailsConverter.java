package com.repair.car.converters;

import com.repair.car.domain.Vehicle;
import com.repair.car.model.VehicleRegisterForm;

    public class VehicleToVehicleDetailsConverter {

    public static VehicleDetails convert(Vehicle vehicle) {
        VehicleDetails vehicleDetails = new VehicleDetails();
        vehicleDetails.setAuthorName(book.getAuthor());
        vehicleDetails.setPublicationYear(book.getYear());
        vehicleDetails.setTitle(book.getTitle());
        return vehicleDetails;
    }


}
