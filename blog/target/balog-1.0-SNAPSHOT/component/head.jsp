<%-- 
    Document   : head
    Created on : Dec 4, 2023, 7:04:45 AM
    Author     : dell
--%>


<%@page import="com.balog.entity.BlogField"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Head Page</title>
        
        <style>
        * {
            margin: 0;
            padding: 0;

        }

        body {
            position: relative;
            display: flex;
            color: aliceblue;
            background-color: black;
        }

        .logo img {
            border: 1px solid green;
            border-radius: 10rem;
            height: 5rem;
            width: 5rem;
            display: flex;
            margin: 2rem;

        }

        #menu {
            background-color: black;
            width: 13rem;
            height: 20rem;
            margin: 3rem;
        }

        #menu li,
        a {

            margin: 20px;
            padding: 2px;
            line-height: 2rem;
        }

        .bi,
        a {
            color: gray;
            margin: 5px;

        }

        a:hover,
        .bi:hover {
            color: white;
        }

        #menu li {
            list-style: none;
            transition: 1s ease;
        }

        #menu li:hover {
            background: gray;
            cursor: pointer;
        }

        #menu li:hover .bi,
        li:hover a {
            color: white;
        }

        li {
            list-style: none;
        }

        #header {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-left: 25rem;
            margin-top: -22rem;

        }

        h1 {
            font-size: 4rem;
        }

        button {
            font-size: 1.5rem;
        }

        .btn {
            margin-left: 8rem;

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
    <div class="container">
        <section id="menu">
            <div class="logo">
                <img src="8.jpg" alt="">
            </div>
            <div class="items">
                <li>
                    <i class="bi bi-house-door"></i>
                    <a href="#">Home</a>
                </li>
                <li>
                    <i class="bi bi-file-earmark-person-fill"></i>
                    <a href="#">New Blog</a>
                </li>
                <li>
                    <i class="bi bi-view-list"></i>
                    <a href="#">veiw</a>
                </li>
                <li>
                    <i class="bi bi-person-fill"></i>
                    <a href="#">profile</a>
                </li>
                <li>
                    <i class="bi bi-search"></i>
                    <a href="#">Search</a>
                </li>
            </div>

        </section>

        <section id="header">
            <div class="navigation">
                <h1>Blog</h1>

            </div>

            <span>
                <li class="btn">

                    <button type="button"> <i class="blog bi-substack"></i> Add blog</button>
                </li>
            </span>
            <span>
                <li class="btn">

                    <button type="button"> <i class="Logout bi-box-arrow-right"></i> Logout</button>
                </li>
            </span>

        </section>

        <section id="field">
            
            <h2>Blog!</h2>

    <div class="container-fluid mt-4">

        <div class="row mt-3">
            <div class="col-md-2" >
                <ul>
                    <li><a href="blogField.jsp" class="nav-link ">new blog</a></li>
                </ul>

            </div>         

            <div class="col-md-10">
                <div class="row">

                    <div class="col-md-6">

                        <%for (BlogField f : list) {%>

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
                                        <p class="card-text"><small class="text-muted"> ||<%=f.getDate()%></small></p>

                                        <p><%=f.getDiscription()%></p>

                                        <footer class="blockquote-footer">art by: <cite title="Source Title"><%=f.getCreater()%></cite></footer>
                                        

                                         
                                     <a href="DeleteField?id=<%=f.getId()%>" ><button type="submit" class="btn btn-primary">delete</button></a>
                                        <a href="UpdateFieldServlet?id=<%=f.getId()%>" class="btn btn-primary">edit</a>
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%}%>             

                    </div>
                </div>
            </div>    

        </div>
    </div>

            
        </section>
        
    </div>

</body>
</html>
