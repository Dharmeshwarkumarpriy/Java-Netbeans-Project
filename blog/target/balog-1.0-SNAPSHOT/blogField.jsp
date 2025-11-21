<%-- 
    Document   : balogField
    Created on : Nov 26, 2023, 8:08:14 AM
    Author     : dell
--%>

<%@page import="java.util.List"%>
<%@page import="com.balog.dao.BlogUsersDao"%>
<%@page import="com.balog.helper.FactoryProduct"%>
<%@page import="com.balog.entity.BlogUsers"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

BlogUsers users = (BlogUsers) session.getAttribute("current-user");

  if(users==null){
   
        session.setAttribute("message", "Plz login first !<br> session is expired .");
        response.sendRedirect("login.jsp");
        return;
    
    }
    

%>
<!DOCTYPE htm
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>blog field</title>
         <%@include file="component/Style.jsp" %> 
    </head>
    <body background="img/blogPhoto/img8.jpeg">
        
         <fieldset style="width: 15rem; ">
        <form action="BlogFieldServlet" method="post" enctype="multipart/form-data">
            <br>
             <legend>Blog Text :</legend><br>
            <div class="row">
                <div class="col-md-6">
                    <table>
                        <tr>
                    <th>blog type:</th>
                    <td>
                        <select name="blogType">
                            <option selected disabled value="">blog type</option>
                            <option name="blogType" value="Java">Java</option>
                            <option name="blogType" value="C++">C++</option>
                            <option name="blogType" value="Python">Python</option>
                            <option name="blogType" value="Php">Php</option>
                        </select>
                    </td>
                </tr>
                    </table>
                    
                </div>

                <div class="col-md-4">
                    <label>title:</label><br>
                    <input type="text" name="title" placeholder="title">
                </div>

<!--                <div class="col-md-4">
                    <label>date:</label><br>
                    <input type="date" name="date" placeholder="date">
                </div>-->

                <div class="col-md-4">
                    <label>discription :</label><br>
                    <textarea type="textarea" name="discription" rows="10" cols="50">
                    
                    
                    </textarea>
 </div>

                <div class="col-md-4">
                    <label>photo:</label><br>
                    <input type="file" name="photo" placeholder="photo">
                </div>

                <div class="col-md-4">
                    <label>create by:</label><br>
                    <input type="text" name="creater" value="<%=users.getName()%>">
                </div>

                <button type="submit" class="btn btn-primary">save</button>

            </div>
        </form>
         </fieldset>


    </body>
</html>
