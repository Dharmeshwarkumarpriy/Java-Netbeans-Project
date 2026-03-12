/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.hms.Servlet;

import com.hms.Dao.GeneralSettingsDao;
import com.hms.Entity.GeneralSettings;
import com.hms.Helper.FactoryProduct;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

/**
 *
 * @author Dell
 */
@MultipartConfig
@WebServlet(name = "GeneralSettingsServlet", urlPatterns = {"/GeneralSettingsServlet"})
public class GeneralSettingsServlet extends HttpServlet {

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
            String hotelname = request.getParameter("hotelName");
            Part photo=request.getPart("hotelLogo");
            //String hotellogo = request.getParameter("hotelLogo");
            String hoteladdress = request.getParameter("hotelAddress");
            String copyright = request.getParameter("copyRight");
            String mainsite = request.getParameter("mainSite");
            String faceBook = request.getParameter("facebook");
            String instaGram = request.getParameter("instagram");
            boolean maintanance = Boolean.parseBoolean(request.getParameter("maintananceMode"));
            
            GeneralSettings g = new GeneralSettings();
            g.setHotelName(hotelname);
            g.setHotelLogo(photo.getSubmittedFileName());
            g.setHotelAddress(hoteladdress);
            g.setCopyright(copyright);
            g.setMainSite(mainsite);
            g.setFacebook(faceBook);
            g.setInstagram(instaGram);
            g.setMaintanance(maintanance);
            
            GeneralSettingsDao gd = new GeneralSettingsDao(FactoryProduct.getFactory());
            boolean b =  gd.saveSettings(g);
            
            String appath=request.getServletContext().getRealPath("Img");
            String path = appath+ File.separator+"logo"+ File.separator+photo.getSubmittedFileName();

            try{
                FileOutputStream fos=new FileOutputStream(path);
                InputStream is=photo.getInputStream();
                byte[] data=new byte[is.available()];
                is.read(data);
                fos.write(data);
                fos.close();
            }
            catch(Exception e){
                e.printStackTrace();
            }
            if(b==true)
            {
                response.sendRedirect("Admin/settings-email.jsp");
            }
            else
            {
                out.print("Not Submit");
            }
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
