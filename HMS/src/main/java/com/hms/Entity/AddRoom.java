/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hms.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
@Entity
public class AddRoom {
   
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Id;
    private String roomNo;
    private String floorNo;
    private String roomPrice;
    private String description;
    private String bedType;
    private String roomType;
    private String clean;
    private String roomImage;
    private String bedImage;
    private String bathRoomImage;
    private String balconyImage;
    private String meal;
    private String airCondition;
    private String bedCapacity;
    private String status;
   @ManyToOne
    private AddRoomType addRoomType;


    public AddRoom() {
    }

    public AddRoom( String roomNo, String roomPrice, String description, String bedType, String roomType, String clean, String roomImage, String bedImage, String floorNo, String bathRoomImage, String balconyImage, String meal, String airCondition, String status,String bedCapacity) {
       
        this.roomNo = roomNo;
        this.roomPrice = roomPrice;
        this.description = description;
        this.bedType = bedType;
        this.roomType = roomType;
        this.clean = clean;
        this.roomImage = roomImage;
        this.bedImage = bedImage;
        this.floorNo = floorNo;
        this.bathRoomImage = bathRoomImage;
        this.balconyImage = balconyImage;
        this.meal = meal;
        this.airCondition = airCondition;
        this.status = status;
        this.bedCapacity=bedCapacity;
    }

    public AddRoom(int Id, String roomNo, String floorNo, String roomPrice, String description, String bedType, String roomType, String clean, String roomImage, String bedImage, String bathRoomImage, String balconyImage, String meal, String airCondition, String bedCapacity, String status, AddRoomType addRoomType) {
        this.Id = Id;
        this.roomNo = roomNo;
        this.floorNo = floorNo;
        this.roomPrice = roomPrice;
        this.description = description;
        this.bedType = bedType;
        this.roomType = roomType;
        this.clean = clean;
        this.roomImage = roomImage;
        this.bedImage = bedImage;
        this.bathRoomImage = bathRoomImage;
        this.balconyImage = balconyImage;
        this.meal = meal;
        this.airCondition = airCondition;
        this.bedCapacity = bedCapacity;
        this.status = status;
        this.addRoomType = addRoomType;
    }
    

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getRoomNo() {
        return roomNo;
    }

    public void setRoomNo(String roomNo) {
        this.roomNo = roomNo;
    }

    public String getRoomPrice() {
        return roomPrice;
    }

    public void setRoomPrice(String roomPrice) {
        this.roomPrice = roomPrice;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getBedType() {
        return bedType;
    }

    public void setBedType(String bedType) {
        this.bedType = bedType;
    }

    public String getRoomType() {
        return roomType;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    public String isClean() {
        return clean;
    }

    public void setClean(String clean) {
        this.clean = clean;
    }

    public String getRoomImage() {
        return roomImage;
    }

    public void setRoomImage(String roomImage) {
        this.roomImage = roomImage;
    }

    public String getBedImage() {
        return bedImage;
    }

    public void setBedImage(String bedImage) {
        this.bedImage = bedImage;
    }

    public String getfloorNo() {
        return floorNo;
    }

    public void setfloorNo(String floorNo) {
        this.floorNo = floorNo;
    }

    public String getBathRoomImage() {
        return bathRoomImage;
    }

    public void setBathRoomImage(String bathRoomImage) {
        this.bathRoomImage = bathRoomImage;
    }

    public String getBalconyImage() {
        return balconyImage;
    }

    public void setBalconyImage(String balconyImage) {
        this.balconyImage = balconyImage;
    }

    public String getMeal() {
        return meal;
    }

    public void setMeal(String meal) {
        this.meal = meal;
    }

    public String getAirCondition() {
        return airCondition;
    }

    public void setAirCondition(String airCondition) {
        this.airCondition = airCondition;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getBedCapacity() {
        return bedCapacity;
    }

    public void setBedCapacity(String bedCapacity) {
        this.bedCapacity = bedCapacity;
    }
    

    @Override
    public String toString() {
        return "AddRoom{" + "Id=" + Id + ", roomNo=" + roomNo + ", roomPrice=" + roomPrice + ",bedCapacity=" + bedCapacity + ", description=" + description + ", bedType=" + bedType + ", roomType=" + roomType + ", clean=" + clean + ", roomImage=" + roomImage + ", bedImage=" + bedImage + ", floorNo=" + floorNo + ", bathRoomImage=" + bathRoomImage + ", balconyImage=" + balconyImage + ", meal=" + meal + ", airCondition=" + airCondition + ", status=" + status + '}';
    }
    
    
    
   }
    

