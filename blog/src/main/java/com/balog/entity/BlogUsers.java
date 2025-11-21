/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.balog.entity;

//import javax.persistence.Column;
import jakarta.persistence.CascadeType;
import java.util.ArrayList;
import java.util.List;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

/**
 *
 * @author dell
 */
@Entity
public class BlogUsers {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    //lenght of name
    // @Column(length = 500)
    private String name;
    private String phone;
    private String emailId;
    private String password;
    private String photo;

    @OneToMany(mappedBy = "blogUsers",cascade = CascadeType.ALL)
    private List<BlogField> blogField = new ArrayList<>();

    public BlogUsers() {
    }

    public BlogUsers(String name, String phone, String emailId, String password, String photo, List<BlogField> blogField) {
        this.name = name;
        this.phone = phone;
        this.emailId = emailId;
        this.password = password;
        this.photo = photo;
        this.blogField = blogField;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public List<BlogField> getBlogField() {
        return blogField;
    }

    public void setBlogField(List<BlogField> blogField) {
        this.blogField = blogField;
    }

    @Override
    public String toString() {
        return "BlogUsers{" + "id=" + id + ", name=" + name + ", phone=" + phone + ", emailId=" + emailId + ", password=" + password + ", photo=" + photo + ", blogField=" + blogField + '}';
    }

}
