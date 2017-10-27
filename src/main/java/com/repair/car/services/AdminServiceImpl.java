package com.repair.car.services;

import com.repair.car.Repositories.RepairRepository;
import com.repair.car.converters.RepairToAdminFormConverter;
import com.repair.car.domain.Repair;
import com.repair.car.model.AdminForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {

    @Autowired
    private RepairRepository repairRepository;


    @Override
    public List<AdminForm> adminSearch()  {

        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        LocalDate now = LocalDate.now();
        String date = now.format(dtf).toString();

        List<Repair> retrievedRepairs = repairRepository.findByRepairDateOrderByRepairTimeAsc(date);

        return retrievedRepairs
                .stream()
                .map(RepairToAdminFormConverter::buildAdminForm)
                .collect(Collectors.toList());
    }


    @Override
    public List<AdminForm> userSearch(String email)  {

        List<Repair> retrievedRepairs = repairRepository.findByVehicle_User_emailOrderByRepairDateDescRepairTimeAsc(email);

        return retrievedRepairs
                .stream()
                .map(RepairToAdminFormConverter::buildAdminForm)
                .collect(Collectors.toList());
    }

}
