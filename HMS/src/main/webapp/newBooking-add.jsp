<%@page import="com.hms.Entity.AddRoom" %>
<%@page import="com.hms.Entity.Profile" %>
<%@page import="com.hms.Entity.AddBooking" %>
<%@page import="com.hms.Dao.AddRoomDao" %>
<%@page import="com.hms.Dao.ProfileDao" %>
<%@page import="com.hms.Dao.AddBookingDao" %>
<%@page import="com.hms.Helper.FactoryProduct" %>
<%@page import="java.util.List" %>
<%
     int id = Integer.parseInt(request.getParameter("id"));
AddRoomDao ard = new AddRoomDao(FactoryProduct.getFactory());
    List<AddRoom> list = ard.getbyId(id);
    
%>

<%
    Profile user = (Profile) session.getAttribute("current-user");
   
    if (user == null) {
        session.setAttribute("message", "Plz login first !<br> session expired .");
        response.sendRedirect("customerLogin.jsp");
        return;
    }
 // AddBookingDao abd = new AddBookingDao(FactoryProduct.getFactory());
  // List<AddBooking> list = abd.getbyId(id);
   
 //   List<AddBooking> list = abd.getAll(firstName);  
%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="zxx" class="js">

    <meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->

    <head>
        <!-- Google Font -->

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

        <link rel="shortcut icon" href="images/favicon.png">

        <link id="skin-default" rel="stylesheet" href="assets/css/themee1e3.css?ver=3.2.4">
    </head>

    <body class="nk-body bg-lighter npc-general has-sidebar ">
        <div class="nk-app-root">
            <div class="nk-main ">
                <div class="nk-wrap ">
                    <%@include file="dashboardHeader.jsp" %> 


                    <form action="BookNowServlet" method="post" >
                        <!--                         <input type="hidden" name="operation" value="addbooking"/>
                                                 <input type="hidden" name="operation" value="addprofile"/>
                        -->

                        <input type="text" value="<%=user.getId()%>" name="profileId" readonly>

                        <div class="nk-content ">
                            <div class="container-fluid">
                                <div class="nk-content-inner">
                                    <div class="nk-content-body">
                                        <div class="nk-block-head nk-block-head-sm">
                                            <div class="nk-block-between">
                                                <div class="nk-block-head-content">
                                                    <h3 class="nk-block-title page-title">Add Booking</h3>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="nk-block">
                                            <div class="card card-bordered">
                                                <div class="card-inner">
                                                    <div class="row gy-4">


                                                        <div class="col-md-6 col-lg-4 col-xxl-3">
                                                            <div class="form-group"><label class="form-label">Select an
                                                                    package</label>
                                                                <div class="form-control-wrap"><select class="col-md-6 col-lg-12 "
                                                                                                       name="straterPackage" 
                                                                                                       data-placeholder="Select multiple options">
                                                                        <option value="Honeymoon Package">Honeymoon Package
                                                                        </option>
                                                                        <option value="Vacation Package">Vacation Package
                                                                        </option>
                                                                        <option value="Spring Package">Spring Package
                                                                        </option>
                                                                        <option value="marriage Package">marriage Package
                                                                        </option>
                                                                    </select></div>
                                                            </div>
                                                        </div>
                                                        <%for(AddRoom ar:list){                                                                                                             
                                                        %>
                                                        <input type="hidden" value="<%=ar.getId()%>" name="roomId" readonly>

                                                        <div class="col-md-6 col-lg-4 col-xxl-3">
                                                            <div class="form-group">
                                                                <label class="form-label"
                                                                       for="first-name">Room Type</label>
                                                                <input type="text" readonly
                                                                       class="form-control" id="room-type" value="<%=ar.getRoomType()%>" name="roomType"
                                                                       required></div>
                                                        </div>
                                                        <%}%>                            
                                                        <div class="col-md-6 col-lg-4 col-xxl-3">
                                                            <div class="form-group"><label class="form-label">Arrived
                                                                    Date</label>
                                                                <div class="form-control-wrap">
                                                                    <div class="form-icon form-icon-right"><em
                                                                            class="icon ni ni-calendar"></em></div><input
                                                                        type="text" class="form-control date-picker"
                                                                        data-date-format="yyyy-mm-dd" placeholder="yyyy-mm-dd" name="arrivedDate">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 col-lg-4 col-xxl-3">
                                                            <div class="form-group"><label class="form-label">Depart
                                                                    Date</label>
                                                                <div class="form-control-wrap">
                                                                    <div class="form-icon form-icon-right"><em
                                                                            class="icon ni ni-calendar"></em></div><input
                                                                        type="text" class="form-control date-picker"
                                                                        data-date-format="yyyy-mm-dd" placeholder="yyyy-mm-dd"  name="depatDate">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 col-lg-4 col-xxl-3">
                                                            <div class="form-group"><label class="form-label"
                                                                                           for="total-person">Total Person</label><input type="number"
                                                                                           class="form-control" id="total-person"
                                                                                           placeholder="Total Person" name="totalPerson"></div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="form-group"><label class="form-label"
                                                                                           for="default-textarea">Note</label>
                                                                <div class="form-control-wrap"><textarea
                                                                        class="form-control no-resize"
                                                                        id="default-textarea" name="note">Large text area content</textarea>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-12">
                                                            <div class="form-group">

                                                                <button type="submit" class="btn btn-primary">Add Booking</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>


                    <%@include file="footer.jsp" %>
                </div>
            </div>
        </div>


        <%@include file="js.jsp" %>
        <script src="assets/js/bundlee1e3.js?ver=3.2.4"></script>
        <script src="assets/js/scriptse1e3.js?ver=3.2.4"></script>
        <script src="assets/js/demo-settingse1e3.js?ver=3.2.4"></script>
    </body>

</html>