/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.college.dao;

import com.college.entity.Patient;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author dell
 */
public class PatientDao {
    
    private final SessionFactory factory;

    public PatientDao(SessionFactory factory) {
        this.factory = factory;
    }
     
    public List<Patient> getAllPatient() {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from Patient");
        List<Patient> list = query.list();
        return list;
    }
    
    public void getPatientName(){
        Session s = this.factory.openSession();
        Patient b=(Patient)s.get(Patient.class,1);
        b.getName();
               
    }

    public boolean savePatient(Patient patient) {
        boolean f = false;
        try {
            Session session = this.factory.openSession();
            Transaction tx = session.beginTransaction();
            session.save(patient);
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
