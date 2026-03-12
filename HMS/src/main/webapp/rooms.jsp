<%@page import="com.hms.Entity.AddRoom" %>
<%@page import="com.hms.Dao.AddRoomDao" %>
<%@page import="com.hms.Helper.FactoryProduct" %>
<%@page import="java.util.List" %>
<%
       AddRoomDao addRoomDao =new AddRoomDao(FactoryProduct.getFactory());
       List<AddRoom> list=addRoomDao.getAllRoom();
        
        
        
%>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Sona Template">
        <meta name="keywords" content="Sona, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Sona | Template</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

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




        <!-- Page Preloder -->
       
       <%@include file="header.jsp" %>
        <!-- Header End -->

        <!-- Breadcrumb Section Begin -->
        <div class="breadcrumb-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumb-text">
                            <h2>Our Rooms</h2>
                            <div class="bt-option">
                                <a href="./home.jsp">Home</a>
                                <span>Rooms</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb Section End -->

        <!-- Rooms Section Begin -->
      
        <section class="rooms-section spad">
            <div class="container">
                <div class="row">
                      <%                                                            for(AddRoom add :list){        
if(add.getStatus().equals("InActive")){
        %>
                    <div class="col-lg-4 col-md-6">
                        <div class="room-item">
                            
                            <img src="../Img/roomImg/<%=add.getRoomImage()%>" alt="">
                            <div class="ri-text">
                             
                                <h4><%=add.getRoomType()%></h4>
                                <h3><%=add.getRoomPrice()%> Rs/-<span> Pernight</span></h3>
                                <table>
                                    <tbody>
                                        <tr>
                                            <td class="r-o">Size:</td>
                                            <td>30 ft</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Capacity:</td>
                                            <td>Max persion <%=add.getBedCapacity()%></td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Bed:</td>
                                            <td><%=add.getBedType()%></td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Services:</td>
                                            <td><%=add.getDescription()%>Wifi, Television, Bathroom,...</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <a href="room-details.jsp?id=<%=add.getId()%>" class="primary-btn">More Details</a>
                            </div>
                        </div>
                    </div>
                                <%}}%>
                   
                </div>
            </div>
        </section>

        <!-- Rooms Section End -->

        <!-- Footer Section Begin -->
  <%@include file="footer.jsp" %>
        <!-- Footer Section End -->

        <!-- Search model Begin -->
     
        <!-- Search model end -->

        <!-- Js Plugins -->
       <%@include file="js.jsp" %>
    </body>

</html>