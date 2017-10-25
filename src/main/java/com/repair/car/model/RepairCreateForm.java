package com.repair.car.model;


import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class RepairCreateForm {

    private static final String REPAIR_COST_PATTERN = "^[0-9]*$";
    private static final String VEHICLE_PLATENO_PATTERN = "^[A-Z]{3}-[0-9]{4}$";

    private Long repairId;
    @NotEmpty(message = "{vehicleRegister.plateNo.empty}")
    @Pattern(regexp = VEHICLE_PLATENO_PATTERN, message = "{vehicleRegister.plateNo.invalid}")
   // @Size(min = PLATENO_SIZE, max = PLATENO_SIZE, message = "{vehicleRegister.plateNo.size}")
    private String plateNo;
    private String vehiclePlateNo;
    private String repairDate;
    private String repairStatus;
    private String repairType;

    @Pattern(regexp = REPAIR_COST_PATTERN, message = "{repair.repairCost.invalid}")
    private int repairCost;
    private String repairDescription;

    public Long getRepairId() {
        return repairId;
    }

    public void setRepairId(Long repairId) {
        this.repairId = repairId;
    }

    public String getVehiclePlateNo() {
        return vehiclePlateNo;
    }

    public void setVehiclePlateNo(String vehiclePlateNo) {
        this.vehiclePlateNo = vehiclePlateNo;
    }

    public String getRepairDate() {
        return repairDate;
    }

    public void setRepairDate(String repairDate) {
        this.repairDate = repairDate;
    }

    public String getRepairStatus() {
        return repairStatus;
    }

    public void setRepairStatus(String repairStatus) {
        this.repairStatus = repairStatus;
    }

    public String getRepairType() {
        return repairType;
    }

    public void setRepairType(String repairType) {
        this.repairType = repairType;
    }

    public int getRepairCost() {
        return repairCost;
    }

    public void setRepairCost(int repairCost) {
        this.repairCost = repairCost;
    }

    public String getRepairDescription() {
        return repairDescription;
    }

    public void setRepairDescription(String repairDescription) {
        this.repairDescription = repairDescription;
    }
}
