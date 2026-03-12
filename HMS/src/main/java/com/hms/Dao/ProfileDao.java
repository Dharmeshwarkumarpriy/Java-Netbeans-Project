/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hms.Dao;

import com.hms.Entity.Profile;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

/**
 *
 * @author dell
 */
public class ProfileDao {
    private final SessionFactory factory;

    public ProfileDao(SessionFactory factory) {
        this.factory = factory;
    }
 public boolean saveProfile(Profile profile) {
        boolean f = false;
        try {
            Session session = this.factory.openSession();
            Transaction tx = session.beginTransaction();
            session.persist(profile);
            tx.commit();
            session.close();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();

        }
        return f;

    }

    public List<Profile> getAllProfile() {
        Session session = this.factory.openSession();
        String sql = "from Profile";
        org.hibernate.query.Query q = session.createQuery(sql);
        List<Profile> list = q.list();
        return list;
    }

     public Profile getEmailandPass(String email, String password) {
        Profile maching = null;
        try {
            String query = "from Profile where email=:e and password=:p";
            Session session = this.factory.openSession();
            Query q = session.createQuery(query);
            q.setParameter("e", email);
            q.setParameter("p", password);
            maching = (Profile) q.uniqueResult();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return maching;
    }
     
        public List<Profile> getbyProfileId(String id) {
        Session s = this.factory.openSession();
        org.hibernate.query.Query query = s.createQuery("from Profile as u where u.id=:id");
        query.setParameter("id", id);
        List<Profile> list = query.list();
        return list;
    }    
        
//         public Profile getbyProfileId(int id) {
//        Profile pro = null;
//        try {
//            Session s = this.factory.openSession();
//            pro = (Profile)s.get(Profile.class, id);
//            s.close();
//        } catch (Exception var4) {
//            var4.printStackTrace();
//        }
//        return pro;
//    }
   
        public Profile getProfileUpdate(int id, String firstName, String lastName, String phone, String email,
            String address, String gender) {
        //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
        Profile b = null;
        Configuration cf = new Configuration();
        cf.configure("hibernate.cfg.xml");
        SessionFactory sf = cf.buildSessionFactory();
        Session s = sf.openSession();
        Transaction tx = s.beginTransaction();
        Query q = s.createQuery("update Profile set firstName=:first,lastName=:last, phone=:phone, email=:email, address=:address,"
                + " gender=:gender where Id=:id");
        q.setParameter("id", id);
        q.setParameter("first", firstName);
        q.setParameter("last", lastName);
        q.setParameter("phone", phone);
        q.setParameter("email", email);
        q.setParameter("address", address);
       
        q.setParameter("gender", gender);
       

        q.executeUpdate();

        tx.commit();
        s.close();
        sf.close();
        return b;
    }
}
