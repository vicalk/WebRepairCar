package com.repair.car.Repositories;

import com.repair.car.domain.Repair;
import com.repair.car.domain.User;
import com.repair.car.model.RepairCreateForm;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RepairRepository extends CrudRepository<Repair, Long> {

    Repair save(Repair repair);

    Repair findByRepairId(Long repairId);

    List<Repair> findAll();

    void deleteByRepairId(Long repairId);

//    List<Repair> findByDate (String repairDate);
}
