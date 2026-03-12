

<%-- 
    Document   : customerDashboard
    Created on : Jan 23, 2025, 8:42:38 PM
    Author     : dell
--%>
<%@page import="com.hms.Entity.AddRoom" %>
<%@page import="com.hms.Entity.Profile" %>
<%@page import="com.hms.Dao.AddRoomDao" %>
<%@page import="com.hms.Entity.AddBooking" %>
<%@page import="com.hms.Dao.AddBookingDao" %>
<%@page import="com.hms.Helper.FactoryProduct" %>
<%@page import="java.util.List" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <%
            Profile user = (Profile) session.getAttribute("current-user");
           // String firstName=user.getFirstName();
           AddBooking addBooking=new AddBooking();
    
            if (user == null) {
                session.setAttribute("message", "Plz login first !<br> session expired .");
                response.sendRedirect("customerLogin.jsp");
                return;
            }
        //    AddBooking email=request.getAtribute();
        //    custome email=request.getAtribute();
         // int id = Integer.parseInt(request.getParameter("id"));
          AddBookingDao abd = new AddBookingDao(FactoryProduct.getFactory());
          List<AddBooking> list = abd.getAll();
         // List<AddBooking> list = abd.getByProfileId(user.getProfileId());
    
    
        %>

        <!-- Css Styles -->
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="css/flaticon.css" type="text/css">
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="css/style.css" type="text/css">

    </head>
    <body>

        <%@include file="dashboardHeader.jsp" %>
        <div class="container-fluid ">
            <div class="row text-center mt-3">

                <div class="col-md-2 ">
                    <div class="box bg-dark" style="height:300px;">
                        <ul class="nav flex-column bg-dark">
                            <li class="nav-item">
                                <a class="nav-link active" href="customerDashboard.jsp">
                                    Dashboard
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    New Booking
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    Payement
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    Profile
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="logoutServlet">
                                    Logout
                                </a>
                            </li>
                        </ul>  
                    </div>
                </div>
                <!--<div class="col-md-4">
                    <div class="card border-primary h-10 ml-5">
                        <img src="Img/payment.png" width="700" height="200" alt="alt"/>
                        <h3>Payments</h3>
                    </div>
                    
                </div>
                <div class="col-md-4">
                    <div class="card border-primary h-10 ml-5">
                        <img src="Img/printer.png" width="700" height="200" alt="alt"/>
                        <h3>Print</h3>
                    </div>
                    </div>-->




                <div class="col-md-10">


                    <center><h2 class="text-success"> Invoice List!</h2></center>
                    <table style="width:100%" border="1px solid " class=" table table-striped">
                        <tr class="text-center">
                            <th>Payement Id</th>
                            <th>Date</th>
                            <th>Room</th>
                            <th>Amount</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>


                        <%for (AddBooking ab : list) {
                        // if(user.getId() && ab.getProfileId()){
                        %>


                        <tr class="text-center">
                            <td>#3454675843</td>


                            <td><%=ab.getArrivedDate()%> TO <%=ab.getDepatDate()%></td>

                            <td><%=ab.getRoomType()%><%=ab.getId()%>/ <%=user.getId()%></td>
                            <td>40000/-</td>
                            <td>Pending</td>

                            <td>
                                <a href="hotel/invoice-details.jsp" class="btn btn-primary"> View</a>
                                <a href="#" class="btn btn-primary"> Pay</a>
                                <a href="#" class="btn btn-primary"> Print</a>


                            </td>


                        </tr>
                        <%}//}%>

                    </table>
                </div>
            </div>


            <!-- Footer Section Begin -->
            <%-- <%@include file="footer.jsp" %>
             <!-- Search model end -->

        <!-- Js Plugins -->--%>
            <%@include file="js.jsp" %>
        </div>

    </body>
</html>