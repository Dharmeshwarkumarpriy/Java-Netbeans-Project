/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.college.dao;

import com.college.entity.Invoice;
import com.college.entity.Patient;
import jakarta.jms.Connection;
import java.sql.PreparedStatement;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author dell
 */
public class InvoiceDao {
    private final SessionFactory factory;

    public InvoiceDao(SessionFactory factory) {
        this.factory = factory;
    }
    
    public List<Invoice> getAllPatient() {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from Invoice");
        List<Invoice> list = query.list();
        return list;
    }
    
    

    public boolean saveInvoice(Invoice invoice) {
        boolean f = false;
        try {
            Session session = this.factory.openSession();
            Transaction tx = session.beginTransaction();
            session.save(invoice);
            tx.commit();
            session.close();
            f = true;
        } catch (Exception e) {
            f = false;
            e.printStackTrace();
        }
        return f;
    }
    

       public List<Invoice> getbyId(int id) {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from Invoice as u where u.id=:id");
        query.setParameter("id",id);
        List<Invoice> list = query.list();

        return list;
    }

}
