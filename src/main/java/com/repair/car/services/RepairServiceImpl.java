package com.repair.car.services;

import com.repair.car.Repositories.RepairRepository;
//import com.repair.car.Repositories.VehicleRepository;
import com.repair.car.converters.RepairConverter;
import com.repair.car.domain.Repair;
import com.repair.car.domain.Vehicle;
import com.repair.car.model.RepairCreateForm;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class RepairServiceImpl implements RepairService  {
    private final static org.slf4j.Logger LOG = LoggerFactory.getLogger(com.repair.car.services.RepairServiceImpl.class);

    @Autowired
    private RepairRepository repairRepository;

   // @Autowired
   // private VehicleRepository vehicleRepository;


    @Override
    public void repairCreate(RepairCreateForm repairCreateForm) throws Exception {
        Repair repair = RepairConverter.buildRepairObject(repairCreateForm);
       // Vehicle vehicle = vehicleRepository.findPlateNo(repairCreateForm.getVehiclePlateNo());
       // repair.setVehicle(vehicle);
        repairRepository.save(repair);
        LOG.debug("Repair has been created!");
    }

    @Override
    public List<RepairCreateForm> repairSearch(String repairSearchText, String repairSearchType) {
        return null;
    }

    @Override
    public void deleteById(Long repairId) {

    }

    @Override
    public List<RepairCreateForm> findAllRepairs() {
        return null;
    }
}
