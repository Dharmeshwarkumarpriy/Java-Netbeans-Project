<%-- 
    Document   : updateuser
    Created on : Apr 6, 2024, 12:54:43 PM
    Author     : dell
--%>

<%@page import="com.balog.entity.BlogUsers"%>
<%@page import="java.util.List"%>
<%@page import="com.balog.helper.FactoryProduct"%>
<%@page import="com.balog.dao.BlogUsersDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        int id=Integer.parseInt(request.getParameter("id"));
        BlogUsersDao bud=new BlogUsersDao(FactoryProduct.getFactory());
         List<BlogUsers>  list=bud.getbyId(id);
     %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update User</title>

        <%@include file="component/Style.jsp" %>   

    </head>
    <body background="img/blogPhoto/img1.jpeg">

        <fieldset style="width: 5rem; ">
            <form action="UpdateUserServlet" method="post" >
                <br>
                <legend>Update :</legend><br> 
                
                <% for(BlogUsers bu:list){%>
                <div class="row">

                    <div class="col-md-4">
                        <lable>name:</lable><br>
                         <input type="hidden" value="<%=bu.getId()%>" name="id">
                        <input type="text" name="name" value="<%=bu.getName()%>">
                    </div>

                    <div class="col-md-4">
                        <lable>email id:</lable><br>
                        <input type="email" name="email" value="<%=bu.getEmailId()%>">
                    </div>

                    <div class="col-md-4">
                        <lable>password:</lable><br>
                        <input type="password" name="password" value="<%=bu.getPassword()%>">
                    </div>

                    <div class="col-md-4">
                        <lable>phone:</lable><br>
                        <input type="tel" name="phone" value="<%=bu.getPhone()%>">
                    </div>

<!--                    <div class="col-md-4">
                        <label>photo:</label><br>
                        <input type="file" name="photo" placeholder="photo">
                    </div>-->

                    <button type="submit" class="btn btn-primary">update</button>
                </div>
<%}%>
            </form>
        </fieldset>
    </body>
</html>

