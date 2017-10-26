package com.repair.car.Repositories;

import com.repair.car.domain.Repair;
import com.repair.car.domain.User;
import com.repair.car.model.RepairCreateForm;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RepairRepository extends CrudRepository<Repair, Long> {

    List<Repair> findAll();

    Repair findByRepairId(Long repairId);

    List<Repair> findByRepairDateOrVehicle_plateNo(String repairDate, String plateNo);

    void deleteByRepairId(Long repairId);

    List<Repair>  findTop10ByOrderByRepairDateDesc() ;

    List<Repair> findByVehicle_User_email(String email);

    Repair save(Repair repair);

}
