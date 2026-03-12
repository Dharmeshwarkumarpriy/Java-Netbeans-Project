/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.hms.Servlet;

import com.hms.Dao.ProfileDao;
import com.hms.Entity.Profile;
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
 * @author dell
 */
@MultipartConfig
@WebServlet(name = "AddProfileServlet", urlPatterns = {"/AddProfileServlet"})
public class AddProfileServlet extends HttpServlet {

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
        String firstName=request.getParameter("firstName");        
              String lastName=request.getParameter("lastName");        
              String phone=request.getParameter("phone");   
             // String addBooking=request.getParameter("profile");                
               String password=request.getParameter("phone");        
             
              String email=request.getParameter("email");        
              String address=request.getParameter("address");        
              String straterPackage=request.getParameter("straterPackage");        
              String gender=request.getParameter("gender");  
              
              Part image=request.getPart("image");
              
              Profile pf=new Profile();
              
              pf.setFirstName(firstName);
              pf.setLastName(lastName);
              pf.setPhone(phone);
              pf.setPassword(password);
              pf.setEmail(email);
              pf.setAddress(address);
               pf.setGender(gender);
                pf.setImage(image.getSubmittedFileName());
                
                ProfileDao profiledao=new ProfileDao(FactoryProduct.getFactory());
                profiledao.saveProfile(pf);
                 //jakarta image code
              
              String imgpath=request.getServletContext().getRealPath("Img");
              String path=imgpath+File.separator+"booking"+File.separator+image.getSubmittedFileName();
              try {
                  FileOutputStream fos=new FileOutputStream(path);
                  InputStream is=image.getInputStream();
                  byte[] data=new byte[is.available()];
                  is.read();
                  fos.write(data);
                  fos.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
              HttpSession h=request.getSession();
               h.setAttribute("massage", "add successfully");
              response.sendRedirect("customerDashboard.jsp");
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
