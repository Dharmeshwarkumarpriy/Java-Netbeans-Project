/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.balog.dao;

import com.balog.entity.BlogUsers;
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
public class BlogUsersDao {

    private final SessionFactory factory;

    public BlogUsersDao(SessionFactory factory) {
        this.factory = factory;
    }

    public BlogUsers getEmailidandPassword(String email, String password) {
        BlogUsers maching = null;
        try {
            String query = "from BlogUsers where emailId=:e and password=:p";
            Session session = this.factory.openSession();
            Query q = session.createQuery(query);
            q.setParameter("e", email);
            q.setParameter("p", password);
            maching = (BlogUsers) q.uniqueResult();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return maching;
    }

    public List<BlogUsers> getAllBlogUsers() {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from BlogUsers");
        List<BlogUsers> list = query.list();
        return list;
    }
    
    public void getUserName(){
        Session s = this.factory.openSession();
        BlogUsers b=(BlogUsers)s.get(BlogUsers.class,1);
        b.getName();
               
    }

    public boolean saveBlogUsers(BlogUsers blogusers) {
        boolean f = false;
        try {
            Session session = this.factory.openSession();
            Transaction tx = session.beginTransaction();
            session.save(blogusers);
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
        final String sql = "SELECT coalesce(max(i.id), 0) FROM BlogUsers i";
        Integer lastId = (Integer) s.createQuery(sql).uniqueResult();

        return lastId;
    }

    public void getDeleteUser(int id) {
        Transaction transaction = null;
        Session session = this.factory.openSession();
        try {
            transaction = session.beginTransaction();
            BlogUsers blogusers = session.get(BlogUsers.class, Integer.valueOf(id));
            if (blogusers != null) {
                //delete
                session.delete(blogusers);
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

    public List<BlogUsers> getbyId(int id) {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from BlogUsers as u where u.id=:id");
        query.setParameter("id", id);
        List<BlogUsers> list = query.list();

        return list;
    }

    // start a transaction
//            transaction = session.beginTransaction();
//
//            // Delete a user object
//            Contacts contact = session.get(Contacts.class, id);
//            if (contact != null) {
//                session.delete(contact);
//                System.out.println("Contact is deleted");
//            }
//
//            // commit transaction
//            transaction.commit();
//        } catch (Exception e) {
//            if (transaction != null) {
//                transaction.rollback();
//            }
//            e.printStackTrace();
//        }
//    }

    public BlogUsers getUserUpdate(int id, String name, String email, String password, String phone) {
        
        BlogUsers bu = null;
        Configuration cf = new Configuration();

        cf.configure("hibernate.cfg.xml");
        SessionFactory sf = cf.buildSessionFactory();
        Session s = sf.openSession();
        Transaction tx = s.beginTransaction();

        ///update code
        Query q3 = s.createQuery("update BlogUsers set name=:name,emailId=:email,password=:pass,phone=:phone where id=:id");
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

        return bu;
    }
}
