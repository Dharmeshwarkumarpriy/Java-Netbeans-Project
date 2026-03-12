/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.college.dao;

import com.college.entity.Doctor;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author dell
 */
public class DoctorDao {
    private final SessionFactory factory;

    public DoctorDao(SessionFactory factory) {
        this.factory = factory;
    }
    
      public List<Doctor> getAllDoctor() {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from Doctor");
        List<Doctor> list = query.list();
        return list;
    }
    
    public void getDoctorName(){
        Session s = this.factory.openSession();
        Doctor b=(Doctor)s.get(Doctor.class,1);
        b.getName();
               
    }

    public boolean saveDoctor(Doctor doctor) {
        boolean f = false;
        try {
            Session session = this.factory.openSession();
            Transaction tx = session.beginTransaction();
            session.save(doctor);
            tx.commit();
            session.close();
            f = true;
        } catch (Exception e) {
            f = false;
            e.printStackTrace();
        }
        return f;
    }
    
    public Doctor getNameandPhone(String name, String phone) {
        Doctor maching = null;
        try {
            String query = "from Doctor where name=:e and phone=:p";
            Session session = this.factory.openSession();
            Query q = session.createQuery(query);
            q.setParameter("e", name);
            q.setParameter("p", phone);
            maching = (Doctor) q.uniqueResult();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return maching;
    }

    
}
