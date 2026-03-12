/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hms.Dao;

import com.hms.Entity.AddBooking;
import com.hms.Entity.AddRoom;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

/**
 *
 * @author govin
 */
public class AddBookingDao {

    private final SessionFactory factory;

    public AddBookingDao(SessionFactory factory) {
        this.factory = factory;
    }

    public boolean saveBooking(AddBooking addBooking) {
        boolean f = false;
        try {
            Session session = this.factory.openSession();
            Transaction tx = session.beginTransaction();
            session.persist(addBooking);
            tx.commit();
            session.close();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();

        }
        return f;

    }
    
    
    public List<AddBooking> getAll() {
        Session session = this.factory.openSession();
        String sql = "from AddBooking";
        org.hibernate.query.Query q = session.createQuery(sql);
        List<AddBooking> list = q.list();
        return list;
    }
    
   
    public AddBooking getNameandPhone(String firstName, String phone) {
        AddBooking maching = null;
        try {
            String query = "from AddBooking where firstName=:e and phone=:p";
            Session session = this.factory.openSession();
            Query q = session.createQuery(query);
            q.setParameter("e", firstName);
            q.setParameter("p", phone);
            maching = (AddBooking) q.uniqueResult();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return maching;
    }
   
    
    public List<AddBooking> getbyId(int id) {
        Session s = this.factory.openSession();
        org.hibernate.query.Query query = s.createQuery("from AddBooking as u where u.id=:id");
        query.setParameter("id", id);
        List<AddBooking> list = query.list();
        return list;
    }
    
    public List<AddBooking> getById(int id) {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from AddBooking as u where u.id=:id");
        query.setParameter("id",id);
        List<AddBooking> list = query.list();

        return list;
    }
    
    public List<AddBooking> getByProfileId(String profileId) {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from AddBooking as u where u.profileId=:profileId");
        query.setParameter("profile_Id", profileId);
        List<AddBooking> list = query.list();

        return list;

    }
    
    public List<AddBooking> getbyProfileId(int profileId){
        Session s=this.factory.openSession();
        Query query=s.createQuery("from AddBooking as u where u.profileId=:profileId");
     //    Query query = s.createQuery("from Product as p where p.category.categoryId =:id");
             query.setParameter("profileId", profileId);
        List<AddBooking>list=query.list();
        return list;
    }
   
    public List<AddRoom> getbyRoomId(int id) {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from AddRoom as u where u.id=:id");
        query.setParameter("id", id);
        List<AddRoom> list = query.list();

        return list;
    }


    public AddBooking getBookingUpdate(int id, String straterPackage, String roomType, String arrivedDate, String depatDate,
            String totalPerson, String note) {
        //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
        AddBooking b = null;
        Configuration cf = new Configuration();
        cf.configure("hibernate.cfg.xml");
        SessionFactory sf = cf.buildSessionFactory();
        Session s = sf.openSession();
        Transaction tx = s.beginTransaction();
        Query q = s.createQuery("update AddBooking set straterPackage=:straterPackage, roomType=:roomType, arrivedDate=:arrivedDate, depatDate=:depatDate,"
                + " totalPerson=:totalPerson, note=:note where Id=:id");
        q.setParameter("id", id);
      
        q.setParameter("straterPackage", straterPackage);
       
        q.setParameter("roomType", roomType);
        q.setParameter("arrivedDate", arrivedDate);
        q.setParameter("depatDate", depatDate);
        q.setParameter("totalPerson", totalPerson);
        q.setParameter("note", note);

        q.executeUpdate();

        tx.commit();
        s.close();
        sf.close();
        return b;
    }

}
