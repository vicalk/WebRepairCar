package com.repair.car.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class VehicleRegisterForm {

    private static final String PLATENO_PATTERN = "^[A-Z]{3}-[0-9]{4}$";

    private static final String NUMBERS_PATTERN = "^[0-9]*$";

    private static final String CHARACTERS_PATTERN = "^[a-zA-Z ]*$";

    private static final String NUMBERSCHARACTERS_PATTERN = "^[a-zA-Z0-9]*$";

    private static final int PLATENO_SIZE = 8;

    private static final int AFM_SIZE = 9;

    @NotNull(message = "{vehicleRegister.plateNo.null}")
    @Pattern(regexp = PLATENO_PATTERN, message = "{vehicleRegister.afm.invalid}")
    @Size(min = PLATENO_SIZE, max = PLATENO_SIZE, message = "{vehicleRegister.afm.size}")
    private String plateNo;

    @Pattern(regexp = NUMBERSCHARACTERS_PATTERN, message = "{vehicleRegister.carModel.invalid}")
    private String carModel;

    @Pattern(regexp = NUMBERS_PATTERN, message = "{vehicleRegister.year.invalid}")
    private String year;

    @Pattern(regexp = CHARACTERS_PATTERN, message = "{vehicleRegister.color.invalid}")
    private String color;


    @Pattern(regexp = NUMBERS_PATTERN, message = "{vehicleRegister.afm.invalid}")
    @Size(min = AFM_SIZE, max = AFM_SIZE, message = "{vehicleRegister.afm.size}")
    private String afm;

    public String getPlateNo() {
        return plateNo;
    }

    public void setPlateNo(String plateNo) {
        this.plateNo = plateNo;
    }

    public String getCarModel() {
        return carModel;
    }

    public void setCarModel(String carModel) {
        this.carModel = carModel;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getAfm() {
        return afm;
    }

    public void setAfm(String afm) {
        this.afm = afm;
    }
}
