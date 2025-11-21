/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.balog.entity;

import java.util.Date;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

/**
 *
 * @author dell
 */
@Entity
public class BlogField {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    // 
    private String blogType;
    private String title;
    private Date blogDate;
    @Column(length = 500)
    private String discription;
    private String photo;
    private String creater;
    @ManyToOne()
    @JoinColumn(name = "blogUsers_Id")
    private BlogUsers blogUsers;

    public BlogField() {
    }

    public BlogField(String blogType, String title, Date blogDate, String discription, String photo, String creater, BlogUsers blogUsers) {
        this.blogType = blogType;
        this.title = title;
        this.blogDate = blogDate;
        this.discription = discription;
        this.photo = photo;
        this.creater = creater;
        this.blogUsers = blogUsers;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBlogType() {
        return blogType;
    }

    public void setBlogType(String blogType) {
        this.blogType = blogType;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getBlogDate() {
        return blogDate;
    }

    public void setBlogDate(Date blogDate) {
        this.blogDate = blogDate;
    }

    public String getDiscription() {
        return discription;
    }

    public void setDiscription(String discription) {
        this.discription = discription;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getCreater() {
        return creater;
    }

    public void setCreater(String creater) {
        this.creater = creater;
    }

    public BlogUsers getBlogUsers() {
        return blogUsers;
    }

    public void setBlogUsers(BlogUsers blogUsers) {
        this.blogUsers = blogUsers;
    }

    @Override
    public String toString() {
        return "BlogField{" + "id=" + id + ", blogType=" + blogType + ", title=" + title + ", blogDate=" + blogDate + ", discription=" + discription + ", photo=" + photo + ", creater=" + creater + ", blogUsers=" + blogUsers + '}';
    }

   
    
}
