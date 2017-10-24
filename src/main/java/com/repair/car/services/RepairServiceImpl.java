package com.repair.car.services;

import com.repair.car.Repositories.RepairRepository;
import com.repair.car.domain.Repair;
import com.repair.car.model.RepairCreateForm;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class RepairServiceImpl implements RepairService  {
    private final static org.slf4j.Logger LOG = LoggerFactory.getLogger(RepairServiceImpl.class);

    @Autowired
    private RepairRepository repairRepository;

    @Override
    public void create(Repair repair) throws Exception {
        repairRepository.save(repair);
        LOG.debug("Reapir has been created!");
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
