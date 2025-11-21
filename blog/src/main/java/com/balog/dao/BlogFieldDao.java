/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.balog.dao;

import com.balog.entity.BlogField;
import java.util.List;
//import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
//import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;

/**
 *
 * @author dell
 */
public class BlogFieldDao {

    private final SessionFactory factory;

    public BlogFieldDao(SessionFactory factory) {
        this.factory = factory;
    }

    public List<BlogField> getAllBlogField() {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from BlogField");
        List<BlogField> list = query.list();
        return list;
    }

    public boolean saveBlogField(BlogField blogfield) {
        boolean f = false;
        try {
            Session session = this.factory.openSession();
            Transaction tx = session.beginTransaction();
            session.save(blogfield);
            tx.commit();
            session.close();
            f = true;
        } catch (Exception e) {
            f = false;
            e.printStackTrace();
        }
        return f;
    }

     public boolean saveUpdateBlogField(BlogField updateblogfield) {
        boolean f = false;
        try {
            Session session = this.factory.openSession();
            Transaction tx = session.beginTransaction();
            session.save(updateblogfield);
            tx.commit();
            session.close();
            f = true;
        } catch (Exception e) {
            f = false;
            e.printStackTrace();
        }
        return f;
    }
    
    public List<BlogField> getAllBlogFieldByUsersId(String usersId) {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from BlogField as u where u.usersId=:usersId");
        query.setParameter("usersId", usersId);
        List<BlogField> list = query.list();

        return list;

    }

    public void getDeleteField(int id) {
        Transaction transaction = null;
        Session session = this.factory.openSession();
        try {
            transaction = session.beginTransaction();
            BlogField blogField = session.get(BlogField.class, Integer.valueOf(id));
            if (blogField != null) {
                //delete
                session.delete(blogField);
                System.out.print("blog is deleted");

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

    public BlogField getBlogFieldByDiscriptionAndTitle(String discription, String title) {
        BlogField blogField = null;
        try {
            String query = "from BlogField where discription=:discription and title=:title ";
            Session session = this.factory.openSession();
            Query q = session.createQuery(query);
            q.setParameter("discription", discription);
            q.setParameter("discription", discription);
            blogField = (BlogField) q.uniqueResult();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return blogField;
    }
//    
//    public BlogField UpdateBlogField(int id,String blogType, String title, String discription, String date,  String creater) {
//        Transaction transaction = null;
//       boolean f=false;
//        try ( Session session = this.factory.openSession()) {
//            transaction = session.beginTransaction();
//           Criteria blogField=session.createCriteria(BlogField.class);
//            blogField.add(Restri)
//	
//           
//            blogField.setTitle("title");
//            blogField.setDate("date");
//            blogField.setDiscription("discription");
//            blogField.setPhoto("photo");
//            blogField.setCreater("creater");
//                        
//            session.update(blogField);
//            transaction.commit();
//            session.close();
//            
//        } catch (Exception e) {
//            if (transaction != null) {
//                transaction.rollback();
//            }
//            e.printStackTrace();
//        }
//   
//    }

    public List<BlogField> getbyId(int id) {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from BlogField as u where u.id=:id");
        query.setParameter("id",id);
        List<BlogField> list = query.list();

        return list;
    }

//    public BlogField getFieldUpdate(String discription, String title) {
//        BlogField b = null;
//        Configuration cf = new Configuration();
//        cf.configure("hibernate.cfg.xml");
//        SessionFactory sf = cf.buildSessionFactory();
//        Session s = sf.openSession();
//        Transaction tx = s.beginTransaction();
//
////	
////delete code 
////	Query q2=s.createQuery("delete from Student where name=:c");
////	q2.setParameter("c","golu");
////	int r=q2.executeUpdate();
////	System.out.println("data deleted succesfully");
////	System.out.println(r);
//        ///update code
//        Query q3 = s.createQuery("update BlogField set discription=:d,title=:t,BlogType=:bt where id=?");
//        q3.setParameter("d", "getDiscription()");
//        q3.setParameter("t", "getTitle()");
//        q3.setParameter("bt", "getBlogType()");
//        int r = q3.executeUpdate();
//        System.out.println(r + "data updated");
//
//        tx.commit();
//        s.close();
//        sf.close();
//        return b;
//    }

    public int getLastId() {
        Session s = this.factory.openSession();

        // be sure to check for null lastId in case you have no items.
        final String sql = "SELECT coalesce(max(i.id), 0) FROM BlogUsers i";
        Integer lastId = (Integer) s.createQuery(sql).uniqueResult();

        return lastId;
    }

    public BlogField getFieldUpdate(int id ,String blogType, String title, String discription) {
        //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
        BlogField b = null;
        Configuration cf = new Configuration();
        cf.configure("hibernate.cfg.xml");
        SessionFactory sf = cf.buildSessionFactory();
        Session s = sf.openSession();
        Transaction tx = s.beginTransaction();

        Query q3 = s.createQuery("update BlogField set blogType=:blogType,title=:title, discription=:discription where id=:id");
        
            q3.setParameter("id", id);
           q3.setParameter("blogType", blogType);
          q3.setParameter("title", title);
          q3.setParameter("discription", discription);
          
         q3.executeUpdate();
       // System.out.println(r + "data updated");

        tx.commit();
        s.close();
        sf.close();
        return b;
    }

}
