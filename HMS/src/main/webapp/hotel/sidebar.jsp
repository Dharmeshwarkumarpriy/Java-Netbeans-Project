<%-- 
    Document   : slider
    Created on : 20-Dec-2024, 10:09:30 am
    Author     : samresh
--%>
<%--<%@page import="com.hms.Entity.AddStaff" %>
<%@page import="com.hms.Dao.AddStaffDao" %>
<%@page import="com.hms.Helper.FactoryProduct" %>

<%@page import="java.util.List" %>
<%
     AddStaff staff = (AddStaff) session.getAttribute("current-user");

    if (staff == null) {
        session.setAttribute("message", "Plz login first !<br> session is expired .");
        response.sendRedirect("../Admin/login.jsp");
        return;
    }
  
%>--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
       
    </head>
    <body>
       <div class="nk-sidebar nk-sidebar-fixed " data-content="sidebarMenu">
                <div class="nk-sidebar-element nk-sidebar-head">
                    <div class="nk-menu-trigger"><a href="#" class="nk-nav-toggle nk-quick-nav-icon d-xl-none"
                            data-target="sidebarMenu"><em class="icon ni ni-arrow-left"></em></a><a href="#"
                            class="nk-nav-compact nk-quick-nav-icon d-none d-xl-inline-flex"
                            data-target="sidebarMenu"><em class="icon ni ni-menu"></em></a></div>
                    <div class="nk-sidebar-brand"><a href="index.jsp
                                                     " class="logo-link nk-sidebar-logo"><img
                                class="logo-light logo-img" src="images/logo.png"
                                srcset="../images/logo2x.png 2x" alt="logo"><img class="logo-dark logo-img"
                                src="../imgges/logo-dark.png" srcset="../images/logo-dark2x.png 2x"
                                alt="logo-dark"></a></div>
                </div>
                <div class="nk-sidebar-element nk-sidebar-body">
                    <div class="nk-sidebar-content">
                        <div class="nk-sidebar-menu" data-simplebar>
                            <ul class="nk-menu">
                                <li class="nk-menu-item"><a href="index.jsp
                                                            " class="nk-menu-link"><span
                                            class="nk-menu-icon"><em class="icon ni ni-dashboard-fill"></em></span><span
                                            class="nk-menu-text">Dashboard</span></a></li>
                                <li class="nk-menu-item has-sub"><a href="#" class="nk-menu-link nk-menu-toggle"><span
                                            class="nk-menu-icon"><em
                                                class="icon ni ni-calendar-booking-fill"></em></span><span
                                                    class="nk-menu-text">Bookings</span></a>
                                    <ul class="nk-menu-sub">
                                        <li class="nk-menu-item"><a href="bookings.jsp
                                                                    " class="nk-menu-link"><span
                                                    class="nk-menu-text">All Bookings</span></a></li>
                                        <li class="nk-menu-item"><a href="booking-add.jsp
                                                                    " class="nk-menu-link"><span
                                                    class="nk-menu-text">Add Booking</span></a></li>
                                        <li class="nk-menu-item"><a href="booking-edit.jsp
                                                                    " class="nk-menu-link"><span
                                                    class="nk-menu-text">Edit Booking</span></a></li>
                                    </ul>
                                </li>
                                <li class="nk-menu-item has-sub"><a href="#" class="nk-menu-link nk-menu-toggle"><span
                                            class="nk-menu-icon"><em class="icon ni ni-home-fill"></em></span><span
                                            class="nk-menu-text">Room</span></a>
                                    <ul class="nk-menu-sub">
                                        <li class="nk-menu-item"><a href="room-list.jsp
                                                                    " class="nk-menu-link"><span
                                                    class="nk-menu-text">All Rooms</span></a></li>
                                        <li class="nk-menu-item"><a href="room-type.jsp
                                                                    " class="nk-menu-link"><span
                                                    class="nk-menu-text">Room Types</span></a></li>
                                    </ul>
                                </li>
                                <li class="nk-menu-item has-sub"><a href="#" class="nk-menu-link nk-menu-toggle"><span
                                            class="nk-menu-icon"><em class="icon ni ni-reports"></em></span><span
                                            class="nk-menu-text">Reports</span></a>
                                    <ul class="nk-menu-sub">
                                        <li class="nk-menu-item"><a href="report-stocks.jsp
                                                                    " class="nk-menu-link"><span
                                                    class="nk-menu-text">Stocks</span></a></li>
                                        <li class="nk-menu-item"><a href="report-expenses.jsp
                                                                    "
                                                class="nk-menu-link"><span class="nk-menu-text">Expenses</span></a></li>
                                        <li class="nk-menu-item"><a href="report-booking.jsp
                                                                    "
                                                class="nk-menu-link"><span class="nk-menu-text">Booking</span></a></li>
                                    </ul>
                                </li>
                                <li class="nk-menu-item"><a href="customers.jsp
                                                            " class="nk-menu-link"><span
                                            class="nk-menu-icon"><em class="icon ni ni-users-fill"></em></span><span
                                            class="nk-menu-text">Customers</span></a></li>
                                <li class="nk-menu-item has-sub"><a href="#" class="nk-menu-link nk-menu-toggle"><span
                                            class="nk-menu-icon"><em class="icon ni ni-coins"></em></span><span
                                            class="nk-menu-text">Payment</span></a>
                                    <ul class="nk-menu-sub">
                                        <li class="nk-menu-item"><a href="payment-methods.jsp
                                                                    "
                                                class="nk-menu-link"><span class="nk-menu-text">Payment
                                                    Methods</span></a></li>
                                        <li class="nk-menu-item"><a href="invoice-list.jsp
                                                                    " class="nk-menu-link"><span
                                                    class="nk-menu-text">Invocie List</span></a></li>
                                        <li class="nk-menu-item"><a href="invoice-details.jsp
                                                                    "
                                                class="nk-menu-link"><span class="nk-menu-text">Invocie
                                                    Details</span></a></li>
                                    </ul>
                                </li>
                                <li class="nk-menu-item"><a href="support.jsp
                                                            " class="nk-menu-link"><span
                                            class="nk-menu-icon"><em
                                                class="icon ni ni-chat-circle-fill"></em></span><span
                                            class="nk-menu-text">Support</span></a></li>
                                <li class="nk-menu-item"><a href="settings.jsp
                                                            " class="nk-menu-link"><span
                                            class="nk-menu-icon"><em
                                                class="icon ni ni-setting-alt-fill"></em></span><span
                                            class="nk-menu-text">Settings</span></a></li>
                                <li class="nk-menu-heading">
                                    <h6 class="overline-title text-primary-alt">Return to</h6>
                                </li>
                                <li class="nk-menu-item"><a href="https://dashlite.net/demo1/index.jsp
                                                            "
                                        class="nk-menu-link"><span class="nk-menu-icon"><em
                                                class="icon ni ni-dashlite-alt"></em></span><span
                                            class="nk-menu-text">Main Dashboard</span></a></li>
                                <li class="nk-menu-item"><a href="https://dashlite.net/demo1/components.jsp
                                                            "
                                        class="nk-menu-link"><span class="nk-menu-icon"><em
                                                class="icon ni ni-layers-fill"></em></span><span
                                            class="nk-menu-text">All Components</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            
    </body>
</html>
