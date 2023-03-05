<%-- 
    Document   : AdminListUser
    Created on : Mar 5, 2023, 9:58:12 PM
    Author     : ASUS G731G
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" href="..\assets\images\logo-fav.png">
        <title>Beagle</title>
        <link rel="stylesheet" type="text/css"
              href="..\assets\lib\perfect-scrollbar\css\perfect-scrollbar.css">
        <link rel="stylesheet" type="text/css"
              href="..\assets\lib\material-design-icons\css\material-design-iconic-font.min.css">
        <link rel="stylesheet" type="text/css"
              href="..\assets\lib\select2\css\select2.min.css">
        <link rel="stylesheet" type="text/css"
              href="..\assets\lib\bootstrap-slider\css\bootstrap-slider.min.css">
        <link rel="stylesheet" type="text/css"
              href="..\assets\lib\datetimepicker\css\bootstrap-datetimepicker.min.css">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
              integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="..\assets\css\app.css" type="text/css">
        <style type="text/css">
            .isDisabled {
                cursor: not-allowed;
                opacity: 0.5;
            }

            .isDisabled>a {
                color: currentColor;
                display: inline-block; /* For IE11/ MS Edge bug */
                pointer-events: none;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div class="be-wrapper be-fixed-sidebar">
            <nav class="navbar navbar-expand fixed-top be-top-header">
                <div class="container-fluid">
                    <!-- <div class="be-navbar-header"><a class="navbar-brand" href="index.html"></a>
</div> -->
                    <div class="page-title">
                        <span>TN Dashboard</span>
                    </div>
                    <div class="be-right-navbar">
                        <ul class="nav navbar-nav float-right be-user-nav">
                            <li class="nav-item dropdown"><a
                                    class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
                                    role="button" aria-expanded="false"><img
                                        src="..\assets\images\avatar.png" alt="Avatar"><span
                                        class="user-name">Admin</span></a>
                                <div class="dropdown-menu" role="menu">
                                    <div class="user-info">
                                        <div class="user-name">Admin</div>
                                        <div class="user-position online">Available</div>
                                    </div>
                                    <a class="dropdown-item" href="#"><span
                                            class="icon mdi mdi-face"></span>Account</a> <a
                                        class="dropdown-item" href="logout-admin"> <span
                                            class="icon mdi mdi-power"></span>Logout
                                    </a>
                                </div></li>
                        </ul>
                        <ul class="nav navbar-nav float-right be-icons-nav">
                            <li class="nav-item dropdown"><a
                                    class="nav-link be-toggle-right-sidebar" href="#" role="button"
                                    aria-expanded="false"><span class="icon mdi mdi-settings"></span></a></li>
                            <li class="nav-item dropdown"><a
                                    class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
                                    role="button" aria-expanded="false"><span
                                        class="icon mdi mdi-notifications"></span><span
                                        class="indicator"></span></a>
                                <ul class="dropdown-menu be-notifications">

                                </ul></li>
                            <li class="nav-item dropdown"><a
                                    class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
                                    role="button" aria-expanded="false"><span
                                        class="icon mdi mdi-apps"></span></a>
                                <ul class="dropdown-menu be-connections">
                                    <li>
                                        <div class="list">
                                            <div class="content">
                                                <div class="row">
                                                    <div class="col">
                                                        <a class="connection-item" href="#"><img
                                                                src="..\assets\images\github.png" alt="Github"><span>GitHub</span></a>
                                                    </div>
                                                    <div class="col">
                                                        <a class="connection-item" href="#"><img
                                                                src="..\assets\images\bitbucket.png" alt="Bitbucket"><span>Bitbucket</span></a>
                                                    </div>
                                                    <div class="col">
                                                        <a class="connection-item" href="#"><img
                                                                src="..\assets\images\slack.png" alt="Slack"><span>Slack</span></a>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <a class="connection-item" href="#"><img
                                                                src="..\assets\images\dribbble.png" alt="Dribbble"><span>Dribbble</span></a>
                                                    </div>
                                                    <div class="col">
                                                        <a class="connection-item" href="#"><img
                                                                src="..\assets\images\mail_chimp.png" alt="Mail Chimp"><span>Mail
                                                                Chimp</span></a>
                                                    </div>
                                                    <div class="col">
                                                        <a class="connection-item" href="#"><img
                                                                src="..\assets\images\dropbox.png" alt="Dropbox"><span>Dropbox</span></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="footer">
                                            <a href="#">More</a>
                                        </div>
                                    </li>
                                </ul></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div class="be-left-sidebar">
                <div class="left-sidebar-wrapper">
                    <a class="left-sidebar-toggle" href="#">Dashboard</a>
                    <div class="left-sidebar-spacer">
                        <div class="left-sidebar-scroll">
                            <div class="left-sidebar-content">
                                <ul class="sidebar-elements">
                                    <li class="divider">Menu</li>
                                    <li class=""><a href="dashboard-home"><i
                                                class="icon mdi mdi-home"></i><span>Dashboard</span></a></li>
                                    <li class="parent"><a href="dashboardHome.jsp"><i
                                                class="icon mdi mdi-face"></i><span>Admin Manager</span></a>
                                        <ul class="sub-menu">
                                            <li><a href="list-book"></span>View All Book</a></li></li>
                                    <li><a href="add-book">Add Book</a></li>
                                    <li><a href=""><span
                                                class="badge badge-primary float-right">New</span>Drag &amp;
                                            Drop</a></li>
                                </ul>
                                </li>
                                <li class="parent"><a href="#"><i
                                            class="icon mdi mdi-border-all fa-solid fa-user"></i><span>Users
                                            Manager</span></a>
                                    <ul class="sub-menu">
                                        <li class="active"><a href="list-user">View All User</a></li></li>
                                </ul>
                                </li>
                                <li class="divider">Features</li>
                                <li class="parent"><a href="#"><i
                                            class="icon mdi mdi-inbox"></i><span>Email</span></a>
                                    <ul class="sub-menu">
                                        <li><a href="email-inbox.html">Inbox</a></li>
                                        <li><a href="email-read.html">Email Detail</a></li>
                                        <li><a href="email-compose.html">Email Compose</a></li>
                                    </ul></li>
                                <li class="parent"><a href="#"><i
                                            class="icon mdi mdi-pin"></i><span>Maps</span></a>
                                    <ul class="sub-menu">
                                        <li><a href="maps-google.html">Google Maps</a></li>
                                        <li><a href="maps-vector.html">Vector Maps</a></li>
                                    </ul></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="be-content">
                <div class="page-head">
                    <h2 class="page-head-title">View All Users</h2>
                    <nav aria-label="breadcrumb" role="navigation">
                        <ol class="breadcrumb page-head-nav">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item"><a href="#">Users Manager/</span></li>
                            <li class="breadcrumb-item active">View All Users</li>
                        </ol>
                    </nav>
                </div>
                <div class="main-content container-fluid">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card card-table">
                                <div class="row table-filters-container">
                                    <div class="card-body">
                                        <div id="table5_wrapper"
                                             class="dataTables_wrapper dt-bootstrap4 no-footer">
                                            <form action="search-user" method="get">
                                                <div class="row be-datatable-header">
                                                    <div class="col-sm-6">
                                                        <div class="dataTables_length" id="table5_length">
                                                            <label>Show <select name="numPerPage"
                                                                                aria-controls="table5"
                                                                                class="custom-select custom-select-sm form-control form-control-sm"
                                                                                onchange="this.form.submit()">
                                                                    <option value="1" ${numPerPage == 1 ? 'selected':''}>1</option>
                                                                    <option value="2" ${numPerPage == 2 ? 'selected':''}>2</option>
                                                                    <option value="5" ${numPerPage == 5 ? 'selected':''}>5</option>
                                                                    <option value="10" ${numPerPage == 10 ? 'selected':''}>10</option>
                                                                </select> entries
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6 ">
                                                        <div id="table5_filter" class="dataTables_filter float-right">
                                                            <label><input type="search"
                                                                          class="form-control form-control-sm" placeholder="Email"
                                                                          aria-controls="table5" name="searchEmail" style=""
                                                                          value="${searchEmail}"></label>
                                                            <button type="submit" class="btn btn-outline-secondary" style="line-height: 32px; margin-bottom: 4px;">Search</button>
                                                        </div>

                                                    </div>
                                                </div>
                                            </form>
                                            <div class="row be-datatable-body">
                                                <div class="col-sm-12">
                                                    <table
                                                        class="table table-striped table-hover table-bordered table-fw-widget dataTable no-footer dtr-"
                                                        id="table5" role="grid" style="width: 1171px;">
                                                        <thead>
                                                            <tr role="row">
                                                                <th class="text-center" aria-controls="table5"
                                                                    rowspan="1" colspan="1" style="width: 10%;">ID</th>
                                                                <th class="text-center" aria-controls="table5"
                                                                    rowspan="1" colspan="1" style="width: 35%">Full
                                                                    Name</th>
                                                                <th class="text-center" aria-controls="table5"
                                                                    rowspan="1" colspan="1" style="width: 35%;">Email</th>
                                                                <th class="text-center" aria-controls="table5"
                                                                    rowspan="1" colspan="1" style="width: 20%">Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach items="${users}" var="u">
                                                                <tr class="gradeA odd" role="row">
                                                                    <td class="text-center">${u.userId}</td>
                                                                    <td>${u.fullName}</td>
                                                                    <td>${u.email}</td>
                                                                    <td class="text-center"><a
                                                                            href="detail-user?id=${u.userId}">Detail</a></td>
                                                                </tr>
                                                            </c:forEach>

                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                            <div class="row be-datatable-footer">
                                                <div class="col-sm-12">
                                                    <div class="dataTables_info" id="table5_info" role="status">
                                                        Totals ${fn:length(users)} entries</div>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="dataTables_paginate paging_simple_numbers"
                                                         id="table5_paginate">
                                                        <c:if test="${searchEmail == null}">
                                                            <ul class="pagination">
                                                                <li
                                                                    class="paginate_button page-item previous ${page == 1 ? 'isDisabled' : ''}"
                                                                    id="table5_previous"><a
                                                                        href="list-user?page=${page-1}&numPerPage=${numPerPage}"
                                                                        aria-controls="table5" class="page-link ">Previous</a></li>
                                                                <li class="paginate_button page-item inactive"><a
                                                                        href="list-user?page=${page}&numPerPage=${numPerPage}"
                                                                        aria-controls="table5" data-dt-idx="1" tabindex="0"
                                                                        class="page-link ">1</a></li>
                                                                <li
                                                                    class="paginate_button page-item next ${page == num ? 'isDisabled' : ''}"
                                                                    id="table5_next"><a
                                                                        href="list-user?page=${page+1}&numPerPage=${numPerPage}"
                                                                        aria-controls="table5" class="page-link">Next</a></li>
                                                            </ul>
                                                        </c:if>
                                                        <c:if test="${searchEmail != null}">
                                                            <ul class="pagination">
                                                                <li
                                                                    class="paginate_button page-item previous ${page == 1 ? 'isDisabled' : ''}"
                                                                    id="table5_previous"><a
                                                                        href="list-user?page=${page-1}&numPerPage=${numPerPage}&searchEmail=${searchEmail}"
                                                                        aria-controls="table5" class="page-link ">Previous</a></li>
                                                                <li class="paginate_button page-item inactive"><a
                                                                        href="list-user?page=${page}&numPerPage=${numPerPage}&searchEmail=${searchEmail}"
                                                                        aria-controls="table5" data-dt-idx="1" tabindex="0"
                                                                        class="page-link ">1</a></li>
                                                                <li
                                                                    class="paginate_button page-item next ${page == num ? 'isDisabled' : ''}"
                                                                    id="table5_next"><a
                                                                        href="list-user?page=${page+1}&numPerPage=${numPerPage}&searchEmail=${searchEmail}"
                                                                        aria-controls="table5" class="page-link">Next</a></li>
                                                            </ul>
                                                        </c:if>
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
        </div>
        <script src="..\assets\lib\jquery\jquery.min.js" type="text/javascript"></script>
        <script
            src="..\assets\lib\perfect-scrollbar\js\perfect-scrollbar.min.js"
        type="text/javascript"></script>
        <script src="..\assets\lib\bootstrap\dist\js\bootstrap.bundle.min.js"
        type="text/javascript"></script>
        <script src="..\assets\js\app.js" type="text/javascript"></script>
        <script type="text/javascript">
                                                                                                                            $(document).ready(function () {
                                                                                                                                //-initialize the javascript
                                                                                                                                App.init();
                                                                                                                            });
        </script>
    </body>

</html>

