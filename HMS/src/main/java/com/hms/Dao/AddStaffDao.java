/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hms.Dao;

import com.hms.Entity.AddStaff;
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
public class AddStaffDao {
    
     private final SessionFactory factory;

    public AddStaffDao(SessionFactory factory) {
        this.factory = factory;
    }

    public AddStaff getEmailidandDate(String email, String password) {
        AddStaff maching = null;
        try {
            String query = "from AddStaff where email=:e and password=:p";
            Session session = this.factory.openSession();
            Query q = session.createQuery(query);
            q.setParameter("e", email);
            q.setParameter("p", password);
            maching = (AddStaff) q.uniqueResult();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return maching;
    }

    public List<AddStaff> getAll() {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from AddStaff");
        List<AddStaff> list = query.list();
        return list;
    }
    
    public void getUserName(){
        Session s = this.factory.openSession();
        AddStaff b=(AddStaff)s.get(AddStaff.class,1);
        b.getFirstName();
               
    }

    public boolean saveAddStaff(AddStaff addStaff) {
        boolean f = false;
        try {
            Session session = this.factory.openSession();
            Transaction tx = session.beginTransaction();
            session.save(addStaff);
            tx.commit();
            session.close();
            f = true;
        } catch (Exception e) {
            f = false;
            e.printStackTrace();
        }
        return f;
    }

    public int getLastId() {
        Session s = this.factory.openSession();

        // be sure to check for null lastId in case you have no items.
        final String sql = "SELECT coalesce(max(i.id), 0) FROM AddStaff i";
        Integer lastId = (Integer) s.createQuery(sql).uniqueResult();

        return lastId;
    }

    public void getDelete(int id) {
        Transaction transaction = null;
        Session session = this.factory.openSession();
        try {
            transaction = session.beginTransaction();
            AddStaff addStaff = session.get(AddStaff.class, Integer.valueOf(id));
            if (addStaff != null) {
                //delete
                session.delete(addStaff);
                System.out.print("user is deleted");

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

    public List<AddStaff> getbyId(int id) {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from AddStaff as u where u.id=:id");
        query.setParameter("id", id);
        List<AddStaff> list = query.list();

        return list;
    }

    public AddStaff getStaffUpdate(int id, String name, String email, String password, String phone) {
        
        AddStaff as = null;
        Configuration cf = new Configuration();

        cf.configure("hibernate.cfg.xml");
        SessionFactory sf = cf.buildSessionFactory();
        Session s = sf.openSession();
        Transaction tx = s.beginTransaction();

        ///update code
        Query q3 = s.createQuery("update AddStaff set name=:name,emailId=:email,password=:pass,phone=:phone where id=:id");
        q3.setParameter("id", id);
        q3.setParameter("name", name);
        q3.setParameter("email", email);
        q3.setParameter("pass", password);      
        q3.setParameter("phone", phone);

        q3.executeUpdate();
//        System.out.println(r + "data updated");

        tx.commit();
        s.close();
        sf.close();

        return as;
    }
}
