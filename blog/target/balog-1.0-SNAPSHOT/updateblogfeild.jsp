<%-- 
    Document   : updateblogfeild
    Created on : Dec 10, 2023, 10:28:17 PM
    Author     : dell
--%>

<%@page import="java.util.List"%>
<%@page import="com.balog.entity.BlogField"%>
<%@page import="com.balog.helper.FactoryProduct"%>
<%@page import="com.balog.dao.BlogFieldDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    BlogFieldDao bfd = new BlogFieldDao(FactoryProduct.getFactory());
    List<BlogField> list = bfd.getbyId(id);

    //Updates u=ud.getBYId(id);
    //BlogField bf=bfd.getbyId(id);
    //  bfd.getbyId(id);

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>

        <%@include file="component/common_css_js.jsp" %>   

    </head>
    <body>
        <%@include file="component/navbar.jsp" %>   

        <form action="UpdateFieldServlet" method="post">

            <div class="container">



                <legend>Blog Text :</legend><br>
                <%for (BlogField bf : list) {%>
                <div class="row">
                    <div class="col-md-4">
                        <label>blog type:</label><br>
                        <table>
                            <tr>
                                <th>blog type:</th>
                                <td>
                                    <select name="blogType" value="<%= bf.getBlogType()%>">
                                        <option selected disabled value="<%= bf.getBlogType()%>"><%= bf.getBlogType()%></option>
                                        <option name="blogType" value="Java">Java</option>
                                        <option name="blogType" value="C++">C++</option>
                                        <option name="blogType" value="Python">Python</option>
                                        <option name="blogType" value="Php">Php</option>
                                    </select>
                                </td>
                            </tr>
                        </table>

                        <input type="hidden" value="<%=bf.getId()%>" name="id">
                    </div>

                    <div class="col-md-4">
                        <label>title:</label><br>
                        <input type="text" name="title" value="<%= bf.getTitle()%>">
                    </div>

                    <div class="col-md-4">
                        <label>create by:</label><br>
                        <input type="text" name="creater" value="<%= bf.getCreater()%>" >
                    </div>

                    <!--                <div class="col-md-4">
                                        <label>date:</label><br>
                                        <input type="date" name="date" placeholder="date">
                                    </div>-->

                    <div class="col-md-4">
                        <label>discription :</label><br>
                        <textarea type="textarea" name="discription" value="<%= bf.getDiscription()%>" rows="10" cols="100">
                               value="<%= bf.getDiscription()%></textarea>
                    </div>

                    <!--                <div class="col-md-4">
                                        <label>photo:</label><br>
                                        <input type="file" name="photo" placeholder="photo">
                                    </div>-->


                </div>
                <button type="submit" class="btn btn-primary">update</button>


                <%}%>
            </div>
        </form>
    </body>
</html>
