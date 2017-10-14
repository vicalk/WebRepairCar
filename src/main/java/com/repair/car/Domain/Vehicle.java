package com.repair.car.Domain;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;


@Entity (name = "VEHICLES")
public class Vehicle implements Serializable {
    @Id
    @Column(name = "VEHICLE_ID",nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long vehicleId;

    @Column(name = "PLATENO", nullable = false)
    private String plateNo;

    @Column(name = "CAR_MODEL")
    private String carModel;

    @Column(name = "YEAR")
    private String year;

    @Column(name = "COLOR")
    private String color;

    @Column(name = "USER_ID", nullable = false)
    private Long userId;

    @ManyToOne(optional = false)
    @JoinColumn(name = "USER_ID", referencedColumnName = "USER_ID")
    private User user;

    @OneToMany(mappedBy = "vehicle", targetEntity = Repair.class)
    private List<Repair> repairs;


    public Vehicle(String plateNo, String carModel, String year, String color, Long userId) {
        this.plateNo = plateNo;
        this.carModel = carModel;
        this.year = year;
        this.color = color;
        this.userId = userId;
    }

    public String getPlateNo() {
        return plateNo;
    }

    public void setPlateNo(String plateNo) {
        this.plateNo = plateNo;
    }

    public String getCarModel() {
        return carModel;
    }

    public void setCarModel(String carModel) {
        this.carModel = carModel;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "Vehicle{" +
                "plateNo='" + plateNo + '\'' +
                ", carModel='" + carModel + '\'' +
                ", year='" + year + '\'' +
                ", color='" + color + '\'' +
                ", userId=" + userId +
                '}';
    }
}
