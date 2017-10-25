package com.repair.car.services;

import com.repair.car.domain.Repair;
import com.repair.car.model.RepairCreateForm;

import java.util.List;

public interface RepairService {

    void repairCreate(RepairCreateForm repairCreateForm) throws Exception;

    List<RepairCreateForm> repairSearch(String repairSearchText, String repairSearchType) ;

    void deleteById(Long repairId);

    List<RepairCreateForm> findAllRepairs();

}
