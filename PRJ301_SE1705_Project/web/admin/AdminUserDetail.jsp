<%-- 
    Document   : AdminUserDetail
    Created on : Mar 6, 2023, 9:10:13 PM
    Author     : ASUS G731G
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
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
        <!-- TinyMCE CDN -->
        <script
            src="https://cdn.tiny.cloud/1/no-api-key/tinymce/6/tinymce.min.js"
        referrerpolicy="origin"></script>

        <script>
            tinymce.init({
                selector: 'textarea#editor',
            });
        </script>
    </head>

    <body>
        <div class="be-wrapper">
            <nav class="navbar navbar-expand fixed-top be-top-header">
                <div class="container-fluid">
                    <!-- <div class="be-navbar-header"><a class="navbar-brand" href="index.html"></a>
</div> -->
                    <div class="page-title">
                        <span>TTDNA Dashboard</span>
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
                                        <div class="user-name">${admin.fullName}</div>
                                        <div class="user-position online">Admin</div>
                                    </div>
                                    <a class="dropdown-item" href="#"><span
                                            class="icon mdi mdi-face"></span>Account</a><a
                                        class="dropdown-item" href="#"> <span
                                            class="icon mdi mdi-settings"></span>Settings
                                    </a><a class="dropdown-item" href="logout-admin"> <span
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
                                    <li>
                                        <div class="title">
                                            Notifications<span class="badge badge-pill">3</span>
                                        </div>
                                        <div class="list">
                                            <div class="be-scroller-notifications">
                                                <div class="content">
                                                    <ul>
                                                        <li class="notification notification-unread"><a
                                                                href="#">
                                                                <div class="image">
                                                                    <img src="..\assets\images\avatar2.png" alt="Avatar">
                                                                </div>
                                                                <div class="notification-info">
                                                                    <div class="text">
                                                                        <span class="user-name">Jessica Caruso</span> accepted
                                                                        your invitation to join the team.
                                                                    </div>
                                                                    <span class="date">2 min ago</span>
                                                                </div>
                                                            </a></li>
                                                        <li class="notification"><a href="#">
                                                                <div class="image">
                                                                    <img src="..\assets\images\avatar3.png" alt="Avatar">
                                                                </div>
                                                                <div class="notification-info">
                                                                    <div class="text">
                                                                        <span class="user-name">Joel King</span> is now
                                                                        following you
                                                                    </div>
                                                                    <span class="date">2 days ago</span>
                                                                </div>
                                                            </a></li>
                                                        <li class="notification"><a href="#">
                                                                <div class="image">
                                                                    <img src="..\assets\images\avatar4.png" alt="Avatar">
                                                                </div>
                                                                <div class="notification-info">
                                                                    <div class="text">
                                                                        <span class="user-name">John Doe</span> is watching
                                                                        your main repository
                                                                    </div>
                                                                    <span class="date">2 days ago</span>
                                                                </div>
                                                            </a></li>
                                                        <li class="notification"><a href="#">
                                                                <div class="image">
                                                                    <img src="..\assets\images\avatar5.png" alt="Avatar">
                                                                </div>
                                                                <div class="notification-info">
                                                                    <span class="text"><span class="user-name">Emily
                                                                            Carter</span> is now following you</span><span class="date">5
                                                                        days ago</span>
                                                                </div>
                                                            </a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="footer">
                                            <a href="#">View all notifications</a>
                                        </div>
                                    </li>
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
                                    <li><a href="ui-dragdrop.html"><span
                                                class="badge badge-primary float-right">New</span>Drag &amp;
                                            Drop</a></li>
                                </ul>
                                </li>
                                <li  class="parent"><a href="#"><i
                                            class="icon mdi mdi-border-all fa-solid fa-user"></i><span>Users
                                            Manager</span></a>
                                    <ul class="sub-menu">
                                        <li class="active"><a href="list-user">User Profiles</a></li></li>
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
                <div class="main-content container-fluid">
                    <div class="user-profile">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="user-display">
                                    <div class="user-display-bg">
                                        <img src="..\assets\images\user-profile-display.png"
                                             alt="Profile Background">
                                    </div>
                                    <div class="user-display-bottom">
                                        <div class="user-display-avatar">
                                            <img src="..\assets\images\avatar-150.png" alt="Avatar">
                                        </div>
                                        <div class="user-display-info">
                                            <div class="name"></div>
                                            <div class="nick">
                                                <span class="mdi mdi-account"></span>${uzer.fullName}</div>
                                        </div>
                                        <div class="row user-display-details">
                                            <div class="col-4">
                                                <div class="title">BookCase</div>
                                                <div class="counter">26</div>
                                            </div>
                                            <div class="col-4">
                                                <div class="title">Commits</div>
                                                <div class="counter">26</div>
                                            </div>
                                            <div class="col-4">
                                                <div class="title">Followers</div>
                                                <div class="counter">26</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="user-info-list card">
                                    <div class="card-header card-header-divider">User Profile
                                    </div>
                                    <div class="card-body">
                                        <table class="no-border no-strip skills">
                                            <tbody class="no-border-x no-border-y">
                                                <tr>
                                                    <td class="item">Full Name<span
                                                            class="icon s7-portfolio"></span></td>
                                                    <td>${uzer.fullName}</td>
                                                </tr>
                                                <tr>
                                                    <td class="item">Email<span class="icon s7-gift"></span></td>
                                                    <td>${uzer.email}</td>
                                                </tr>
                                                <tr>
                                                    <td class="item">Role<span class="icon s7-gift"></span></td>
                                                    <td><c:forEach items="${roles}" var="r">
                                                            ${r.roleId}   
                                                        </c:forEach></td>
                                                </tr>
                                                <tr>
                                                    <td class="item">Created Date<span class="icon s7-gift"></span></td>
                                                    <td>${roles.get(0).createdDate}</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script src="..\assets\lib\jquery\jquery.min.js"
            type="text/javascript"></script>
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

        </div>
    </body>

</html>
