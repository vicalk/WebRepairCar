
package com.repair.car.domain;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;


@Entity
@Table (name = "REPAIRS")

public class Repair implements Serializable {
    @Id
    @Column(name = "REPAIR_ID",nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long repairId;

    @Column(name = "REPAIR_DATE", nullable = false)
    private Date repairdate;

    @Column(name = "REPAIR_STATUS")
    private String repairStatus;

    @Column(name = "REPAIR_TYPE")
    private String repairType;

    @Column(name = "REPAIR_COST")
    private int repairCost;

    @Column(name = "REPAIR_DESCRIPTION", nullable = false)
    private String repairDescription;

    @Column(name = "VEHICLE_ID ", nullable = false)
    private Long VehicleId;

    @ManyToOne(optional = false)
    @JoinColumn(name = "VEHICLE_ID", referencedColumnName = "VEHICLE_ID")
    private Vehicle vehicle;

    @OneToMany(mappedBy = "Repair", targetEntity = Part.class)
    private List<Part> parts;

    public Repair(Date date, String repairStatus, String repairType, int repairCost, String repairDescription, Long vehicleId) {
        this.repairdate = date;
        this.repairStatus = repairStatus;
        this.repairType = repairType;
        this.repairCost = repairCost;
        this.repairDescription = repairDescription;
        VehicleId = vehicleId;
    }

    public Date getDate() {
        return repairdate;
    }

    public void setDate(Date date) {
        this.repairdate = date;
    }

    public String getRepairStatus() {
        return repairStatus;
    }

    public void setRepairStatus(String repairStatus) {
        this.repairStatus = repairStatus;
    }

    public String getRepairType() {
        return repairType;
    }

    public void setRepairType(String repairType) {
        this.repairType = repairType;
    }

    public int getRepairCost() {
        return repairCost;
    }

    public void setRepairCost(int repairCost) {
        this.repairCost = repairCost;
    }

    public String getRepairDescription() {
        return repairDescription;
    }

    public void setRepairDescription(String repairDescription) {
        this.repairDescription = repairDescription;
    }

    public Long getVehicleId() {
        return VehicleId;
    }

    public void setVehicleId(Long vehicleId) {
        VehicleId = vehicleId;
    }

    @Override
    public String toString() {
        return "Repair{" +
                "date='" + repairdate + '\'' +
                ", repairStatus='" + repairStatus + '\'' +
                ", repairType='" + repairType + '\'' +
                ", repairCost='" + repairCost + '\'' +
                ", repairDescription='" + repairDescription + '\'' +
                ", VehicleId='" + VehicleId + '\'' +
                '}';
    }
}



