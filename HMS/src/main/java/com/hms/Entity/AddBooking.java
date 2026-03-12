/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hms.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

/**
 *
 * @author govin
 */
@Entity
public class AddBooking {

 //   public static boolean savebooking;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Id;

    private String roomId;

    private String straterPackage;
   // private String profileId;
    private String roomType;
    private String arrivedDate;
    private String depatDate;
    private String totalPerson;
    @Column(length = 500)
    private String note;
//     @ManyToOne
      @ManyToOne()
    @JoinColumn(name="profile_Id")  // foreign key colum in addBooking table...
      private Profile profile;

    public AddBooking() {
    }

    public AddBooking(String roomId, String straterPackage, String roomType, String arrivedDate, String depatDate, String totalPerson, String note, Profile profile) {
        this.roomId = roomId;
        this.straterPackage = straterPackage;
        this.roomType = roomType;
        this.arrivedDate = arrivedDate;
        this.depatDate = depatDate;
        this.totalPerson = totalPerson;
        this.note = note;
        this.profile = profile;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    public String getStraterPackage() {
        return straterPackage;
    }

    public void setStraterPackage(String straterPackage) {
        this.straterPackage = straterPackage;
    }

    public String getRoomType() {
        return roomType;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    public String getArrivedDate() {
        return arrivedDate;
    }

    public void setArrivedDate(String arrivedDate) {
        this.arrivedDate = arrivedDate;
    }

    public String getDepatDate() {
        return depatDate;
    }

    public void setDepatDate(String depatDate) {
        this.depatDate = depatDate;
    }

    public String getTotalPerson() {
        return totalPerson;
    }

    public void setTotalPerson(String totalPerson) {
        this.totalPerson = totalPerson;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Profile getProfile() {
        return profile;
    }

    public void setProfile(Profile profile) {
        this.profile = profile;
    }

    @Override
    public String toString() {
        return "AddBooking{" + "Id=" + Id + ", roomId=" + roomId + ", straterPackage=" + straterPackage + ", roomType=" + roomType + ", arrivedDate=" + arrivedDate + ", depatDate=" + depatDate + ", totalPerson=" + totalPerson + ", note=" + note + ", profile=" + profile + '}';
    }
     
}
