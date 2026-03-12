/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.hms.Servlet;

import com.hms.Dao.AddRoomDao;
import com.hms.Entity.AddRoom;
import com.hms.Helper.FactoryProduct;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author samresh
 */
@WebServlet(name = "UpdateAddRoomServlet", urlPatterns = {"/UpdateAddRoomServlet"})
public class UpdateAddRoomServlet extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            int id=Integer.parseInt(request.getParameter("id"));
            String roomNo=request.getParameter("roomNo");
            String roomType=request.getParameter("roomType");
          
            String airCondition=request.getParameter("airCondition");
            String meal=request.getParameter("meal");
            String bedCapacity=request.getParameter("bedCapacity");
            String roomPrice=request.getParameter("roomPrice");
            String status=request.getParameter("status");
          
            
           AddRoom ad=new AddRoom();
            ad.setId(id);
            ad.setRoomNo(roomNo);
            ad.setRoomType(roomType);
             ad.setAirCondition(airCondition);
              ad.setMeal(meal);
            ad.setBedCapacity(bedCapacity);
            ad.setRoomPrice(roomPrice);
                        
            ad.setStatus(status);
            
            
                      
            AddRoomDao bd1=new AddRoomDao(FactoryProduct.getFactory());
            bd1.updateAddRoom(id,roomNo,roomType,bedCapacity,roomPrice,meal,status,airCondition);
            out.println("updated");
            
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
