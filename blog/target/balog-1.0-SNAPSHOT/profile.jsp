<%-- 
    Document   : profile
    Created on : Dec 12, 2023, 8:43:53 PM
    Author     : dell
--%>

<%@page import="java.util.List"%>
<%@page import="com.balog.entity.BlogUsers"%>
<%@page import="com.balog.dao.BlogUsersDao"%>
<%@page import="com.balog.helper.FactoryProduct"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%

BlogUsers users = (BlogUsers) session.getAttribute("current-user");

  if(users==null){
   
        session.setAttribute("message", "Plz login first !<br> session is expired .");
        response.sendRedirect("login.jsp");
        return;
    
    }
    

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
         <%@include file="component/common_css_js.jsp" %>   

        <%@include file="component/Style.jsp" %>   

    </head>
    <body >

        <div class="container-fluid mt-4">

            <div class="row mt-3">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="row">
                      
                        
                        <div class="col">



                            <div class="card mb-3" style="max-width: 540px;">
                                <div class="card-header">
                                    <h3>profile</h3>
                                </div>
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="img/blogPhoto/<%=users.getPhoto()%>" class="img-fluid rounded-start" alt="..." id="icons"/>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                              <h3 class="card-title"><a href="#"><%=users.getName()%></a></h3>
                                            <h5 class="card-title"><a href="#"><%=users.getEmailId()%></a></h5>
                                            <p class="card-text"><small class="text-muted"> ||<%=users.getPassword()%></small></p>

                                           

                                            <footer class="blockquote-footer">phone-no: <cite title="Source Title"><%=users.getPhone()%></cite></footer>



                                            <!--s<a href="DeleteUser?id=<%=users.getId()%>" ><button type="submit" class="btn btn-primary">delete</button></a>-->
                                            <a href="updateuser.jsp?id=<%=users.getId()%>"><button type="submit" class="btn btn-secondary">edit</button></a>

                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                      
                    </div>
                </div>    
                                            <div class="col-md-3"></div>
            </div>
        </div>
    </body>
</html>
