package com.repair.car.services;

import com.repair.car.Repositories.RepairRepository;
import com.repair.car.converters.RepairToAdminFormConverter;
import com.repair.car.domain.Repair;
import com.repair.car.model.AdminForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Transactional
public class AdminService {

    @Autowired
    private RepairRepository repairRepository;


    public List<AdminForm> adminSearch()  {

        List<Repair> retrievedRepairs = repairRepository.findTop10ByOrderByRepairDateDesc() ;

        return retrievedRepairs
                .stream()
                .map(RepairToAdminFormConverter::buildAdminForm)
                .collect(Collectors.toList());
    }


}
