/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.college.dao;

import com.college.entity.Appointment;
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
public class AppointmentDao {
    private final SessionFactory factory;

    public AppointmentDao(SessionFactory factory) {
        this.factory = factory;
    }
    
    public List<Appointment> getAllAppointment() {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from Appointment");
        List<Appointment> list = query.list();
        return list;
    }
    
   
    public boolean saveAppointment(Appointment appointment) {
        boolean f = false;
        try {
            Session session = this.factory.openSession();
            Transaction tx = session.beginTransaction();
            session.save(appointment);
            tx.commit();
            session.close();
            f = true;
        } catch (Exception e) {
            f = false;
            e.printStackTrace();
        }
        return f;
    }
}
