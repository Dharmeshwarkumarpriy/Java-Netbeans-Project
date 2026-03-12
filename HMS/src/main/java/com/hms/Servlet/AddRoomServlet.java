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
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

/**
 *
 * @author samresh
 */
@MultipartConfig
@WebServlet(name = "AddRoomServlet", urlPatterns = {"/AddRoomServlet"})
public class AddRoomServlet extends HttpServlet {

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
            String roomNo=request.getParameter("roomNo");
          
            String floorNo=request.getParameter("floorNo");
            String meal=request.getParameter("meal");
            String airCondition=request.getParameter("airCondition");
            String roomType=request.getParameter("roomType");
            String roomPrice=request.getParameter("roomPrice");
            String description=request.getParameter("roomdescription");
           String bedType=request.getParameter("bedType");
          String roomclean=request.getParameter("roomClean");
            String status=request.getParameter("status");
            String bedCapacity=request.getParameter("bedCapacity");
          Part roomImage=request.getPart("roomImage");
         Part balconyImage=request.getPart("balconyImage");
          Part bathRoomImage=request.getPart("bathRoomImage");
          Part bedImage=request.getPart("bedImage");
          
           
            AddRoom addRoom=new AddRoom();
             addRoom.setBedType(bedType);
            addRoom.setClean(roomclean);
            addRoom.setDescription(description);
            addRoom.setRoomImage(roomImage.getSubmittedFileName());
            addRoom.setBalconyImage(balconyImage.getSubmittedFileName());
            addRoom.setBathRoomImage(bathRoomImage.getSubmittedFileName());
            addRoom.setBedImage(bedImage.getSubmittedFileName());
            addRoom.setfloorNo(floorNo);
            addRoom.setMeal(meal);
            addRoom.setAirCondition(airCondition);
            addRoom.setRoomPrice(roomPrice);
            addRoom.setRoomNo(roomNo);
            addRoom.setRoomType(roomType);
            addRoom.setStatus(status);
            addRoom.setBedCapacity(bedCapacity);
            
            AddRoomDao addRoomDao=new AddRoomDao(FactoryProduct.getFactory());
            boolean b =addRoomDao.saveRoom(addRoom);
            HttpSession http=request.getSession();
            if(b==true){
                //out.print("success");
                  
            http.setAttribute("message", "successfully add Room");
            response.sendRedirect("hotel/room-list.jsp");
            }
            else{
               //out.println("invalid");
                  
            http.setAttribute("message", "Room not Add");
            response.sendRedirect("hotel/room-list.jsp");
            }
            
              //   Room Image
                String imgpath=request.getServletContext().getRealPath("Img");
            String path=imgpath+ File.separator+"roomImg"+ File.separator+roomImage.getSubmittedFileName();
            try{
                FileOutputStream fos=new FileOutputStream(path);
                InputStream is=roomImage.getInputStream();
                byte[] data=new byte[is.available()];
                is.read(data);
                fos.write(data);
                fos.close();
            }
            catch(Exception e){
                e.printStackTrace();
            }
            
            //balconyImage
            String imgpath2=request.getServletContext().getRealPath("Img");
            String path2=imgpath+ File.separator+"roomImg"+ File.separator+balconyImage.getSubmittedFileName();
            try{
                FileOutputStream fos=new FileOutputStream(path);
                InputStream is=balconyImage.getInputStream();
                byte[] data=new byte[is.available()];
                is.read(data);
                fos.write(data);
                fos.close();
            }
            catch(Exception e){
                e.printStackTrace();
            }
            
            //bathroom Image
            String imgpath3=request.getServletContext().getRealPath("Img");
            String path3=imgpath+ File.separator+"roomImg"+ File.separator+bathRoomImage.getSubmittedFileName();
            try{
                FileOutputStream fos=new FileOutputStream(path);
                InputStream is=bathRoomImage.getInputStream();
                byte[] data=new byte[is.available()];
                is.read(data);
                fos.write(data);
                fos.close();
            }
            catch(Exception e){
                e.printStackTrace();
            }
            
            //bed Image
            String imgpath4=request.getServletContext().getRealPath("Img");
            String path4=imgpath+ File.separator+"roomImg"+ File.separator+bedImage.getSubmittedFileName();
            try{
                FileOutputStream fos=new FileOutputStream(path);
                InputStream is=bedImage.getInputStream();
                byte[] data=new byte[is.available()];
                is.read(data);
                fos.write(data);
                fos.close();
            }
            catch(Exception e){
                e.printStackTrace();
            }
            
         
              
                /*HttpSession http = request.getSession();
                http.setAttribute("massage", "add successfully");
                response.sendRedirect("Room/allRoom.jsp");  */ 
                        
        
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
