<%--
<%@page import="com.hms.Entity.AddRoom" %>
<%@page import="com.hms.Entity.AddRoomType" %>
<%@page import="com.hms.Dao.AddRoomDao" %>
<%@page import="com.hms.Dao.AddRoomTypeDao" %>
<%@page import="com.hms.Helper.FactoryProduct" %>
<%@page import="java.util.List" %>%--%>
<!DOCTYPE html>
<html lang="zxx" class="js">
    <!-- Mirrored from dashlite.net/demo1/hotel/room-list.jsp
    by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 18 Dec 2024 12:49:44 GMT -->
    <!-- Added by HTTrack -->
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->

    <head>
        <meta charset="utf-8">
        <meta name="author" content="Softnio">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description"
              content="A powerful and conceptual apps base dashboard template that especially build for developers and programmers.">
        <link rel="shortcut icon" href="../images/favicon.png">
        <title>Hotel Management Room List | DashLite Admin Template</title>
        <link rel="stylesheet" href="../assets/css/dashlitee1e3.css?ver=3.2.4">
        <link id="skin-default" rel="stylesheet" href="../assets/css/themee1e3.css?ver=3.2.4">
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-91615293-4"></script>
        <script>window.dataLayer = window.dataLayer || []; function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());
        gtag('config', 'UA-91615293-4');</script>
    </head>
    <%--<%
       AddRoomDao addRoomDao =new AddRoomDao(FactoryProduct.getFactory());
       List<AddRoom> list=addRoomDao.getAllRoom();
        
        
        
        %>--%>
         
         
    <body class="nk-body bg-lighter npc-general has-sidebar ">
        
        <div class="nk-app-root">
            <div class="nk-main ">
                <%@include file="../hotel/sidebar.jsp" %>
                <div class="nk-wrap ">
                    <%@include file="../hotel/header.jsp" %>
                    <div class="nk-content ">
                        <div class="container-fluid">
                            <div class="nk-content-inner">
                                <div class="nk-content-body">
                                    <div class="nk-block-head nk-block-head-sm">
                                        <div class="nk-block-between g-3">
                                            <div class="nk-block-head-content">
                                                <h3 class="nk-block-title page-title">Staff Add List</h3>
                                                <%@include file="../Components/message.jsp" %>
                                                <div class="nk-block-des text-soft">
                                                    <p>All staff list.</p>
                                                </div>
                                            </div>
                                            <div class="nk-block-head-content">
                                                <ul class="nk-block-tools g-3">
                                                    <li>
                                                        <div class="drodown"><a href="#"
                                                                                class="dropdown-toggle btn btn-icon btn-primary"
                                                                                data-bs-toggle="dropdown"> Add Staff<em
                                                                    class="icon ni ni-plus"> </em></a>
                                                            <div class="dropdown-menu dropdown-menu-end">
                                                                <ul class="link-list-opt no-bdr">
                                                                    <li><a data-bs-toggle="modal" href="#add-room"><span>Add
                                                                                Staff</span></a></li>
                                                                    <li><a href="#"><span>Import staff</span></a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="nk-block">
                                        <div class="card card-bordered card-stretch">
                                            <div class="card-inner-group">
                                                <div class="card-inner position-relative card-tools-toggle">
                                                    <div class="card-title-group">
                                                        <div class="card-tools">
                                                            <div class="form-inline flex-nowrap gx-3">
                                                                <div class="form-wrap w-150px"><select
                                                                        class="form-select js-select2 js-select2-sm"
                                                                        data-search="off" data-placeholder="Bulk Action">
                                                                        <option value="">Bulk Action</option>
                                                                        <option value="change">Change Status</option>
                                                                    </select></div>
                                                                <div class="btn-wrap"><span
                                                                        class="d-none d-md-block"><button
                                                                            class="btn btn-dim btn-outline-light disabled">Apply</button></span><span
                                                                        class="d-md-none"><button
                                                                            class="btn btn-dim btn-outline-light btn-icon disabled"><em
                                                                                class="icon ni ni-arrow-right"></em></button></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card-tools me-n1">
                                                            <ul class="btn-toolbar gx-1">
                                                                <li><a href="#"
                                                                       class="btn btn-icon search-toggle toggle-search"
                                                                       data-target="search"><em
                                                                            class="icon ni ni-search"></em></a></li>
                                                                <li class="btn-toolbar-sep"></li>
                                                                <li>
                                                                    <div class="toggle-wrap"><a href="#"
                                                                                                class="btn btn-icon btn-trigger toggle"
                                                                                                data-target="cardTools"><em
                                                                                class="icon ni ni-menu-right"></em></a>
                                                                        <div class="toggle-content"
                                                                             data-content="cardTools">
                                                                            <ul class="btn-toolbar gx-1">
                                                                                <li class="toggle-close"><a href="#"
                                                                                                            class="btn btn-icon btn-trigger toggle"
                                                                                                            data-target="cardTools"><em
                                                                                            class="icon ni ni-arrow-left"></em></a>
                                                                                </li>
                                                                                <li>
                                                                                    <div class="dropdown"><a href="#"
                                                                                                             class="btn btn-trigger btn-icon dropdown-toggle"
                                                                                                             data-bs-toggle="dropdown">
                                                                                            <div class="dot dot-primary">
                                                                                            </div><em
                                                                                                class="icon ni ni-filter-alt"></em>
                                                                                        </a>
                                                                                        <div
                                                                                            class="filter-wg dropdown-menu dropdown-menu-xl dropdown-menu-end">
                                                                                            <div class="dropdown-head"><span
                                                                                                    class="sub-title dropdown-title">Filter
                                                                                                    Rooms</span>
                                                                                                <div class="dropdown"><a
                                                                                                        href="#"
                                                                                                        class="btn btn-sm btn-icon"><em
                                                                                                            class="icon ni ni-more-h"></em></a>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div
                                                                                                class="dropdown-body dropdown-body-rg">
                                                                                                <div class="row gx-6 gy-3">
                                                                                                    <div class="col-6">
                                                                                                        <div
                                                                                                            class="form-group">
                                                                                                            <label
                                                                                                                class="overline-title overline-title-alt">Status</label><select
                                                                                                                class="form-select js-select2 js-select2-sm">
                                                                                                                <option
                                                                                                                    value="any">
                                                                                                                    Any
                                                                                                                    Status
                                                                                                                </option>
                                                                                                                <option
                                                                                                                    value="paid">
                                                                                                                    Booked
                                                                                                                </option>
                                                                                                                <option
                                                                                                                    value="open">
                                                                                                                    Open
                                                                                                                </option>
                                                                                                                <option
                                                                                                                    value="inactive">
                                                                                                                    Inactive
                                                                                                                </option>
                                                                                                            </select></div>
                                                                                                    </div>
                                                                                                    <div class="col-6">
                                                                                                        <div
                                                                                                            class="form-group">
                                                                                                            <label
                                                                                                                class="overline-title overline-title-alt">Room
                                                                                                                Type</label><select
                                                                                                                class="form-select js-select2 js-select2-sm">
                                                                                                                <option
                                                                                                                    value="any">
                                                                                                                    Any Type
                                                                                                                </option>
                                                                                                                <option
                                                                                                                    value="single">
                                                                                                                    Single
                                                                                                                </option>
                                                                                                                <option
                                                                                                                    value="double">
                                                                                                                    Double
                                                                                                                </option>
                                                                                                                <option
                                                                                                                    value="delux">
                                                                                                                    Delux
                                                                                                                </option>
                                                                                                                <option
                                                                                                                    value="sdelux">
                                                                                                                    Super
                                                                                                                    Delux
                                                                                                                </option>
                                                                                                            </select></div>
                                                                                                    </div>
                                                                                                    <div class="col-12">
                                                                                                        <div
                                                                                                            class="form-group">
                                                                                                            <button
                                                                                                                type="button"
                                                                                                                class="btn btn-secondary">Filter</button>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div
                                                                                                class="dropdown-foot between">
                                                                                                <a class="clickable"
                                                                                                   href="#">Reset
                                                                                                    Filter</a><a
                                                                                                    href="#">Save Filter</a>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </li>
                                                                                <li>
                                                                                    <div class="dropdown"><a href="#"
                                                                                                             class="btn btn-trigger btn-icon dropdown-toggle"
                                                                                                             data-bs-toggle="dropdown"><em
                                                                                                class="icon ni ni-setting"></em></a>
                                                                                        <div
                                                                                            class="dropdown-menu dropdown-menu-xs dropdown-menu-end">
                                                                                            <ul class="link-check">
                                                                                                <li><span>Show</span></li>
                                                                                                <li class="active"><a
                                                                                                        href="#">10</a></li>
                                                                                                <li><a href="#">20</a></li>
                                                                                                <li><a href="#">50</a></li>
                                                                                            </ul>
                                                                                            <ul class="link-check">
                                                                                                <li><span>Order</span></li>
                                                                                                <li class="active"><a
                                                                                                        href="#">DESC</a>
                                                                                                </li>
                                                                                                <li><a href="#">ASC</a></li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="card-search search-wrap" data-search="search">
                                                        <div class="card-body">
                                                            <div class="search-content"><a href="#"
                                                                                           class="search-back btn btn-icon toggle-search"
                                                                                           data-target="search"><em
                                                                        class="icon ni ni-arrow-left"></em></a><input
                                                                    type="text"
                                                                    class="form-control border-transparent form-focus-none"
                                                                    placeholder="Search by room no or type"><button
                                                                    class="search-submit btn btn-icon"><em
                                                                        class="icon ni ni-search"></em></button></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card-inner p-0">
                                                    <div class="nk-tb-list nk-tb-ulist">
                                                        <div class="nk-tb-item nk-tb-head">
                                                            <div class="nk-tb-col nk-tb-col-check">
                                                                <div
                                                                    class="custom-control custom-control-sm custom-checkbox notext">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="uid"><label class="custom-control-label"
                                                                           for="uid"></label></div>
                                                            </div>
                                                            <div class="nk-tb-col"><span class="sub-text">Room No.</span>
                                                            </div>
                                                            <div class="nk-tb-col"><span class="sub-text">Room Type</span>
                                                            </div>
                                                            <div class="nk-tb-col tb-col-md"><span class="sub-text">AC/Non
                                                                    AC</span></div>
                                                            <div class="nk-tb-col tb-col-lg"><span
                                                                    class="sub-text">Meal</span></div>
                                                            <div class="nk-tb-col tb-col-lg"><span class="sub-text">Bed
                                                                    Capacity</span></div>
                                                            <div class="nk-tb-col tb-col-mb"><span
                                                                    class="sub-text">Rent</span></div>
                                                            <div class="nk-tb-col tb-col-md"><span
                                                                    class="sub-text">Status</span></div>
                                                            <div class="nk-tb-col nk-tb-col-tools text-end">
                                                                <div class="dropdown"><a href="#"
                                                                                         class="btn btn-xs btn-outline-light btn-icon dropdown-toggle"
                                                                                         data-bs-toggle="dropdown" data-offset="0,5"><em
                                                                            class="icon ni ni-plus"></em></a>
                                                                    <div
                                                                        class="dropdown-menu dropdown-menu-xs dropdown-menu-end">
                                                                        <ul class="link-tidy sm no-bdr">
                                                                            <li>
                                                                                <div
                                                                                    class="custom-control custom-control-sm custom-checkbox">
                                                                                    <input type="checkbox"
                                                                                           class="custom-control-input"
                                                                                           checked="" id="bo"><label
                                                                                           class="custom-control-label"
                                                                                           for="bo">Booked</label></div>
                                                                            </li>
                                                                            <li>
                                                                                <div
                                                                                    class="custom-control custom-control-sm custom-checkbox">
                                                                                    <input type="checkbox"
                                                                                           class="custom-control-input"
                                                                                           checked="" id="open"><label
                                                                                           class="custom-control-label"
                                                                                           for="open">Open</label></div>
                                                                            </li>
                                                                            <li>
                                                                                <div
                                                                                    class="custom-control custom-control-sm custom-checkbox">
                                                                                    <input type="checkbox"
                                                                                           class="custom-control-input"
                                                                                           id="inac"><label
                                                                                           class="custom-control-label"
                                                                                           for="inac">Inactive</label></div>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        
                                                       <%--<%
                                                            for(AddRoom addroom:list){
                                                            
                                                            
                                                            %>--%>
                                                        <div class="nk-tb-item">
                                                            <div class="nk-tb-col nk-tb-col-check">
                                                                <div
                                                                    class="custom-control custom-control-sm custom-checkbox notext">
                                                                    <input type="checkbox" class="custom-control-input"
                                                                           id="uid1"><label class="custom-control-label"
                                                                           for="uid1"></label></div>
                                                            </div>
                                                            <div class="nk-tb-col"><span class="text-primary"></span>
                                                            </div>
                                                            <div class="nk-tb-col"><span> <span
                                                                        class="dot dot-primary d-md-none ms-1"></span></span>
                                                            </div>
                                                            <div class="nk-tb-col tb-col-md"><span></span></div>
                                                            <div class="nk-tb-col tb-col-lg"><span></span></div>
                                                            <div class="nk-tb-col tb-col-lg"><span></span></div>
                                                            <div class="nk-tb-col tb-col-mb"><span class="tb-amount">
                                                                    <span class="currency">USD</span></span></div>
                                                            <div class="nk-tb-col tb-col-md"><span
                                                                    class="tb-status text-primary"></span></div>
                                                            <div class="nk-tb-col nk-tb-col-tools">
                                                                <ul class="nk-tb-actions gx-1">
                                                                    <li>
                                                                        <div class="drodown"><a href="#"
                                                                                                class="dropdown-toggle btn btn-icon btn-trigger"
                                                                                                data-bs-toggle="dropdown"><em
                                                                                    class="icon ni ni-more-h"></em></a>
                                                                            <div class="dropdown-menu dropdown-menu-end">
                                                                                <ul class="link-list-opt no-bdr">
                                                                                    <li><a data-bs-toggle="modal"
                                                                                           href="#edit-room"><em
                                                                                                class="icon ni ni-edit"></em><span>Edit</span></a>
                                                                                    </li>
                                                                                    <li><a href="#"<em
                                                                                                class="icon ni ni-trash"></em><span>Delete</span></a>
                                                                                    </li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                       <%-- <%}%>--%>
                                                    </div>
                                                </div>
                                                      
                                                <div class="card-inner">
                                                    <div class="nk-block-between-md g-3">
                                                        <div class="g">
                                                            <ul
                                                                class="pagination justify-content-center justify-content-md-start">
                                                                <li class="page-item"><a class="page-link" href="#">Prev</a>
                                                                </li>
                                                                <li class="page-item"><a class="page-link" href="#">1</a>
                                                                </li>
                                                                <li class="page-item"><a class="page-link" href="#">2</a>
                                                                </li>
                                                                <li class="page-item"><span class="page-link"><em
                                                                            class="icon ni ni-more-h"></em></span></li>
                                                                <li class="page-item"><a class="page-link" href="#">6</a>
                                                                </li>
                                                                <li class="page-item"><a class="page-link" href="#">7</a>
                                                                </li>
                                                                <li class="page-item"><a class="page-link" href="#">Next</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="g">
                                                            <div
                                                                class="pagination-goto d-flex justify-content-center justify-content-md-start gx-3">
                                                                <div>Page</div>
                                                                <div><select class="form-select js-select2" data-search="on"
                                                                             data-dropdown="xs center">
                                                                        <option value="page-1">1</option>
                                                                        <option value="page-2">2</option>
                                                                        <option value="page-4">4</option>
                                                                        <option value="page-5">5</option>
                                                                        <option value="page-6">6</option>
                                                                        <option value="page-7">7</option>
                                                                        <option value="page-8">8</option>
                                                                        <option value="page-9">9</option>
                                                                        <option value="page-10">10</option>
                                                                        <option value="page-11">11</option>
                                                                        <option value="page-12">12</option>
                                                                        <option value="page-13">13</option>
                                                                        <option value="page-14">14</option>
                                                                        <option value="page-15">15</option>
                                                                        <option value="page-16">16</option>
                                                                        <option value="page-17">17</option>
                                                                        <option value="page-18">18</option>
                                                                        <option value="page-19">19</option>
                                                                        <option value="page-20">20</option>
                                                                    </select></div>
                                                                <div>OF 102</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%@include file="../hotel/footer.jsp" %>
                </div>
            </div>
        </div>
        <div class="modal fade" tabindex="-1" role="dialog" id="region">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content"><a href="#" class="close" data-bs-dismiss="modal"><em
                            class="icon ni ni-cross-sm"></em></a>
                    <div class="modal-body modal-body-md">
                        <h5 class="title mb-4">Select Your Country</h5>
                        <div class="nk-country-region">
                            <ul class="country-list text-center gy-2">
                                <li><a href="#" class="country-item"><img src="../images/flags/arg.png" alt=""
                                                                          class="country-flag"><span class="country-name">Argentina</span></a></li>
                                <li><a href="#" class="country-item"><img src="../images/flags/aus.png" alt=""
                                                                          class="country-flag"><span class="country-name">Australia</span></a></li>
                                <li><a href="#" class="country-item"><img src="../images/flags/bangladesh.png" alt=""
                                                                          class="country-flag"><span class="country-name">Bangladesh</span></a></li>
                                <li><a href="#" class="country-item"><img src="../images/flags/canada.png" alt=""
                                                                          class="country-flag"><span class="country-name">Canada
                                            <small>(English)</small></span></a></li>
                                <li><a href="#" class="country-item"><img src="../images/flags/china.png" alt=""
                                                                          class="country-flag"><span class="country-name">Centrafricaine</span></a></li>
                                <li><a href="#" class="country-item"><img src="../images/flags/china.png" alt=""
                                                                          class="country-flag"><span class="country-name">China</span></a></li>
                                <li><a href="#" class="country-item"><img src="../images/flags/french.png" alt=""
                                                                          class="country-flag"><span class="country-name">France</span></a></li>
                                <li><a href="#" class="country-item"><img src="../images/flags/germany.png" alt=""
                                                                          class="country-flag"><span class="country-name">Germany</span></a></li>
                                <li><a href="#" class="country-item"><img src="../images/flags/iran.png" alt=""
                                                                          class="country-flag"><span class="country-name">Iran</span></a></li>
                                <li><a href="#" class="country-item"><img src="../images/flags/italy.png" alt=""
                                                                          class="country-flag"><span class="country-name">Italy</span></a></li>
                                <li><a href="#" class="country-item"><img src="../images/flags/mexico.png" alt=""
                                                                          class="country-flag"><span class="country-name">México</span></a></li>
                                <li><a href="#" class="country-item"><img src="../images/flags/philipine.png" alt=""
                                                                          class="country-flag"><span class="country-name">Philippines</span></a></li>
                                <li><a href="#" class="country-item"><img src="../images/flags/portugal.png" alt=""
                                                                          class="country-flag"><span class="country-name">Portugal</span></a></li>
                                <li><a href="#" class="country-item"><img src="../images/flags/s-africa.png" alt=""
                                                                          class="country-flag"><span class="country-name">South Africa</span></a></li>
                                <li><a href="#" class="country-item"><img src="../images/flags/spanish.png" alt=""
                                                                          class="country-flag"><span class="country-name">Spain</span></a></li>
                                <li><a href="#" class="country-item"><img src="../images/flags/switzerland.png" alt=""
                                                                          class="country-flag"><span class="country-name">Switzerland</span></a></li>
                                <li><a href="#" class="country-item"><img src="../images/flags/uk.png" alt=""
                                                                          class="country-flag"><span class="country-name">United Kingdom</span></a></li>
                                <li><a href="#" class="country-item"><img src="../images/flags/english.png" alt=""
                                                                          class="country-flag"><span class="country-name">United State</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
                
                <%--<% AddRoomTypeDao ard=new AddRoomTypeDao(FactoryProduct.getFactory());
                               List<AddRoomType> list2=ard.getAllRoomType();
                               
                               
                               %>--%>
        <div class="modal fade" tabindex="-1" role="dialog" id="add-room">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content"><a href="#" class="close" data-bs-dismiss="modal"><em
                            class="icon ni ni-cross-sm"></em></a>
                    <div class="modal-body modal-body-md">
                        <h5 class="modal-title">Add Staff</h5>
                        <form action="../AddStaffServlet" method="post" enctype="multipart/form-data" class="mt-2">
                            <div class="row g-gs">
                                <div class="col-md-6">
                                    <div class="form-group"><label class="form-label" for="room-no-add">First Name
                                            </label><input type="text" class="form-control" name="firstName"
                                                         placeholder="first Name"></div>
                                </div>
                                 <div class="col-md-6">
                                    <div class="form-group"><label class="form-label" for="room-no-add">Last Name
                                            </label><input type="text" class="form-control" name="lastName"
                                                         placeholder="last Name"></div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group"><label class="form-label" for="floorNo">Current Address</label>
                                        <textarea class="form-control" name="currentAddress" placeholder="Current Address"></textarea></div>
                                </div>
                                 <div class="col-md-6">
                                    <div class="form-group"><label class="form-label" for="room-no-add">Permanent Address
                                            </label><textarea class="form-control" name="permanentAddress"
                                                     placeholder="Permanent Address"></textarea></div>
                                </div>
                                 <div class="col-md-6">
                                    <div class="form-group"><label class="form-label" for="room-no-add">Email Address
                                            </label><input type="email" class="form-control" name="email"
                                                     placeholder="Email Address"></div>
                                </div>
                                 <div class="col-md-6">
                                    <div class="form-group"><label class="form-label" for="room-no-add">Phone Number
                                            </label><input type="number" class="form-control" name="phone"
                                                     placeholder="Phone Number" required/></div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group"><label class="form-label" for="room-no-add">Date of Birth
                                            </label><input type="date" class="form-control" name="dob"
                                                  placeholder="D.O.B" required/></div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group"><label class="form-label">Gender</label>
                                        <div class="form-control-wrap"><select class="form-select js-select2" name="gender">
                                                <option value="Male">Male</option>
                                                <option value="Female">Female</option>
                                                
                                            </select></div>
                                    </div>
                                </div>


                               <div class="col-md-6">
                                    <div class="form-group"><label class="form-label">Upload Id</label>
                                        <div class="form-control-wrap"><select class="form-select js-select2" name="uploadId">
                                                <option value="Addaar Card">Addaar Card</option>
                                                <option value="Pan card">Pan card</option>
                                                <option value="Drviling Licence">Drviling Licence</option>
                                            </select></div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group"><label class="form-label" for="room-no-add">upload Id Image
                                            </label><input type="file" class="form-control" name="idImage"
                                                         placeholder="upload Id Image"></div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group"><label class="form-label" for="room-no-add">staff Image
                                            </label><input type="file" class="form-control" name="image"
                                                         placeholder="staff Image"></div>
                                </div>
                               <div class="col-md-6">
                                    <div class="form-group"><label class="form-label">Staff Role</label>
                                        <div class="form-control-wrap"><select class="form-select js-select2" name="staffRole">
                                                <option value="Reception">Reception</option>
                                                <option value="Manager">Manger</option>
                                                <option value="Room Clarner">Room Cleaner</option>
                                                <option value="Room Sevice"> Room Service</option>
                                            </select></div>
                                    </div>
                                </div>
                                  <div class="col-md-6">
                                    <div class="form-group"><label class="form-label"> Departement</label>
                                        <div class="form-control-wrap"><select class="form-select js-select2" name="departement">
                                                <option value="cleaner">cleaner</option>
                                                <option value="Mangement">Mangement</option>
                                                
                                            </select></div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group"><label class="form-label" for="room-no-add">Work Schedule
                                            </label><input type="number" class="form-control" name="workSchedule"
                                                         placeholder="Work Schedule"></div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group"><label class="form-label" for="room-no-add">salary
                                            </label><input type="number" class="form-control" name="salary"
                                                         placeholder="salary"></div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group"><label class="form-label">Status</label>
                                        <div class="form-control-wrap"><select class="form-select js-select2" name="status">
                                                <option value="Active">Active</option>
                                                <option value="Inactive">Inactive</option>
                                                
                                            </select></div>
                                    </div>
                                </div>
                                 <div class="col-12">
                                    <ul class="align-center flex-wrap flex-sm-nowrap gx-4 gy-2">
                                        <li><button type="submit" class="btn btn-primary" data-bs-dismiss="modal">Add staff</button></li>
                                        <li><a href="#" class="link" data-bs-dismiss="modal">Cancel</a></li>
                                    </ul>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
                                            
         <%-- <% 
                                 
                                 for(AddRoom s:list){
                                 
                                 %> --%>
                                            
        <div class="modal fade" tabindex="-1" role="dialog" id="edit-room">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content"><a href="#" class="close" data-bs-dismiss="modal"><em
                            class="icon ni ni-cross-sm"></em></a>
                           
                            
                             
                    <div class="modal-body modal-body-md">
                        <h5 class="modal-title">Edit Room</h5>     
                        <form action="../UpdateAddRoomServlet" method="post" class="mt-2">
                            <div class="row g-gs">
                                <div class="col-md-6">
                                    <input type="hidden"value="" name="id">
                                    <div class="form-group"><label class="form-label" for="room-no-edit">Room
                                            No</label><input type="text" class="form-control" name="roomNo"
                                                         value="" placeholder="Room No"></div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group"><label class="form-label">Room Type</label>
                                        <div class="form-control-wrap"><select class="form-select js-select2" value="" name="roomType">
                                                <option value=""></option>
                                                <option value="Delux">Delux</option>
                                                <option value="Super delux">Super Delux</option>
                                                <option value="single">Single</option>
                                                <option value="Double">Double</option>
                                            </select></div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group"><label class="form-label">Air Conditon</label>
                                        <div class="form-control-wrap"><select class="form-select js-select2"  name="airCondition">
                                                <option value="Ac">Ac</option>
                                                <option value="Non Ac">Non AC</option>
                                                
                                            </select></div>
                                    </div>
                                </div>
                                
                               <div class="col-md-6">
                                    <div class="form-group"><label class="form-label">Meal</label>
                                        <div class="form-control-wrap"><select class="form-select js-select2" name="meal" value=""
                                                                               data-placeholder="Select multiple options">
                                                <option value="None">None</option>
                                                <option value="Breakfast">Breakfast</option>
                                                <option value="Lunch">Lunch</option>
                                                <option value="Dinner">Dinner</option>
                                                <option value="Two">Two</option>
                                                <option value="All">All</option>
                                            </select></div>
                                    </div>
                                </div>
                                                <div class="col-md-6">
                                    <div class="form-group"><label class="form-label" for="bed-no-edit">Bed
                                            Capacity</label><input type="text" class="form-control" name="bedCapacity" value=""
                                                               placeholder="Bed Capacity"></div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group"><label class="form-label" for="rent-edit">Rent</label><input
                                            type="text" class="form-control" name="roomPrice" value=""
                                            placeholder="0.00 USD"></div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group"><label class="form-label">Status</label>
                                        <div class="form-control-wrap"><select class="form-select js-select2" name="status" value=""
                                                                               data-placeholder="Select multiple options">
                                                <option value="Active">Active</option>
                                                <option value="InActive">InActive</option>
                                            </select></div>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <ul class="align-center flex-wrap flex-sm-nowrap gx-4 gy-2">
                                        <li><button class="btn btn-primary" data-bs-dismiss="modal">Update Room</button>
                                        </li>
                                        <li><a href="#" class="link" data-bs-dismiss="modal">Cancel</a></li>
                                    </ul>
                                </div>
                            
                            </div>
                              
                        </form>
                    </div>
            
                </div>
            </div>
        </div>
           <%--<%}%>--%>                     
        <ul class="nk-sticky-toolbar">
            <li class="demo-layout"><a class="toggle tipinfo" data-target="demoML" href="#" title="Main Demo Preview"><em
                        class="icon ni ni-dashlite"></em></a></li>
            <li class="demo-thumb"><a class="toggle tipinfo" data-target="demoUC" href="#" title="Use Case Concept"><em
                        class="icon ni ni-menu-squared"></em></a></li>
            <li class="demo-settings"><a class="toggle tipinfo" data-target="settingPanel" href="#"
                                         title="Demo Settings"><em class="icon ni ni-setting-alt"></em></a></li>
            <li class="demo-purchase"><a class="tipinfo" target="_blank" href="https://1.envato.market/e0y3g"
                                         title="Purchase"><em class="icon ni ni-cart"></em></a></li>
        </ul>
        <div class="nk-demo-panel nk-demo-panel-2x toggle-slide toggle-slide-right" data-content="demoML"
             data-toggle-overlay="true" data-toggle-body="true" data-toggle-screen="any">
            <div class="nk-demo-head">
                <h6 class="mb-0">Switch Demo Layout</h6><a
                    class="nk-demo-close toggle btn btn-icon btn-trigger revarse mr-n2" data-target="demoML" href="#"><em
                        class="icon ni ni-cross"></em></a>
            </div>
            <div class="nk-demo-list" data-simplebar>
                <div class="nk-demo-item"><a href="https://dashlite.net/demo1/index.jsp
                                             ">
                        <div class="nk-demo-image bg-blue"><img class="bg-purple" src="../../images/landing/layout-1d.jpg"
                                                                srcset="https://dashlite.net/images/landing/layout-1d2x.jpg 2x" alt="Demo Layout 1"></div>
                        <span class="nk-demo-title"><strong>Demo Layout 1</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="https://dashlite.net/demo2/index.jsp
                                             ">
                        <div class="nk-demo-image bg-purple"><img src="../../images/landing/layout-2d.jpg"
                                                                  srcset="https://dashlite.net/images/landing/layout-2d2x.jpg 2x" alt="Demo Layout 2"></div>
                        <span class="nk-demo-title"><strong>Demo Layout 2</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="https://dashlite.net/demo3/index.jsp
                                             ">
                        <div class="nk-demo-image bg-success"><img src="../../images/landing/layout-3d.jpg"
                                                                   srcset="https://dashlite.net/images/landing/layout-3d2x.jpg 2x" alt="Demo Layout 3"></div>
                        <span class="nk-demo-title"><strong>Demo Layout 3</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="https://dashlite.net/demo4/index.jsp
                                             ">
                        <div class="nk-demo-image bg-indigo"><img src="../../images/landing/layout-4d.jpg"
                                                                  srcset="https://dashlite.net/images/landing/layout-4d2x.jpg 2x" alt="Demo Layout 4"></div>
                        <span class="nk-demo-title"><strong>Demo Layout 4</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="https://dashlite.net/demo5/index.jsp
                                             ">
                        <div class="nk-demo-image bg-orange"><img src="../../images/landing/layout-5d.jpg"
                                                                  srcset="https://dashlite.net/images/landing/layout-5d2x.jpg 2x" alt="Demo Layout 5"></div>
                        <span class="nk-demo-title"><strong>Demo Layout 5</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="https://dashlite.net/demo6/index.jsp
                                             ">
                        <div class="nk-demo-image bg-purple"><img src="../../images/landing/layout-6d.jpg"
                                                                  srcset="https://dashlite.net/images/landing/layout-6d2x.jpg 2x" alt="Demo Layout 6"></div>
                        <span class="nk-demo-title"><strong>Demo Layout 6</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="https://dashlite.net/demo7/index.jsp
                                             ">
                        <div class="nk-demo-image bg-teal"><img src="../../images/landing/layout-7d.jpg"
                                                                srcset="https://dashlite.net/images/landing/layout-7d2x.jpg 2x" alt="Demo Layout 7"></div>
                        <span class="nk-demo-title"><strong>Demo Layout 7</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="https://dashlite.net/demo8/index.jsp
                                             ">
                        <div class="nk-demo-image bg-azure"><img src="../../images/landing/layout-8d.jpg"
                                                                 srcset="https://dashlite.net/images/landing/layout-8d2x.jpg 2x" alt="Demo Layout 8"></div>
                        <span class="nk-demo-title"><strong>Demo Layout 8</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="https://dashlite.net/demo9/index.jsp
                                             ">
                        <div class="nk-demo-image bg-pink"><img src="../../images/landing/layout-9d.jpg"
                                                                srcset="https://dashlite.net/images/landing/layout-9d2x.jpg 2x" alt="Demo Layout 9"></div>
                        <span class="nk-demo-title"><strong>Demo Layout 9</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="https://dashlite.net/landing/index.jsp
                                             ">
                        <div class="nk-demo-image bg-red"><img src="../../images/landing/main-landing.jpg"
                                                               srcset="https://dashlite.net/images/landing/main-landing2x.jpg 2x" alt="Landing Page"></div>
                        <span class="nk-demo-title"><strong>Landing Page</strong> <span
                                class="badge badge-danger ml-1">Free</span></span>
                    </a></div>
            </div>
        </div>
        <div class="nk-demo-panel nk-demo-panel-2x toggle-slide toggle-slide-right" data-content="demoUC"
             data-toggle-overlay="true" data-toggle-body="true" data-toggle-screen="any">
            <div class="nk-demo-head">
                <h6 class="mb-0">Use Case Concept</h6><a class="nk-demo-close toggle btn btn-icon btn-trigger revarse mr-n2"
                                                         data-target="demoUC" href="#"><em class="icon ni ni-cross"></em></a>
            </div>
            <div class="nk-demo-list" data-simplebar>
                <div class="nk-demo-item"><a href="https://dashlite.net/demo9/copywriter/index.jsp
                                             ">
                        <div class="nk-demo-image bg-indigo"><img src="../../images/landing/demo-ai-copywriter.jpg"
                                                                  srcset="https://dashlite.net/images/landing/demo-ai-copywriter2x.jpg 2x"
                                                                  alt="ai-copywriter"></div><span class="nk-demo-title"><em
                                class="text-primary">Demo9</em><br><strong>Ai Copywriter Panel</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="https://dashlite.net/demo7/pharmacy/index.jsp
                                             ">
                        <div class="nk-demo-image bg-warning"><img src="../../images/landing/demo-pharmacy.jpg"
                                                                   srcset="https://dashlite.net/images/landing/demo-pharmacy2x.jpg 2x" alt="pharmacy"></div>
                        <span class="nk-demo-title"><em class="text-primary">Demo7</em><br><strong>Pharmacy Management
                                Panel</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="https://dashlite.net/demo5/loan/index.jsp
                                             ">
                        <div class="nk-demo-image bg-purple"><img src="../../images/landing/demo-loan.jpg"
                                                                  srcset="https://dashlite.net/images/landing/demo-loan2x.jpg 2x" alt="loan"></div><span
                            class="nk-demo-title"><em class="text-primary">Demo5</em><br><strong>Loan Management
                                Panel</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="https://dashlite.net/demo2/ecommerce/index.jsp
                                             ">
                        <div class="nk-demo-image bg-dark"><img src="../../images/landing/demo-ecommerce.jpg"
                                                                srcset="https://dashlite.net/images/landing/demo-ecommerce2x.jpg 2x" alt="Ecommerce"></div>
                        <span class="nk-demo-title"><em class="text-primary">Demo2</em><br><strong>E-Commerce
                                Panel</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="https://dashlite.net/demo2/lms/index.jsp
                                             ">
                        <div class="nk-demo-image bg-danger"><img src="../../images/landing/demo-lms.jpg"
                                                                  srcset="https://dashlite.net/images/landing/demo-lms2x.jpg 2x" alt="LMS"></div><span
                            class="nk-demo-title"><em class="text-primary">Demo2</em><br><strong>LMS / Learning Management
                                System</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="https://dashlite.net/demo1/crm/index.jsp
                                             ">
                        <div class="nk-demo-image bg-info"><img src="../../images/landing/demo-crm.jpg"
                                                                srcset="https://dashlite.net/images/landing/demo-crm2x.jpg 2x"
                                                                alt="CRM / Customer Relationship"></div><span class="nk-demo-title"><em
                                class="text-primary">Demo1</em><br><strong>CRM / Customer Relationship
                                Management</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="https://dashlite.net/demo7/hospital/index.jsp
                                             ">
                        <div class="nk-demo-image bg-indigo"><img src="../../images/landing/demo-hospital.jpg"
                                                                  srcset="https://dashlite.net/images/landing/demo-hospital2x.jpg 2x"
                                                                  alt="Hospital Managemen"></div><span class="nk-demo-title"><em
                                class="text-primary">Demo7</em><br><strong>Hospital Management</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="index.jsp
                                             ">
                        <div class="nk-demo-image bg-pink"><img src="../../images/landing/demo-hotel.jpg"
                                                                srcset="https://dashlite.net/images/landing/demo-hotel2x.jpg 2x" alt="Hotel Managemen">
                        </div><span class="nk-demo-title"><em class="text-primary">Demo1</em><br><strong>Hotel
                                Management</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="https://dashlite.net/demo3/cms/index.jsp
                                             ">
                        <div class="nk-demo-image bg-dark"><img src="../../images/landing/demo-cms.jpg"
                                                                srcset="https://dashlite.net/images/landing/demo-cms2x.jpg 2x" alt="cms"></div><span
                            class="nk-demo-title"><em class="text-primary">Demo3</em><br><strong>CMS Panel</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="https://dashlite.net/demo5/crypto/index.jsp
                                             ">
                        <div class="nk-demo-image bg-warning"><img src="../../images/landing/demo-buysell.jpg"
                                                                   srcset="https://dashlite.net/images/landing/demo-buysell2x.jpg 2x"
                                                                   alt="Crypto BuySell / Wallet"></div><span class="nk-demo-title"><em
                                class="text-primary">Demo5</em><br><strong>Crypto BuySell Panel</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="https://dashlite.net/demo6/invest/index.jsp
                                             ">
                        <div class="nk-demo-image bg-indigo"><img src="../../images/landing/demo-invest.jpg"
                                                                  srcset="https://dashlite.net/images/landing/demo-invest2x.jpg 2x" alt="HYIP / Investment">
                        </div><span class="nk-demo-title"><em class="text-primary">Demo6</em><br><strong>HYIP / Investment
                                Panel</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="https://dashlite.net/demo3/apps/file-manager.jsp
                                             ">
                        <div class="nk-demo-image bg-purple"><img src="../../images/landing/demo-file-manager.jpg"
                                                                  srcset="https://dashlite.net/images/landing/demo-file-manager2x.jpg 2x" alt="File Manager">
                        </div><span class="nk-demo-title"><em class="text-primary">Demo3</em><br><strong>Apps - File
                                Manager</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="https://dashlite.net/demo4/subscription/index.jsp
                                             ">
                        <div class="nk-demo-image bg-primary"><img src="../../images/landing/demo-subscription.jpg"
                                                                   srcset="https://dashlite.net/images/landing/demo-subscription2x.jpg 2x"
                                                                   alt="SAAS / Subscription"></div><span class="nk-demo-title"><em
                                class="text-primary">Demo4</em><br><strong>SAAS / Subscription Panel</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="https://dashlite.net/covid/index.jsp
                                             ">
                        <div class="nk-demo-image bg-danger"><img src="../../images/landing/demo-covid19.jpg"
                                                                  srcset="https://dashlite.net/images/landing/demo-covid192x.jpg 2x" alt="Covid Situation">
                        </div><span class="nk-demo-title"><em class="text-primary">Covid</em><br><strong>Coronavirus
                                Situation</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="https://dashlite.net/demo3/apps/messages.jsp
                                             ">
                        <div class="nk-demo-image bg-success"><img src="../../images/landing/demo-messages.jpg"
                                                                   srcset="https://dashlite.net/images/landing/demo-messages2x.jpg 2x" alt="Messages"></div>
                        <span class="nk-demo-title"><em class="text-primary">Demo3</em><br><strong>Apps -
                                Messages</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="https://dashlite.net/demo3/apps/mailbox.jsp
                                             ">
                        <div class="nk-demo-image bg-purple"><img src="../../images/landing/demo-inbox.jpg"
                                                                  srcset="https://dashlite.net/images/landing/demo-inbox2x.jpg 2x" alt="Inbox"></div><span
                            class="nk-demo-title"><em class="text-primary">Demo3</em><br><strong>Apps -
                                Mailbox</strong></span>
                    </a></div>
                <div class="nk-demo-item"><a href="https://dashlite.net/demo3/apps/chats.jsp
                                             ">
                        <div class="nk-demo-image bg-purple"><img src="../../images/landing/demo-chats.jpg"
                                                                  srcset="https://dashlite.net/images/landing/demo-chats2x.jpg 2x" alt="Chats / Messenger">
                        </div><span class="nk-demo-title"><em class="text-primary">Demo3</em><br><strong>Apps -
                                Chats</strong></span>
                    </a></div>
            </div>
        </div>
        <div class="nk-demo-panel toggle-slide toggle-slide-right" data-content="settingPanel" data-toggle-overlay="true"
             data-toggle-body="true" data-toggle-screen="any">
            <div class="nk-demo-head">
                <h6 class="mb-0">Preview Settings</h6><a class="nk-demo-close toggle btn btn-icon btn-trigger revarse mr-n2"
                                                         data-target="settingPanel" href="#"><em class="icon ni ni-cross"></em></a>
            </div>
            <div class="nk-opt-panel" data-simplebar>
                <div class="nk-opt-set">
                    <div class="nk-opt-set-title">Direction Change</div>
                    <div class="nk-opt-list col-2x">
                        <div class="nk-opt-item only-text active" data-key="dir" data-update="ltr"><span
                                class="nk-opt-item-bg"><span class="nk-opt-item-name">LTR Mode</span></span></div>
                        <div class="nk-opt-item only-text" data-key="dir" data-update="rtl"><span
                                class="nk-opt-item-bg"><span class="nk-opt-item-name">RTL Mode</span></span></div>
                    </div>
                </div>
                <div class="nk-opt-set">
                    <div class="nk-opt-set-title">Main UI Style</div>
                    <div class="nk-opt-list col-2x">
                        <div class="nk-opt-item only-text active" data-key="style" data-update="ui-default"><span
                                class="nk-opt-item-bg"><span class="nk-opt-item-name">Default</span></span></div>
                        <div class="nk-opt-item only-text" data-key="style" data-update="ui-clean"><span
                                class="nk-opt-item-bg"><span class="nk-opt-item-name">Clean</span></span></div>
                        <div class="nk-opt-item only-text" data-key="style" data-update="ui-shady"><span
                                class="nk-opt-item-bg"><span class="nk-opt-item-name">Shady</span></span></div>
                        <div class="nk-opt-item only-text" data-key="style" data-update="ui-softy"><span
                                class="nk-opt-item-bg"><span class="nk-opt-item-name">Softy</span></span></div>
                    </div>
                </div>
                <div class="nk-opt-set nk-opt-set-aside">
                    <div class="nk-opt-set-title">Sidebar Style</div>
                    <div class="nk-opt-list col-4x">
                        <div class="nk-opt-item" data-key="aside" data-update="is-light"><span
                                class="nk-opt-item-bg is-light"><span class="bg-lighter"></span></span><span
                                class="nk-opt-item-name">White</span></div>
                        <div class="nk-opt-item" data-key="aside" data-update="is-default"><span
                                class="nk-opt-item-bg is-light"><span class="bg-light"></span></span><span
                                class="nk-opt-item-name">Light</span></div>
                        <div class="nk-opt-item active" data-key="aside" data-update="is-dark"><span
                                class="nk-opt-item-bg"><span class="bg-dark"></span></span><span
                                class="nk-opt-item-name">Dark</span></div>
                        <div class="nk-opt-item" data-key="aside" data-update="is-theme"><span class="nk-opt-item-bg"><span
                                    class="bg-theme"></span></span><span class="nk-opt-item-name">Theme</span></div>
                    </div>
                </div>
                <div class="nk-opt-set nk-opt-set-header">
                    <div class="nk-opt-set-title">Header Style</div>
                    <div class="nk-opt-list col-4x">
                        <div class="nk-opt-item active" data-key="header" data-update="is-light"><span
                                class="nk-opt-item-bg is-light"><span class="bg-lighter"></span></span><span
                                class="nk-opt-item-name">White</span></div>
                        <div class="nk-opt-item" data-key="header" data-update="is-default"><span
                                class="nk-opt-item-bg is-light"><span class="bg-light"></span></span><span
                                class="nk-opt-item-name">Light</span></div>
                        <div class="nk-opt-item" data-key="header" data-update="is-dark"><span class="nk-opt-item-bg"><span
                                    class="bg-dark"></span></span><span class="nk-opt-item-name">Dark</span></div>
                        <div class="nk-opt-item" data-key="header" data-update="is-theme"><span class="nk-opt-item-bg"><span
                                    class="bg-theme"></span></span><span class="nk-opt-item-name">Theme</span></div>
                    </div>
                </div>
                <div class="nk-opt-set nk-opt-set-skin">
                    <div class="nk-opt-set-title">Primary Skin</div>
                    <div class="nk-opt-list">
                        <div class="nk-opt-item active" data-key="skin" data-update="default"><span
                                class="nk-opt-item-bg"><span class="skin-default"></span></span><span
                                class="nk-opt-item-name">Default</span></div>
                        <div class="nk-opt-item" data-key="skin" data-update="blue"><span class="nk-opt-item-bg"><span
                                    class="skin-blue"></span></span><span class="nk-opt-item-name">Blue</span></div>
                        <div class="nk-opt-item" data-key="skin" data-update="egyptian"><span class="nk-opt-item-bg"><span
                                    class="skin-egyptian"></span></span><span class="nk-opt-item-name">Egyptian</span></div>
                        <div class="nk-opt-item" data-key="skin" data-update="purple"><span class="nk-opt-item-bg"><span
                                    class="skin-purple"></span></span><span class="nk-opt-item-name">Purple</span></div>
                        <div class="nk-opt-item" data-key="skin" data-update="green"><span class="nk-opt-item-bg"><span
                                    class="skin-green"></span></span><span class="nk-opt-item-name">Green</span></div>
                        <div class="nk-opt-item" data-key="skin" data-update="red"><span class="nk-opt-item-bg"><span
                                    class="skin-red"></span></span><span class="nk-opt-item-name">Red</span></div>
                    </div>
                </div>
                <div class="nk-opt-set">
                    <div class="nk-opt-set-title">Skin Mode</div>
                    <div class="nk-opt-list col-2x">
                        <div class="nk-opt-item active" data-key="mode" data-update="light-mode"><span
                                class="nk-opt-item-bg is-light"><span class="theme-light"></span></span><span
                                class="nk-opt-item-name">Light Skin</span></div>
                        <div class="nk-opt-item" data-key="mode" data-update="dark-mode"><span class="nk-opt-item-bg"><span
                                    class="theme-dark"></span></span><span class="nk-opt-item-name">Dark Skin</span></div>
                    </div>
                </div>
                <div class="nk-opt-reset"><a href="#" class="reset-opt-setting">Reset Setting</a></div>
            </div>
        </div>
       
        <script src="../assets/js/bundlee1e3.js?ver=3.2.4"></script>
        <script src="../assets/js/scriptse1e3.js?ver=3.2.4"></script>
        <script src="../assets/js/demo-settingse1e3.js?ver=3.2.4"></script>
    </body>
    
</html>