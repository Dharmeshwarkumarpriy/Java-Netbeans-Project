/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.hms.Servlet;

import com.hms.Dao.AddBookingDao;
import com.hms.Dao.ProfileDao;

import com.hms.Entity.AddBooking;
import com.hms.Entity.Profile;

import com.hms.Helper.FactoryProduct;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


/**
 *
 * @author govin
 */

@WebServlet(name = "AddBookingServlet", urlPatterns = {"/AddBookingServlet"})
public class AddBookingServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
          try (PrintWriter out = response.getWriter()) {
            String roomId = request.getParameter("roomId");
            //   int ProfileId = Integer.parseInt(request.getParameter("ProfileId"));
            String profileId = request.getParameter("profileId");
            // Profile profile;
            String straterPackage = request.getParameter("straterPackage");
            String roomType = request.getParameter("roomType");
            String arrivedDate = request.getParameter("arrivedDate");
            String depatDate = request.getParameter("depatDate");
            String totalPerson = request.getParameter("totalPerson");
            String note = request.getParameter("note");

            AddBooking ab = new AddBooking();

            ab.setStraterPackage(straterPackage);
            ab.setRoomType(roomType);
            ab.setArrivedDate(arrivedDate);
            ab.setDepatDate(depatDate);
            ab.setTotalPerson(totalPerson);
            ab.setNote(note);
            ab.setRoomId(roomId);
            

//            Profile profile;
//            ProfileDao pd = new ProfileDao(FactoryProduct.getFactory( ));
//       profile=(Profile) pd.getbyProfileId(profileId);
//            
         // ab.setProfile(profileId);
           // ab.setProfile((Profile) profile);
            AddBookingDao addbookingdao = new AddBookingDao(FactoryProduct.getFactory());
            addbookingdao.saveBooking(ab);

//            if (pf==null) {
//                addbookingdao.saveBooking(ab);
//                addbookingdao.saveProfile(pf);
//
//            } else {
//                addbookingdao.saveBooking(ab);
//            }
            HttpSession h = request.getSession();

            h.setAttribute("massage", "Booking successfully");
            response.sendRedirect("customerDashboard.jsp");

        } catch (Exception e) {
            e.printStackTrace();
           
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
