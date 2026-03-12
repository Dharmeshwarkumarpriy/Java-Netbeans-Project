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
public class ReportExpenses {
      @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Id;
    private String supplierName;
    private String discription;
    private String date;
    private String amount;

    public ReportExpenses() {
    }

    public ReportExpenses(String supplierName, String discription, String date, String amount) {
        this.supplierName = supplierName;
        this.discription = discription;
        this.date = date;
        this.amount = amount;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getSupplierName() {
        return supplierName;
    }

    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }

    public String getDiscription() {
        return discription;
    }

    public void setDiscription(String discription) {
        this.discription = discription;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    @Override
    public String toString() {
        return "ReportExpenses{" + "Id=" + Id + ", supplierName=" + supplierName + ", discription=" + discription + ", date=" + date + ", amount=" + amount + '}';
    }
        
}
