/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hms.Dao;

import com.hms.Entity.AddRoom;
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
public class AddRoomDao {

    private final SessionFactory factory;

    public AddRoomDao(SessionFactory factory) {
        this.factory = factory;
    }

    public boolean saveRoom(AddRoom addRoom) {
        boolean f = false;
        try {
            Session session = this.factory.openSession();
            Transaction tx = session.beginTransaction();
            session.persist(addRoom);
            tx.commit();
            session.close();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();

        }
        return f;

    }

    public List<AddRoom> getAllRoom() {
        Session session = this.factory.openSession();
        String sql = "from AddRoom";
        Query q = session.createQuery(sql);
        List<AddRoom> list = q.list();
        return list;
    }

    public void updateAddRoom(int id, String roomNo, String roomType, String bedCapacity, String roomPrice, String meal, String status, String airCondition) {
        Transaction tx = null;

        try {
            Session session = this.factory.openSession();
            tx = session.beginTransaction();
            AddRoom ar = (AddRoom) session.get(AddRoom.class, id);

            ar.setRoomNo(roomNo);
            ar.setRoomType(roomType);
            ar.setAirCondition(airCondition);
            ar.setBedCapacity(bedCapacity);
            ar.setMeal(meal);
            ar.setRoomPrice(roomPrice);
            ar.setStatus(status);

            session.update(ar);
            tx.commit();

        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }

        }
    }

    public void deleteAddRoom(int id) {
        // start a transaction
        Transaction tx = null;
        try {
            Session session = this.factory.openSession();
            tx = session.beginTransaction();

            // Delete a user object
            AddRoom b = session.get(AddRoom.class, id);
            if (b != null) {
                session.delete(b);
                System.out.println("reacord is deleted");
            }

            // commit transaction
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        }
    }

    public List<AddRoom> getbyId(int id) {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from AddRoom as u where u.id=:id");
        query.setParameter("id", id);
        List<AddRoom> list = query.list();

        return list;
    }

}
