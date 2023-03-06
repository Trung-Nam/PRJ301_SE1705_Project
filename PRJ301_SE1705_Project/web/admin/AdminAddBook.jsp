<%-- 
    Document   : AdminAddBook
    Created on : Mar 6, 2023, 9:23:04 PM
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
        <title>TN Book</title>
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
                                    <li class="active"><a href="add-book">Add Book</a></li>
                                </ul>
                                </li>
                                <li class="parent"><a href="#"><i
                                            class="icon mdi mdi-border-all fa-solid fa-user"></i><span>Users
                                            Manager</span></a>
                                    <ul class="sub-menu">
                                        <li><a href="list-user">View All Users</a></li></li>
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
                    <h2 class="page-head-title">Add Book</h2>
                    <nav aria-label="breadcrumb" role="navigation">
                        <ol class="breadcrumb page-head-nav">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item"><a href="#"> Admin Manager </a></li>
                            <li class="breadcrumb-item active">Add Book</li>
                        </ol>
                    </nav>
                </div>
                <div class="main-content container-fluid">
                    <div class="row wizard-row">
                        <div class="col-md-12 fuelux">
                            <div class="block-wizard">
                                <div class="wizard wizard-ux" id="wizard1">
                                    <div class="step-content">
                                        <div class="container p-0">
                                            <form class="form-horizontal group-border-dashed"
                                                  action="add-book" method="POST"
                                                  data-parsley-namespace="data-parsley-"
                                                  data-parsley-validate="" novalidate="">
                                                <div class="form-group row">
                                                    <div class="col-sm-7">
                                                        <h3 class="wizard-title">Book Info</h3>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label
                                                        class="col-12 col-sm-3 col-form-label text-left text-sm-right">Title:</label>
                                                    <div class="col-12 col-sm-8 col-lg-6">
                                                        <input class="form-control" type="text"
                                                               placeholder="Title of book" id="title" name="title">
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label
                                                        class="col-12 col-sm-3 col-form-label text-left text-sm-right">Author:</label>
                                                    <div class="col-12 col-sm-8 col-lg-6">
                                                        <select name="author" id="" class="form-control">
                                                            <c:forEach items="${listAuthor}" var="authors">
                                                                <option value="${authors.getAuthorId()}">${authors.getAuthorName()}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label
                                                        class="col-12 col-sm-3 col-form-label text-left text-sm-right">Brief:</label>
                                                    <div class="col-12 col-sm-8 col-lg-6">
                                                        <input name="brief" class="form-control" type="text" placeholder="Brief">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label
                                                        class="col-12 col-sm-3 col-form-label text-left text-sm-right">Publisher:</label>
                                                    <div class="col-12 col-sm-8 col-lg-6">
                                                        <select name="publisher" id="" class="form-control">
                                                            <c:forEach items="${listPulisher}" var="publishers">
                                                                <option value="${publishers.getPublisherId()}">${publishers.getPublisherName()}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label
                                                        class="col-12 col-sm-3 col-form-label text-left text-sm-right">Category:</label>
                                                    <div class="col-12 col-sm-8 col-lg-6">
                                                        <select name="category" id="" class="form-control">
                                                            <c:forEach items="${listCategory}" var="categories">
                                                                <option value="${categories.getCategoryId()}">${categories.getCategoryName()}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label
                                                        class="col-12 col-sm-3 col-form-label text-left text-sm-right"
                                                        for="customFile">Upload your image:</label>
                                                    <div class="col-12 col-sm-8 col-lg-6">
                                                        <input name="image" type="file" class="form-control" id="customFile" />
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label
                                                        class="col-12 col-sm-3 col-form-label text-left text-sm-right">Content:</label>
                                                    <div class="col-12 col-sm-8 col-lg-6">
                                                        <textarea name="content" class="form-control" id="editor"
                                                                  placeholder="Content"></textarea>
                                                    </div>
                                                </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="offset-sm-4 col-sm-10">
                                                <button class="btn btn-primary btn-space wizard-next"
                                                        data-wizard="#wizard1">Save</button>
                                                <button class="btn btn-secondary btn-space" type="reset">Reset</button>
                                            </div>
                                        </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <nav class="be-right-sidebar">
                <div class="sb-content">
                    <div class="tab-navigation">
                        <ul class="nav nav-tabs nav-justified" role="tablist">
                            <li class="nav-item" role="presentation"><a
                                    class="nav-link active" href="#tab1" aria-controls="tab1"
                                    role="tab" data-toggle="tab">Chat</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link"
                                                                        href="#tab2" aria-controls="tab2" role="tab" data-toggle="tab">Todo</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link"
                                                                        href="#tab3" aria-controls="tab3" role="tab" data-toggle="tab">Settings</a></li>
                        </ul>
                    </div>
                    <div class="tab-panel">
                        <div class="tab-content">
                            <div class="tab-pane tab-chat active" id="tab1" role="tabpanel">
                                <div class="chat-contacts">
                                    <div class="chat-sections">
                                        <div class="be-scroller-chat">
                                            <div class="content">
                                                <h2>Recent</h2>
                                                <div class="contact-list contact-list-recent">
                                                    <div class="user">
                                                        <a href="#"><img src="..\assets\images\avatar1.png"
                                                                         alt="Avatar">
                                                            <div class="user-data">
                                                                <span class="status away"></span><span class="name">Claire
                                                                    Sassu</span><span class="message">Can you share the...</span>
                                                            </div></a>
                                                    </div>
                                                    <div class="user">
                                                        <a href="#"><img src="..\assets\images\avatar2.png"
                                                                         alt="Avatar">
                                                            <div class="user-data">
                                                                <span class="status"></span><span class="name">Maggie
                                                                    jackson</span><span class="message">I confirmed the
                                                                    info.</span>
                                                            </div></a>
                                                    </div>
                                                    <div class="user">
                                                        <a href="#"><img src="..\assets\images\avatar3.png"
                                                                         alt="Avatar">
                                                            <div class="user-data">
                                                                <span class="status offline"></span><span class="name">Joel
                                                                    King </span><span class="message">Ready for the meeti...</span>
                                                            </div></a>
                                                    </div>
                                                </div>
                                                <h2>Contacts</h2>
                                                <div class="contact-list">
                                                    <div class="user">
                                                        <a href="#"><img src="..\assets\images\avatar4.png"
                                                                         alt="Avatar">
                                                            <div class="user-data2">
                                                                <span class="status"></span><span class="name">Mike
                                                                    Bolthort</span>
                                                            </div></a>
                                                    </div>
                                                    <div class="user">
                                                        <a href="#"><img src="..\assets\images\avatar5.png"
                                                                         alt="Avatar">
                                                            <div class="user-data2">
                                                                <span class="status"></span><span class="name">Maggie
                                                                    jackson</span>
                                                            </div></a>
                                                    </div>
                                                    <div class="user">
                                                        <a href="#"><img src="..\assets\images\avatar6.png"
                                                                         alt="Avatar">
                                                            <div class="user-data2">
                                                                <span class="status offline"></span><span class="name">Jhon
                                                                    Voltemar</span>
                                                            </div></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="bottom-input">
                                        <input type="text" placeholder="Search..." name="q"><span
                                            class="mdi mdi-search"></span>
                                    </div>
                                </div>
                                <div class="chat-window">
                                    <div class="title">
                                        <div class="user">
                                            <img src="..\assets\images\avatar2.png" alt="Avatar">
                                            <h2>Maggie jackson</h2>
                                            <span>Active 1h ago</span>
                                        </div>
                                        <span class="icon return mdi mdi-chevron-left"></span>
                                    </div>
                                    <div class="chat-messages">
                                        <div class="be-scroller-messages">
                                            <div class="content">
                                                <ul>
                                                    <li class="friend">
                                                        <div class="msg">Hello</div>
                                                    </li>
                                                    <li class="self">
                                                        <div class="msg">Hi, how are you?</div>
                                                    </li>
                                                    <li class="friend">
                                                        <div class="msg">Good, I'll need support with my pc</div>
                                                    </li>
                                                    <li class="self">
                                                        <div class="msg">Sure, just tell me what is going on
                                                            with your computer?</div>
                                                    </li>
                                                    <li class="friend">
                                                        <div class="msg">I don't know it just turns off
                                                            suddenly</div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="chat-input">
                                        <div class="input-wrapper">
                                            <span class="photo mdi mdi-camera"></span> <input type="text"
                                                                                              placeholder="Message..." name="q" autocomplete="off"><span
                                                                                              class="send-msg mdi mdi-mail-send"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane tab-todo" id="tab2" role="tabpanel">
                                <div class="todo-container">
                                    <div class="todo-wrapper">
                                        <div class="be-scroller-todo">
                                            <div class="todo-content">
                                                <span class="category-title">Today</span>
                                                <ul class="todo-list">
                                                    <li>
                                                        <div
                                                            class="custom-checkbox custom-control custom-control-sm">
                                                            <span class="delete mdi mdi-delete"></span> <input
                                                                class="custom-control-input" type="checkbox" checked=""
                                                                id="tck1"> <label class="custom-control-label"
                                                                for="tck1">Initialize the project</label>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div
                                                            class="custom-checkbox custom-control custom-control-sm">
                                                            <span class="delete mdi mdi-delete"></span> <input
                                                                class="custom-control-input" type="checkbox" id="tck2">
                                                            <label class="custom-control-label" for="tck2">Create
                                                                the main structure </label>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div
                                                            class="custom-checkbox custom-control custom-control-sm">
                                                            <span class="delete mdi mdi-delete"></span> <input
                                                                class="custom-control-input" type="checkbox" id="tck3">
                                                            <label class="custom-control-label" for="tck3">Updates
                                                                changes to GitHub </label>
                                                        </div>
                                                    </li>
                                                </ul>
                                                <span class="category-title">Tomorrow</span>
                                                <ul class="todo-list">
                                                    <li>
                                                        <div
                                                            class="custom-checkbox custom-control custom-control-sm">
                                                            <span class="delete mdi mdi-delete"></span> <input
                                                                class="custom-control-input" type="checkbox" id="tck4">
                                                            <label class="custom-control-label" for="tck4">Initialize
                                                                the project </label>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div
                                                            class="custom-checkbox custom-control custom-control-sm">
                                                            <span class="delete mdi mdi-delete"></span> <input
                                                                class="custom-control-input" type="checkbox" id="tck5">
                                                            <label class="custom-control-label" for="tck5">Create
                                                                the main structure </label>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div
                                                            class="custom-checkbox custom-control custom-control-sm">
                                                            <span class="delete mdi mdi-delete"></span> <input
                                                                class="custom-control-input" type="checkbox" id="tck6">
                                                            <label class="custom-control-label" for="tck6">Updates
                                                                changes to GitHub </label>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div
                                                            class="custom-checkbox custom-control custom-control-sm">
                                                            <span class="delete mdi mdi-delete"></span> <input
                                                                class="custom-control-input" type="checkbox" id="tck7">
                                                            <label class="custom-control-label" for="tck7"
                                                                   title="This task is too long to be displayed in a normal space!">This
                                                                task is too long to be displayed in a normal space! </label>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="bottom-input">
                                        <input type="text" placeholder="Create new task..." name="q"><span
                                            class="mdi mdi-plus"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane tab-settings" id="tab3" role="tabpanel">
                                <div class="settings-wrapper">
                                    <div class="be-scroller-settings">
                                        <span class="category-title">General</span>
                                        <ul class="settings-list">
                                            <li>
                                                <div class="switch-button switch-button-sm">
                                                    <input type="checkbox" checked="" name="st1" id="st1"><span>
                                                        <label for="st1"></label>
                                                    </span>
                                                </div> <span class="name">Available</span>
                                            </li>
                                            <li>
                                                <div class="switch-button switch-button-sm">
                                                    <input type="checkbox" checked="" name="st2" id="st2"><span>
                                                        <label for="st2"></label>
                                                    </span>
                                                </div> <span class="name">Enable notifications</span>
                                            </li>
                                            <li>
                                                <div class="switch-button switch-button-sm">
                                                    <input type="checkbox" checked="" name="st3" id="st3"><span>
                                                        <label for="st3"></label>
                                                    </span>
                                                </div> <span class="name">Login with Facebook</span>
                                            </li>
                                        </ul>
                                        <span class="category-title">Notifications</span>
                                        <ul class="settings-list">
                                            <li>
                                                <div class="switch-button switch-button-sm">
                                                    <input type="checkbox" name="st4" id="st4"><span>
                                                        <label for="st4"></label>
                                                    </span>
                                                </div> <span class="name">Email notifications</span>
                                            </li>
                                            <li>
                                                <div class="switch-button switch-button-sm">
                                                    <input type="checkbox" checked="" name="st5" id="st5"><span>
                                                        <label for="st5"></label>
                                                    </span>
                                                </div> <span class="name">Project updates</span>
                                            </li>
                                            <li>
                                                <div class="switch-button switch-button-sm">
                                                    <input type="checkbox" checked="" name="st6" id="st6"><span>
                                                        <label for="st6"></label>
                                                    </span>
                                                </div> <span class="name">New comments</span>
                                            </li>
                                            <li>
                                                <div class="switch-button switch-button-sm">
                                                    <input type="checkbox" name="st7" id="st7"><span>
                                                        <label for="st7"></label>
                                                    </span>
                                                </div> <span class="name">Chat messages</span>
                                            </li>
                                        </ul>
                                        <span class="category-title">Workflow</span>
                                        <ul class="settings-list">
                                            <li>
                                                <div class="switch-button switch-button-sm">
                                                    <input type="checkbox" name="st8" id="st8"><span>
                                                        <label for="st8"></label>
                                                    </span>
                                                </div> <span class="name">Deploy on commit</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <script src="..\assets\lib\jquery\jquery.min.js" type="text/javascript"></script>
        <script
            src="..\assets\lib\perfect-scrollbar\js\perfect-scrollbar.min.js"
        type="text/javascript"></script>
        <script src="..\assets\lib\bootstrap\dist\js\bootstrap.bundle.min.js"
        type="text/javascript"></script>
        <script src="..\assets\js\app.js" type="text/javascript"></script>
        <script src="..\assets\lib\jquery-ui\jquery-ui.min.js"
        type="text/javascript"></script>
        <script src="..\assets\lib\select2\js\select2.min.js"
        type="text/javascript"></script>
        <script src="..\assets\lib\select2\js\select2.full.min.js"
        type="text/javascript"></script>
        <script src="..\assets\lib\bootstrap-slider\bootstrap-slider.min.js"
        type="text/javascript"></script>
        <script
            src="..\assets\lib\datetimepicker\js\bootstrap-datetimepicker.min.js"
        type="text/javascript"></script>
        <script
            src="..\assets\lib\datatables\datatables.net\js\jquery.dataTables.js"
        type="text/javascript"></script>
        <script
            src="..\assets\lib\datatables\datatables.net-bs4\js\dataTables.bootstrap4.js"
        type="text/javascript"></script>
        <script
            src="..\assets\lib\datatables\datatables.net-buttons\js\dataTables.buttons.min.js"
        type="text/javascript"></script>
        <script
            src="..\assets\lib\datatables\datatables.net-buttons\js\buttons.flash.min.js"
        type="text/javascript"></script>
        <script src="..\assets\lib\datatables\jszip\jszip.min.js"
        type="text/javascript"></script>
        <script src="..\assets\lib\datatables\pdfmake\pdfmake.min.js"
        type="text/javascript"></script>
        <script src="..\assets\lib\datatables\pdfmake\vfs_fonts.js"
        type="text/javascript"></script>
        <script
            src="..\assets\lib\datatables\datatables.net-buttons\js\buttons.colVis.min.js"
        type="text/javascript"></script>
        <script
            src="..\assets\lib\datatables\datatables.net-buttons\js\buttons.print.min.js"
        type="text/javascript"></script>
        <script
            src="..\assets\lib\datatables\datatables.net-buttons\js\buttons.html5.min.js"
        type="text/javascript"></script>
        <script
            src="..\assets\lib\datatables\datatables.net-buttons-bs4\js\buttons.bootstrap4.min.js"
        type="text/javascript"></script>
        <script
            src="..\assets\lib\datatables\datatables.net-responsive\js\dataTables.responsive.min.js"
        type="text/javascript"></script>
        <script
            src="..\assets\lib\datatables\datatables.net-responsive-bs4\js\responsive.bootstrap4.min.js"
        type="text/javascript"></script>
        <script type="text/javascript">
    $(document).ready(function () {
        //-initialize the javascript
        App.init();
        App.tableFilters();
    });
        </script>
    </body>
</html>
