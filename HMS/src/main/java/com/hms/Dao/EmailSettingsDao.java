/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hms.Dao;

import com.hms.Entity.EmailSettings;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author Dell
 */
public class EmailSettingsDao {
    private final SessionFactory factory;
     
    public EmailSettingsDao(SessionFactory factory){
        this.factory=factory;
    }
    
    public boolean saveSettings(EmailSettings ed){
        boolean f=false;
        
        try
        {
            try(Session session = this.factory.openSession()){
                Transaction tx = session.beginTransaction();
                session.persist(ed);
                tx.commit();
                session.close();
                f = true;
            }
        }
        catch(Exception e){
            e.printStackTrace();    
        }
        return f;
    }
    
    public List<EmailSettings> showSettings(){
        Session session=this.factory.openSession();
        String sql = "from Settings";
        Query q = session.createQuery(sql);
        List<EmailSettings> list=q.list();
        return list;
    }
}