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
 * @author Dell
 */
@Entity
public class GeneralSettings {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String HotelName;
    private String HotelLogo;
    private String HotelAddress;
    private String Copyright;
    private String MainSite;
    private String Facebook;
    private String Instagram;
    private boolean Maintanance;
    
    public GeneralSettings(){
        
    }

    public GeneralSettings(int id, String HotelName, String HotelLogo, String HotelAddress, String Copyright, String MainSite, String Facebook, String Instagram, boolean Maintanance) {
        this.id = id;
        this.HotelName = HotelName;
        this.HotelLogo = HotelLogo;
        this.HotelAddress = HotelAddress;
        this.Copyright = Copyright;
        this.MainSite = MainSite;
        this.Facebook = Facebook;
        this.Instagram = Instagram;
        this.Maintanance = Maintanance;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getHotelName() {
        return HotelName;
    }

    public void setHotelName(String HotelName) {
        this.HotelName = HotelName;
    }

    public String getHotelLogo() {
        return HotelLogo;
    }

    public void setHotelLogo(String HotelLogo) {
        this.HotelLogo = HotelLogo;
    }

    public String getHotelAddress() {
        return HotelAddress;
    }

    public void setHotelAddress(String HotelAddress) {
        this.HotelAddress = HotelAddress;
    }

    public String getCopyright() {
        return Copyright;
    }

    public void setCopyright(String Copyright) {
        this.Copyright = Copyright;
    }

    public String getMainSite() {
        return MainSite;
    }

    public void setMainSite(String MainSite) {
        this.MainSite = MainSite;
    }

    public String getFacebook() {
        return Facebook;
    }

    public void setFacebook(String Facebook) {
        this.Facebook = Facebook;
    }

    public String getInstagram() {
        return Instagram;
    }

    public void setInstagram(String Instagram) {
        this.Instagram = Instagram;
    }

    public boolean isMaintanance() {
        return Maintanance;
    }

    public void setMaintanance(boolean Maintanance) {
        this.Maintanance = Maintanance;
    }

    @Override
    public String toString() {
        return "GeneralSettings{" + "id=" + id + ", HotelName=" + HotelName + ", HotelLogo=" + HotelLogo + ", HotelAddress=" + HotelAddress + ", Copyright=" + Copyright + ", MainSite=" + MainSite + ", Facebook=" + Facebook + ", Instagram=" + Instagram + ", Maintanance=" + Maintanance + '}';
    }
    
}
