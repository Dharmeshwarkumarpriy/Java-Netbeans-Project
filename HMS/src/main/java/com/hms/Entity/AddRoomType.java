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
import jakarta.persistence.OneToMany;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author samresh
 */
@Entity
public class AddRoomType {
    @Id
    @GeneratedValue (strategy=GenerationType.IDENTITY)
    private int Id;
   private String roomName;
   private String roomPrice;
   private String shortCode ;
   private String noOfRoom;
   private String starType;
   private String status;
   @OneToMany(mappedBy = "addRoomType")
    private List<AddRoom> products=new ArrayList();//


    public AddRoomType() {
    }

    public AddRoomType(int Id, String roomName, String roomPrice, String shortCode, String noOfRoom, String starType, String status) {
        this.Id = Id;
        this.roomName = roomName;
        this.roomPrice = roomPrice;
        this.shortCode = shortCode;
        this.noOfRoom = noOfRoom;
        this.starType = starType;
        this.status = status;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public String getRoomPrice() {
        return roomPrice;
    }

    public void setRoomPrice(String roomPrice) {
        this.roomPrice = roomPrice;
    }

    public String getShortCode() {
        return shortCode;
    }

    public void setShortCode(String shortCode) {
        this.shortCode = shortCode;
    }

    public String getNoOfRoom() {
        return noOfRoom;
    }

    public void setNoOfRoom(String noOfRoom) {
        this.noOfRoom = noOfRoom;
    }

    public String getStarType() {
        return starType;
    }

    public void setStarType(String starType) {
        this.starType = starType;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "AddRoomType{" + "Id=" + Id + ", roomName=" + roomName + ", roomPrice=" + roomPrice + ", shortCode=" + shortCode + ", noOfRoom=" + noOfRoom + ", starType=" + starType + ", status=" + status + '}';
    }
   
    
   
}
