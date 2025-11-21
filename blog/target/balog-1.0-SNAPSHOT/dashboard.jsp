<%-- 
    Document   : dashboard
    Created on : Nov 27, 2023, 11:09:05 PM
    Author     : dell
--%>


<%@page import="com.balog.dao.BlogUsersDao"%>
<%@page import="com.balog.entity.BlogUsers"%>
<%@page import="java.util.List"%>
<%@page import="com.balog.entity.BlogField"%>
<%@page import="com.balog.dao.BlogFieldDao"%>
<%@page import="com.balog.helper.FactoryProduct"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%   BlogUsers user = (BlogUsers) session.getAttribute("current-user");

    if (user == null) {
        session.setAttribute("message", "Plz login first !<br> session expired .");
        response.sendRedirect("login.jsp");
        return;
    }

    BlogFieldDao asd = new BlogFieldDao(FactoryProduct.getFactory());
    List<BlogField> list = asd.getAllBlogField();


%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
        <%@include file="component/common_css_js.jsp" %>   



    </head>
    <body >
        <%@include file="component/navbar.jsp" %>   


        <div class="container-fluid mt-4">

            <div class="row mt-3">
                <div class="col-md-2" >
                                        
                      <section id="menu">
           
            <div class="items">
                <li>
                    <i class="bi bi-house-door"></i>
                    <a href="Blog.jsp">Home</a>
                </li>
                
                <li>
                    <i class="bi bi-file-earmark-person-fill"></i>
                    <a href="blogField.jsp">New Blog</a>
                </li>
                
                <li>
                    <i class="bi bi-person-fill"></i>
                    <a href="profile.jsp">profile</a>
                </li>
                <li>
                    <i class="bi bi-search"></i>
                    <a href="logoutServlet">logout</a>
                </li>
            </div>

        </section>

                </div>         

                <div class="col-md-10">
                    <div class="row">
                      
                        <%for (BlogField f : list) {%>
                        
                        <div class="col-md-6">
                            
                            <div class="card mb-3" style="max-width: 540px;">
                                <div class="card-header">
                                    <%=f.getBlogType()%>
                                </div>
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="img/blogPhoto/<%=f.getPhoto()%>" class="img-fluid rounded-start" alt="..." id="icons"/>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <h5 class="card-title"><a href="#"><%=f.getTitle()%></a></h5>
                                            <p class="card-text"><small class="text-muted"> ||<%=f.getBlogDate()%></small></p>

                                            <p><%=f.getDiscription()%></p>

                                            <footer class="blockquote-footer">art by: <cite title="Source Title"><%=f.getCreater()%></cite></footer>



                                            <a href="DeleteField?id=<%=f.getId()%>" ><button type="submit" class="btn btn-primary">delete</button></a>
                                            <a href="updateblogfeild.jsp?id=<%=f.getId()%>"><button type="submit" class="btn btn-secondary">edit</button></a>

                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <%}%>    
                    </div>
                </div>    

            </div>
        </div>

    </body>
</html>
