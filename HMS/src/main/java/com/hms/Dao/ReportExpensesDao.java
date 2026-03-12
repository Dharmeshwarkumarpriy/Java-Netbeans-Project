/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hms.Dao;

import com.hms.Entity.ReportExpenses;
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
public class ReportExpensesDao {
     private final SessionFactory factory;
    public ReportExpensesDao(SessionFactory factory){
        this.factory=factory;
    }
    public boolean saveExpenses(ReportExpenses reportExpenses){
        boolean f=false;
        try{
            Session session=this.factory.openSession();
            Transaction tx=session.beginTransaction();
            session.persist(reportExpenses);
            tx.commit();
            session.close();
            f=true;
                    }
        catch(Exception e){
            e.printStackTrace();
            
        }
        return f;
        
        
    }
    
     public List<ReportExpenses> getAll(){
        Session s=this.factory.openSession();
       Query q = s.createQuery("from ReportExpenses");
       List<ReportExpenses> list=q.list();
        return list;
    }
    
      public void getDeleteExpenses(int id) {
        Transaction transaction = null;
        Session session = this.factory.openSession();
        try {
            transaction = session.beginTransaction();
            ReportExpenses reportExpenses = session.get(ReportExpenses.class, Integer.valueOf(id));
            if (reportExpenses != null) {
                //delete
                session.delete(reportExpenses);
                System.out.print("expenses is deleted");

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
    
      public List<ReportExpenses> getbyId(int id) {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from ReportExpenses as u where u.id=:id");
        query.setParameter("id", id);
        List<ReportExpenses> list = query.list();
        return list;
    }
      
      public ReportExpenses getExpensesUpdate(int id ,String supplierName, String discription, String amount, String date) {
        //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
        ReportExpenses b = null;
        Configuration cf = new Configuration();
        cf.configure("hibernate.cfg.xml");
        SessionFactory sf = cf.buildSessionFactory();
        Session s = sf.openSession();
        Transaction tx = s.beginTransaction();

        Query q3 = s.createQuery("update ReportExpenses set supplierName=:name,discription=:dis, amount=:amount, date=:d where Id=:id");
        
            q3.setParameter("id", id);
           q3.setParameter("d", date);
          q3.setParameter("amount", amount);
          q3.setParameter("dis", discription);
          q3.setParameter("name", supplierName);
          
         q3.executeUpdate();
       // System.out.println(r + "data updated");

        tx.commit();
        s.close();
        sf.close();
        return b;
    }
          
}
