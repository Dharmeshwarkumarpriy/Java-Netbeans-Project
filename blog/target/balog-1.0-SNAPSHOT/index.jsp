<%-- 
    Document   : Blog
    Created on : Dec 6, 2023, 6:13:05 AM
    Author     : dell
--%>

<%@page import="java.util.List"%>
<%@page import="com.balog.entity.BlogField"%>
<%@page import="com.balog.dao.BlogFieldDao"%>
<%@page import="com.balog.helper.FactoryProduct"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    BlogFieldDao asd = new BlogFieldDao(FactoryProduct.getFactory());
    List<BlogField> list = asd.getAllBlogField();

%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>blog</title>
        <%@include file="component/common_css_js.jsp" %>   

    <style>
        * {
            margin: 0;
            padding: 0;

        }

        

        .logo img {
            border: 1px solid green;
            border-radius: 15rem;
            height: 6rem;
            width: 6rem;
            display: flex;
            margin: 2rem;

        }

      
        button:hover {
            color: lime;
        }

        button .logout:hover {
            color: lime;

        }

        button {
            height: 2rem;
            width: 7rem;
            border-radius: 1rem;
        }
    </style>
</head>

<body>
    <%@include file="component/blognavbar.jsp" %>   

   <div class="container-fluid mt-4">

            <div class="row mt-3">
                
                
                
            <div class="col-md-2">
       
                  
      
            </div>
                
 <div class="col-md-8">
           
           <div class="row">
                        <%for (BlogField f : list) {%>
                     



                            <div class="card mb-3" >
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



                                          
                                        </div>
                                    </div>
                                </div>
                            </div>


                 
                        <%}%>    
                    </div>
            </div>
            <div class="col-md-2"></div>
            
        </div>
        
    </div>

</body>

</html>