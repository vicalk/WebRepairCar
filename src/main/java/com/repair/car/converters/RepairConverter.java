package com.repair.car.converters;

import com.repair.car.domain.Repair;
import com.repair.car.model.RepairCreateForm;

public class RepairConverter {


    public  static Repair buildRepairObject(RepairCreateForm repairForm){
        Repair repair = new Repair();
        repair.setRepairDate(repairForm.getRepairDate());
        repair.setRepairStatus(repairForm.getRepairStatus());
        repair.setRepairType(repairForm.getRepairType());
        repair.setRepairDescription(repairForm.getRepairDescription());
        repair.setRepairCost(repairForm.getRepairCost());
        return repair;
    }


}
