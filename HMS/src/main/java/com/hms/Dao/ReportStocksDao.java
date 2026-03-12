/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hms.Dao;

import com.hms.Entity.ReportStocks;
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
public class ReportStocksDao {
     private final SessionFactory factory;
    public ReportStocksDao(SessionFactory factory){
        this.factory=factory;
    }
    public boolean saveStocks(ReportStocks reportStocks){
        boolean f=false;
        try{
            Session session=this.factory.openSession();
            Transaction tx=session.beginTransaction();
            session.persist(reportStocks);
            tx.commit();
            session.close();
            f=true;
                    }
        catch(Exception e){
            e.printStackTrace();
            
        }
        return f;
        
        
    }
    
     public List<ReportStocks> getAll(){
        Session s=this.factory.openSession();
        Query q = s.createQuery("from ReportStocks");
      List<ReportStocks> list=q.list();
        return list;
    }
         
      public void getDeleteStocks(int id) {
        Transaction transaction = null;
        Session session = this.factory.openSession();
        try {
            transaction = session.beginTransaction();
            ReportStocks reportStocks = session.get(ReportStocks.class, Integer.valueOf(id));
            if (reportStocks != null) {
                //delete
                session.delete(reportStocks);
                System.out.print("stock is deleted");

                transaction.commit();
            }
        } catch (Exception e) {
            //bandle exception
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            //close session
            session.close();
        }
    }
    
      public List<ReportStocks> getbyId(int id) {
        Session s = this.factory.openSession();
        org.hibernate.query.Query query = s.createQuery("from ReportStocks as u where u.id=:id");
        query.setParameter("id", id);
        List<ReportStocks> list = query.list();
        return list;
    }
      
      public ReportStocks getStocksUpdate(int id ,String productName, String productQuantity, String productPrice, String productStatus) {
        //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
        ReportStocks b = null;
        Configuration cf = new Configuration();
        cf.configure("hibernate.cfg.xml");
        SessionFactory sf = cf.buildSessionFactory();
        Session s = sf.openSession();
        Transaction tx = s.beginTransaction();

        Query q3 = s.createQuery("update ReportStocks set productName=:name,productQuantity=:quantity, productPrice=:price, productStatus=:status where Id=:id");
        
            q3.setParameter("id", id);
           q3.setParameter("status", productStatus);
          q3.setParameter("price", productPrice);
          q3.setParameter("quantity", productQuantity);
          q3.setParameter("name", productName);
          
         q3.executeUpdate();
       // System.out.println(r + "data updated");

        tx.commit();
        s.close();
        sf.close();
        return b;
    }

}
