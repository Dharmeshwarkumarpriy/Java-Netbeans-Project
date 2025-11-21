<%-- 
    Document   : index
    Created on : Nov 25, 2023, 5:55:46 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <%@include file="component/Style.jsp" %>   
       
    </head>
    
    <body background="img/blogPhoto/img10.jpeg">
 
        <div class="container-fluid">

            <div class="row">
                <div class="col-md-4">

                </div>
                <div class="col-md-4">
                    
                    <form action="loginServlet" mathod="post" enctype="multipart/form-data">
                        <h2>Login form!</h2>
                       <%@include file="component/message.jsp" %>
                     
                        <fieldset>
                            <div class="col-md-4">
                                <label>email :</label><br>
                                <input type="email" name="email" placeholder="email" autofocus><br><br>
                            </div>

                            <div class="col-md-4">
                                <label>password :</label><br>
                                <input type="password" name="pass" placeholder="password"><br><br>
                            </div>

                            <button type="submit" class="btn btn-primary">Login</button>

                            <div class="bottom">
                                <span class="helper-text m-b-10">
                                    <br>
                                    <a href="blogUsers.jsp">Create Account</a></span>
                            </div>
                        </fieldset>
                    </form>


                </div>
                <div class="col-md-4"></div>

            </div>
        </div>
    </body>
</html>
