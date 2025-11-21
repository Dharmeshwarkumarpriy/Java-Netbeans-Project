package com.balog.servlet;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import com.balog.dao.BlogUsersDao;
import com.balog.entity.BlogUsers;
import com.balog.helper.FactoryProduct;
import java.io.File;
import java.io.FileOutputStream;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

/**
 *
 * @author dell
 */
@MultipartConfig
@WebServlet(urlPatterns = {"/BlogUsersServlet"})
public class BlogUsersServlet extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            String name = request.getParameter("name");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            Part photo = request.getPart("photo");

            BlogUsers u = new BlogUsers();
            u.setName(name);
            u.setEmailId(email);
            u.setPhone(phone);
            u.setPassword(password);
            u.setPhoto(photo.getSubmittedFileName());

            BlogUsersDao ud = new BlogUsersDao(FactoryProduct.getFactory());
            ud.saveBlogUsers(u);

              String appath = request.getServletContext().getRealPath("img");
        String path = appath + File.separator + "userPhoto"+File.separator+photo.getSubmittedFileName();
//    
      //       String path1 = request.getRealPath("img") + File.separator + "userPhoto" + File.separator + photo.getSubmittedFileName();
                try {
                    FileOutputStream fos1 = new FileOutputStream(path);
                    InputStream is1 = photo.getInputStream();
                    byte[] data1 = new byte[is1.available()];
                    is1.read(data1);
                    fos1.write(data1);
                    fos1.close();

                } catch (Exception e) {
                    e.printStackTrace();
                }
            
            HttpSession h = request.getSession();
            h.setAttribute("message", "User added successfully");
            response.sendRedirect("login.jsp");
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
