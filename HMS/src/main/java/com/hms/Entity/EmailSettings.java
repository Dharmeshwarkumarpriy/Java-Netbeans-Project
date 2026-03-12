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
public class EmailSettings {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String Email;
    private String Password;
    private String SMTPHost;
    private String SMTPPort;
    private String SMTPEncryption;

    public EmailSettings(){
        
    }
    
    public EmailSettings(int id, String Email, String Password, String SMTPHost, String SMTPPort, String SMTPEncryption) {
        this.id = id;
        this.Email = Email;
        this.Password = Password;
        this.SMTPHost = SMTPHost;
        this.SMTPPort = SMTPPort;
        this.SMTPEncryption = SMTPEncryption;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getSMTPHost() {
        return SMTPHost;
    }

    public void setSMTPHost(String SMTPHost) {
        this.SMTPHost = SMTPHost;
    }

    public String getSMTPPort() {
        return SMTPPort;
    }

    public void setSMTPPort(String SMTPPort) {
        this.SMTPPort = SMTPPort;
    }

    public String getSMTPEncryption() {
        return SMTPEncryption;
    }

    public void setSMTPEncryption(String SMTPEncryption) {
        this.SMTPEncryption = SMTPEncryption;
    }

    @Override
    public String toString() {
        return "EmailSettings{" + "id=" + id + ", Email=" + Email + ", Password=" + Password + ", SMTPHost=" + SMTPHost + ", SMTPPort=" + SMTPPort + ", SMTPEncryption=" + SMTPEncryption + '}';
    }
}
