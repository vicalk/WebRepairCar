package com.repair.car.Repositories;

import com.repair.car.domain.Repair;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RepairRepository extends CrudRepository<Repair, Long> {

    Repair save(Repair repair);
}
