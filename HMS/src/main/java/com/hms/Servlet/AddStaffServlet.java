/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.hms.Servlet;

import com.hms.Dao.AddStaffDao;
import com.hms.Entity.AddStaff;
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
@WebServlet(name = "AddStaffServlet", urlPatterns = {"/AddStaffServlet"})
public class AddStaffServlet extends HttpServlet {

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
            String pass=request.getParameter("dob");
            String last=request.getParameter("lastName");
            String current=request.getParameter("currentAddress");
            String permanent=request.getParameter("permanentAddress");
            String email=request.getParameter("email");
            String phone=request.getParameter("phone");
            String dob=request.getParameter("dob");
            String genger=request.getParameter("gender");
            String uploadId=request.getParameter("uploadId");
            
            Part idImage=request.getPart("idImage");
            Part image=request.getPart("image");
            
            String staffRole=request.getParameter("staffRole");
            String departement=request.getParameter("departement");
            String workSchedule=request.getParameter("workSchedule");
            String salary=request.getParameter("salary");
            String status=request.getParameter("status");
            
            AddStaff as=new AddStaff();
            as.setFirstName(firstName);
            as.setPassword(pass);
            as.setCurrentAddress(current);
            as.setDepartement(departement);
            as.setDob(dob);
            as.setEmail(email);
            as.setGender(genger);
            as.setPermanentAddress(permanent);
            as.setLastName(last);
            as.setPhone(phone);
            as.setSalary(salary);
            as.setStaffRole(staffRole);
            as.setStatus(status);
            as.setUploadId(uploadId);
            as.setWorkSchedule(workSchedule);
            as.setIdImage(idImage.getSubmittedFileName());
            as.setImage(image.getSubmittedFileName());
            
            AddStaffDao asd=new AddStaffDao(FactoryProduct.getFactory());
            boolean b =asd.saveAddStaff(as);
            
            HttpSession http=request.getSession();
            if(b==true){
                //out.print("success");
                  
            http.setAttribute("message", "successfully add Staff");
            response.sendRedirect("Admin/adminDashboard.jsp");
            }
            else{
               //out.println("invalid");
                  
            http.setAttribute("message", "Staff not Add");
            response.sendRedirect("Admin/addStaff.jsp");
            }
            
             //   Staff Image
                String imgpath=request.getServletContext().getRealPath("Img");
            String path=imgpath+ File.separator+"staffImg"+ File.separator+image.getSubmittedFileName();
            try{
                FileOutputStream fos=new FileOutputStream(path);
                InputStream is=image.getInputStream();
                byte[] data=new byte[is.available()];
                is.read(data);
                fos.write(data);
                fos.close();
            }
            catch(Exception e){
                e.printStackTrace();
            }

             //   Staff idImage
                String imgpath1=request.getServletContext().getRealPath("Img");
            String path1=imgpath1+ File.separator+"staffIdImg"+ File.separator+idImage.getSubmittedFileName();
            try{
                FileOutputStream fos1=new FileOutputStream(path);
                InputStream is=idImage.getInputStream();
                byte[] data=new byte[is.available()];
                is.read(data);
                fos1.write(data);
                fos1.close();
            }
            catch(Exception e){
                e.printStackTrace();
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
