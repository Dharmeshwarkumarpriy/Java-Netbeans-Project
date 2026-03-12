/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hms.Dao;


import com.hms.Entity.AddRoom;
import com.hms.Entity.AddRoomType;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author samresh
 */
public class AddRoomTypeDao {
    private final SessionFactory factory;
    public AddRoomTypeDao(SessionFactory factory){
        this.factory=factory;
    }
    public boolean saveAddRoomType(AddRoomType addRoomType){
        boolean f=false;
        try{
            Session session=this.factory.openSession();
            Transaction tx=session.beginTransaction();
            session.persist(addRoomType);
            tx.commit();
            session.close();
            f=true;
                    }
        catch(Exception e){
            e.printStackTrace();
            
        }
        return f;
        
        
    }
    
    public List<AddRoomType> getAllRoomType(){
        Session session=this.factory.openSession();
        String sql="from AddRoomType";
        Query q=session.createQuery(sql);
        List<AddRoomType> list=q.list();
        return list;
    }
    
     public void updateAddRoomType(int id, String roomName, String roomPrice, String shortCode, String noOfRoom, String starType, String status){
        Transaction tx=null;
       
           try{
               Session session =this.factory.openSession();
                tx = session.beginTransaction();
             AddRoomType  ar=(AddRoomType)session.get(AddRoomType.class,id);
            
             ar.setRoomName(roomName);
             ar.setRoomPrice(roomPrice);
             ar.setShortCode(shortCode);
             ar.setNoOfRoom(noOfRoom);
             ar.setStarType(starType);
             ar.setStatus(status);
               session.update(ar);
              tx.commit();
             
              
        } catch (HibernateException e) {
            if(tx!= null) {
                tx.rollback();
            }
           
        }
      }
      
      public void deleteAddRoomType(int id){ 
       // start a transaction
          Transaction tx=null;
           try{
               Session session =this.factory.openSession();
                tx = session.beginTransaction();

            // Delete a user object
            AddRoom b=session.get(AddRoom.class, id);
            if (b != null) {
                session.delete(b);
                System.out.println("reacord is deleted");
            }

            // commit transaction
            tx.commit();
        } catch (HibernateException e) {
            if(tx!= null) {
                tx.rollback();
            }
            e.printStackTrace();
        }
            }     
    

                 
 
    
}
