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
        <title>profile-page</title>
        
        <%@include file="Components/common_css_js.jsp" %>
      </head>
    <body>
               <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="card mt-3">
                        <div class="card-header custom-bg text-white text-center">
                            <h3 class="bg-warning"> Profile!</h3>
                            </div>
                                
             <div class="card-body">
                 <%@include file="Components/message.jsp" %>
                 <form action="AddProfileServlet" method="post" enctype="multipart/form-data">
                  <div class="row gy-4">
                                                        <div class="col-md-6 col-lg-4 col-xxl-3">
                                                            <div class="form-group"><label class="form-label"
                                                                                           for="first-name">First Name</label><input type="text"
                                                                                           class="form-control" id="first-name" name="firstName"
                                                                                           placeholder="First Name"></div>
                                                        </div>
                                                        <div class="col-md-6 col-lg-4 col-xxl-3">
                                                            <div class="form-group"><label class="form-label"
                                                                                           for="last-name">Last Name</label><input type="text"
                                                                                           class="form-control" id="last-name" name="lastName" placeholder="Last Name">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 col-lg-4 col-xxl-3">
                                                            <div class="form-group"><label class="form-label">Gender</label>
                                                                <div class="form-control-wrap"><select
                                                                        class="col-md-6 col-lg-12 " name="gender"
                                                                        data-placeholder="Select multiple options">
                                                                        <option value="Male">Male</option>
                                                                        <option value="Female">Female</option>
                                                                        <option value="Other">Other</option>
                                                                    </select></div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 col-lg-4 col-xxl-3">
                                                            <div class="form-group"><label class="form-label"
                                                                                           for="phone-no">Phone</label><input type="number"
                                                                                           class="form-control" id="phone-no" name="phone" placeholder="Phone no">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 col-lg-4 col-xxl-3">
                                                            <div class="form-group"><label class="form-label" for="email">Email
                                                                    Address</label><input type="email" class="form-control"
                                                                                      id="email" name="email" placeholder="Email Address"></div>
                                                        </div>
                                                        <div class="col-md-6 col-lg-4 col-xxl-3">
                                                            <div class="form-group"><label class="form-label"
                                                                                           for="address">Adddress</label><input type="text"
                                                                                           class="form-control" id="address" name="address" placeholder="Address">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 col-lg-4 col-xxl-3">
                                                            <div class="form-group"><label class="form-label">Upload
                                                                    Photo</label>
                                                                <div class="form-control-wrap">
                                                                    <div class="form-file"><input type="file" multiple
                                                                                                  class="form-file-input" id="customFile" name="image"><label
                                                                                                  class="form-file-label" for="customFile">Choose
                                                                            file</label></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                                                                  
                                                                                                  
                                                       
                                                        <div class="col-sm-12">
                                                            <div class="form-group">
                                                                <center>
                                                                    <button type="submit" class="btn btn-primary">Add</button>
                                                           </center>
                                                            </div>
                                                        </div>
                                                    </div>
</form>
                  
                                </div>
                                   
                            
                        
                    </div>
                </div>
            </div>
        </div>
                 
  </body>
</html>
