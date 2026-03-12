/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hms.Dao;

import com.hms.Entity.BlogComment;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author dell
 */
public class BlogCommentDao {
      private final SessionFactory factory;
    public BlogCommentDao(SessionFactory factory){
        this.factory=factory;
    }
    public boolean saveBlogComment(BlogComment blogComment){
        boolean f=false;
        try{
            Session session=this.factory.openSession();
            Transaction tx=session.beginTransaction();
            session.persist(blogComment);
            tx.commit();
            session.close();
            f=true;
                    }
        catch(Exception e){
            e.printStackTrace();
            
        }
        return f;
        
        
    }
    
     public List<BlogComment> getAll(){
        Session s=this.factory.openSession();
       Query q = s.createQuery("from BlogComment");
       List<BlogComment> list=q.list();
        return list;
    }
     
     public int getLastId() {
        Session s = this.factory.openSession();

        // be sure to check for null lastId in case you have no items.
        final String sql = "SELECT coalesce(max(i.id), 0) FROM BlogComment i";
        Integer lastId = (Integer) s.createQuery(sql).uniqueResult();

        return lastId;
    }
}
