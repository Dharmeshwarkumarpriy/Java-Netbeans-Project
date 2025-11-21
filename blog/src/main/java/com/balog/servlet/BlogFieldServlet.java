/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.balog.servlet;

import com.balog.dao.BlogFieldDao;
import com.balog.entity.BlogField;
import com.balog.helper.FactoryProduct;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Date;
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
@WebServlet(name = "BlogFieldServlet", urlPatterns = {"/BlogFieldServlet"})
public class BlogFieldServlet extends HttpServlet {

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

                String blogtype = request.getParameter("blogType");
                String title = request.getParameter("title");
                //String date = request.getParameter("date");
                String discription = request.getParameter("discription");
                String creater = request.getParameter("creater");
                Part photo = request.getPart("photo");
                Date date=new Date();
                BlogField bf = new BlogField();

                bf.setBlogType(blogtype);
                bf.setTitle(title);
                bf.setBlogDate(date);
                bf.setDiscription(discription);
                bf.setPhoto(photo.getSubmittedFileName());
                bf.setCreater(creater);

                BlogFieldDao bd = new BlogFieldDao(FactoryProduct.getFactory());
                bd.saveBlogField(bf);

                //   jakarta img code.
               String appath = request.getServletContext().getRealPath("img");
        String path = appath + File.separator + "blogPhoto"+File.separator+photo.getSubmittedFileName();
//         
              //  String path1 = request.getRealPath("img") + File.separator + "blogPhoto" + File.separator + photo.getSubmittedFileName();
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

                HttpSession http = request.getSession();
                http.setAttribute("massage", "add successfully");
                response.sendRedirect("dashboard.jsp");

                      

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
