<%-- 
    Document   : balogUsers
    Created on : Nov 25, 2023, 7:31:27 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Account</title>

        <%@include file="component/Style.jsp" %>   

    </head>
    <body background="img/blogPhoto/img1.jpeg">

        <fieldset style="width: 5rem; ">
            
            <form action="BlogUsersServlet" method="post" enctype="multipart/form-data">
                <br>
                <legend>Create Account :</legend><br> 

                <div class="row">

                    <div class="col-md-4">
                        <lable>name:</lable><br>
                        <input type="text" name="name" placeholder="name" autofocus>
                    </div>

                    <div class="col-md-4">
                        <lable>email id:</lable><br>
                        <input type="email" name="email" placeholder="email">
                    </div>

                    <div class="col-md-4">
                        <lable>password:</lable><br>
                        <input type="password" name="password" placeholder="password" required>
                    </div>

                    <div class="col-md-4">
                        <lable>phone:</lable><br>
                        <input type="text" name="phone" placeholder="phone">
                    </div>

                    <div class="col-md-4">
                        <label>photo:</label><br>
                        <input type="file" name="photo" placeholder="photo">
                    </div>

                    <button type="submit" class="btn btn-primary">submit</button>
                </div>

            </form>
        </fieldset>
    </body>
</html>
