/*
package com.repair.car.domain;

import javax.persistence.*;
import java.io.Serializable;


@Entity(name = "PARTS")

public class Part implements Serializable {
    @Id
    @Column(name = "PART_ID",nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long partId;

    @Column(name = "PART_TYPE", nullable = false)
    private String partType;

    @Column(name = "PART_COST")
    private int partCost;

    @Column(name = "REPAIR_ID")
    private Long repairId;

    @ManyToOne(optional = false)
    @JoinColumn(name = "REPAIR_ID", referencedColumnName = "REPAIR_ID")
    private Repair repair;

    public Part(String partType, int partCost, Long repairId) {
        this.partType = partType;
        this.partCost = partCost;
        this.repairId = repairId;
    }

    public Long getPartId() {
        return partId;
    }

    public void setPartId(Long partId) {
        this.partId = partId;
    }

    public String getPartType() {
        return partType;
    }

    public void setPartType(String partType) {
        this.partType = partType;
    }

    public int getPartCost() {
        return partCost;
    }

    public void setPartCost(int partCost) {
        this.partCost = partCost;
    }

    public Long getRepairId() {
        return repairId;
    }

    public void setRepairId(Long repairId) {
        this.repairId = repairId;
    }

    @Override
    public String toString() {
        return "Part{" +
                "partId=" + partId +
                ", partType='" + partType + '\'' +
                ", partCost=" + partCost +
                ", repairId=" + repairId +
                '}';
    }
}



*/
