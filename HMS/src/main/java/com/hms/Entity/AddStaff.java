/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hms.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

/**
 *
 * @author dell
 */
@Entity
public class AddStaff {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Id;
    private String firstName;
    private String lastName;
    private String currentAddress;
    private String permanentAddress;
    
    private String email;
    private String phone;
    private String dob;
    private String gender;
    private String idImage;
    private String uploadId;
    private String image;
    private String staffRole;
    private String departement;
    private String workSchedule;
    private String salary;
    private String password;
    private String status;

    public AddStaff() {
    }

    public AddStaff(String firstName, String lastName, String currentAddress, String permanentAddress, String email, String phone, String dob, String gender, String idImage, String uploadId, String image, String staffRole, String departement, String workSchedule, String salary, String password, String status) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.currentAddress = currentAddress;
        this.permanentAddress = permanentAddress;
        this.email = email;
        this.phone = phone;
        this.dob = dob;
        this.gender = gender;
        this.idImage = idImage;
        this.uploadId = uploadId;
        this.image = image;
        this.staffRole = staffRole;
        this.departement = departement;
        this.workSchedule = workSchedule;
        this.salary = salary;
        this.password = password;
        this.status = status;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getCurrentAddress() {
        return currentAddress;
    }

    public void setCurrentAddress(String currentAddress) {
        this.currentAddress = currentAddress;
    }

    public String getPermanentAddress() {
        return permanentAddress;
    }

    public void setPermanentAddress(String permanentAddress) {
        this.permanentAddress = permanentAddress;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getIdImage() {
        return idImage;
    }

    public void setIdImage(String idImage) {
        this.idImage = idImage;
    }

    public String getUploadId() {
        return uploadId;
    }

    public void setUploadId(String uploadId) {
        this.uploadId = uploadId;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getStaffRole() {
        return staffRole;
    }

    public void setStaffRole(String staffRole) {
        this.staffRole = staffRole;
    }

    public String getDepartement() {
        return departement;
    }

    public void setDepartement(String departement) {
        this.departement = departement;
    }

    public String getWorkSchedule() {
        return workSchedule;
    }

    public void setWorkSchedule(String workSchedule) {
        this.workSchedule = workSchedule;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "AddStaff{" + "Id=" + Id + ", firstName=" + firstName + ", lastName=" + lastName + ", currentAddress=" + currentAddress + ", permanentAddress=" + permanentAddress + ", email=" + email + ", phone=" + phone + ", dob=" + dob + ", gender=" + gender + ", idImage=" + idImage + ", uploadId=" + uploadId + ", image=" + image + ", staffRole=" + staffRole + ", departement=" + departement + ", workSchedule=" + workSchedule + ", salary=" + salary + ", password=" + password + ", status=" + status + '}';
    }
    
}
