/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hms.Dao;

import com.hms.Entity.GeneralSettings;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author Dell
 */
public class GeneralSettingsDao {
    
    private final SessionFactory factory;
     
    public GeneralSettingsDao(SessionFactory factory){
        this.factory=factory;
    }
    
    public boolean saveSettings(GeneralSettings gd){
        boolean f=false;
        
        try
        {
            try(Session session = this.factory.openSession()){
                Transaction tx = session.beginTransaction();
                session.persist(gd);
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
    
    public List<GeneralSettings> showSettings(){
        Session session=this.factory.openSession();
        String sql = "from Settings";
        Query q = session.createQuery(sql);
        List<GeneralSettings> list=q.list();
        return list;
    }
    
    public List<GeneralSettings> getbyId(int id) {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from GeneralSettings as u where u.id=:id");
        query.setParameter("id",id);
        List<GeneralSettings> list = query.list();

        return list;
    }
}