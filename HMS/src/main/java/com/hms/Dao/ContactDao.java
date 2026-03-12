/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hms.Dao;

import com.hms.Entity.Contact;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author dell
 */
public class ContactDao {
     private final SessionFactory factory;
    public ContactDao(SessionFactory factory){
        this.factory=factory;
    }
    public boolean saveContact(Contact contact){
        boolean f=false;
        try{
            Session session=this.factory.openSession();
            Transaction tx=session.beginTransaction();
            session.persist(contact);
            tx.commit();
            session.close();
            f=true;
                    }
        catch(Exception e){
            e.printStackTrace();
            
        }
        return f;
        
        
    }
    
     public List<Contact> getAll(){
        Session s=this.factory.openSession();
       Query q = s.createQuery("from Contact");
       List<Contact> list=q.list();
        return list;
    }
     
}
