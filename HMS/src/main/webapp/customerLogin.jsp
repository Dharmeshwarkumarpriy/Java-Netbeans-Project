<%-- 
    Document   : customerLogin
    Created on : Jan 25, 2025, 8:42:07 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login-page</title>
        
        <%@include file="Components/common_css_js.jsp" %>
        
    </head>
    <body>
       
       <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="card mt-3">
                        <div class="card-header custom-bg text-white text-center">
                            <h3 class="bg-warning"> Login!</h3>
                            </div>
                                
             <div class="card-body">
                 <%@include file="Components/message.jsp" %>
                 <form action="CustomerLoginServlet" method="post" >
                     <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Email</label>
    <input name="email" type="email" class="form-control" id="exampleInputPassword1" autofocus>
  </div>
            
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input name="password" type="password" class="form-control" id="exampleInputPassword1">
  </div>
                                                              <div class="container text-center">
  <button type="submit" class="btn btn-success">Login</button>
 
  <button type="reset" class="btn btn-warning">Reset</button>
   <a href="profile.jsp"">new registration.</a>
                                
                                        </div>
</form>
                                </div>
                                   
                            
                        
                    </div>
                </div>
            </div>
        </div>
        
  </body>
</html>
