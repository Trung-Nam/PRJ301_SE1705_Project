<%-- 
    Document   : bookDetails
    Created on : Feb 28, 2023, 10:55:45 PM
    Author     : ASUS G731G
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>TN Book</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="format-detection" content="telephone=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="author" content="">
        <meta name="keywords" content="">
        <meta name="description" content="">

        <link rel="stylesheet" type="text/css" href="./assets/css/normalize.css">
        <link rel="stylesheet" type="text/css"
              href="./assets/icomoon/icomoon.css">
        <link rel="stylesheet" type="text/css" href="./assets/css/vendor.css">
        <link rel="stylesheet" type="text/css" href="./assets/css/style.css">
        <link rel="stylesheet" type="text/css" href="./css/textRainbow.css">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
              integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!-- script
                        ================================================== -->
        <script src="./js/modernizr.js"></script>

    </head>

    <body>

        <div id="header-wrap">

            <div class="top-content">
                <div class="container text-center">
                    <div class="row justify-content-center">
                        <div class="col-md-3">
                            <div class="social-links">
                                <ul>
                                    <li><a href="#"><i class="icon icon-facebook"></i></a></li>
                                    <li><a href="#"><i class="icon icon-twitter"></i></a></li>
                                    <li><a href="#"><i class="icon icon-youtube-play"></i></a>
                                    </li>
                                    <li><a href="#"><i class="icon icon-behance-square"></i></a>
                                    </li>
                                </ul>
                            </div>
                            <!--social-links-->
                        </div>

                        <!--top search-->
                        <div class="col-md-6">
                            <div class="search-bar">
                                <form action="search-filter" role="search" method="get"
                                      class="search-box text-center">

                                    <input class="search-field text search-input "
                                           placeholder="Search" type="search" name="search"
                                           value="${search}" style="border: 1px solid #ccc; width: 60%;">
                                    <button type="submit" style="height: 38px; border-radius: 3px;">
                                        <i class="icon icon-search"></i>
                                    </button>

                                </form>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="right-element">
                                <a href="#" class="user-account for-buy"><i
                                        class="icon icon-user"></i>
                                    <c:if test="${sessionScope.user == null}">
                                        <span>Account</span>
                                    </c:if>
                                    <span>${user.fullName}</span>
                                </a> 
                                <a href="#" class="cart for-buy"> 
                                    <i class="fa-solid fa-book-open-reader"></i> <span>Favorites</span></a>


                            </div>
                            <!--top-right-->
                        </div>
                    </div>
                </div>
            </div>
            <!--top-content-->

            <header id="header">
                <div class="container">
                    <div class="row" style="display: flex;">

                        <div class="col-md-3"
                             style="margin: auto; display: flex; justify-content: flex-end;">
                            <div class="logo-black">
                                <a href="home" style="text-decoration: none;">
                                    <div class="company-brand">
                                        <img src="./assets/images/logo-black.png" alt="logo"
                                             class="footer-logo">
                                        <p></p>
                                    </div>
                                </a>
                            </div>

                        </div>

                        <div class="col-md-9"
                             style="display: flex; justify-content: space-around; margin: auto;">
                            <nav id="navbar">
                                <div class="main-menu stellarnav">
                                    <ul class="menu-list">
                                        <li class="menu-item active"><a href="Home"
                                                                        data-effect="Home">Home</a></li>
                                        <li class="menu-item"><a href="#about" class="nav-link"
                                                                 data-effect="About">About</a></li>
                                        <li class="menu-item has-sub"><a href="#pages"
                                                                         class="nav-link" data-effect="Pages">categories</a>

                                            <ul>
                                                <li class="active"><a href="search-filter">All Genre</a></li>
                                                <li><a href="search-filter?category=1">Business</a></li>
                                                <li><a href="search-filter?category=2">Technology</a></li>
                                                <li><a href="search-filter?category=3">Romantic</a></li>
                                                <li><a href="search-filter?category=4">Adventure</a></li>
                                                <li><a href="search-filter?category=5">Fictional</a></li>
                                            </ul></li>
                                        <li class="menu-item"><a href="#latest-blog"
                                                                 class="nav-link" data-effect="Articles">Articles</a></li>
                                        <li class="menu-item"><a href="#contact" class="nav-link"
                                                                 data-effect="Contact">Contact</a></li>
                                    </ul>

                                    <div class="hamburger">
                                        <span class="bar"></span> <span class="bar"></span> <span
                                            class="bar"></span>
                                    </div>

                                </div>
                            </nav>

                        </div>

                    </div>
                </div>
            </header>

        </div>
        <!--header-wrap-->
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-title" style="margin: 0;">${book.bookTitle}</h1>
                        <div class="breadcrumbs">
                            <span class="item"><a href="Home">Home /</a></span> <span
                                class="item">Read Book</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="padding-large">
            <div class="container">
                <div class="row">

                    <div class="col-md-12">

                        <div class="post-content">
                            <p>${book.content}</p>

                        </div>
                        <!--post-content-->

                    </div>

                </div>

                <div class="row">
                    <div class="col-md-12">

                        <section class="comments-wrap mb-4">
                            <h3>Comments</h3>
                            <div class="comment-list mt-4">

                                <article class="flex-container d-flex mb-3">
                                    <img src="./assets/images/default.png" alt="default"
                                         class="commentorImg">
                                    <div class="author-post">
                                        <div class="comment-meta d-flex">
                                            <h4>Michael Watson</h4>
                                            <span class="meta-date">Dec 2,2020</span> <small
                                                class="comments-reply"><a href="#"><i
                                                        class="icon icon-mail-reply"></i>Reply</a></small>
                                        </div>
                                        <!--meta-tags-->

                                        <p>Tristique tempis condimentum diam done ullancomroer sit
                                            element henddg sit he consequert.Tristique tempis condimentum
                                            diam done ullancomroer sit element henddg sit he consequert.</p>
                                    </div>

                                </article>
                                <!--flex-container-->

                                <div class="child-comments">
                                    <article class="flex-container d-flex">
                                        <img src="./assets/images/default.png" alt="sara"
                                             class="commentorImg">
                                        <div class="author-post">
                                            <div class="comment-meta d-flex">
                                                <h4>Chris Gyale</h4>
                                                <span class="meta-date">Dec 3,2020</span> <small
                                                    class="comments-reply"><a href="#"><i
                                                            class="icon icon-mail-reply"></i>Reply</a></small>
                                            </div>
                                            <!--meta-tags-->

                                            <p>Lorem diam done ullancomroer sit element henddg sit he
                                                consequert.Tristique tempis condimentum diam done
                                                ullancomroer sit element henddg sit he consequert.</p>
                                        </div>

                                    </article>
                                    <!--flex-container-->
                                </div>
                                <!--child-comments-->

                            </div>
                            <!--comment-list-->

                        </section>

                        <section class="comment-respond  mb-5">
                            <h3>Leave a Comment</h3>
                            <form method="post" class="form-group mt-3">

                                <div class="row">
                                    <div class="col-md-6">
                                        <input class="u-full-width" type="text" name="author"
                                               id="author" class="form-control mb-4 mr-4"
                                               placeholder="Your full name">
                                    </div>
                                    <div class="col-md-6">
                                        <input class="u-full-width" type="email" name="email"
                                               id="email" class="form-control mb-4"
                                               placeholder="E-mail Address">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <textarea class="u-full-width" id="comment"
                                                  class="form-control mb-4" name="comment"
                                                  placeholder="Write your comment here" rows="20"></textarea>
                                    </div>
                                    <div class="col-md-12">
                                        <label class="example-send-yourself-copy"> <input
                                                type="checkbox"> <span class="label-body">Save
                                                my name, email, and website in this browser for the next time
                                                I comment.</span>
                                        </label>
                                    </div>
                                    <div class="col-md-12">
                                        <input class="btn btn-rounded btn-large btn-full" type="submit"
                                               value="Submit">
                                    </div>
                                </div>

                            </form>
                        </section>

                    </div>
                </div>

            </div>
        </section>


        <footer id="footer">
            <div class="container">
                <div class="row">

                    <div class="col-md-4">

                        <div class="footer-item">
                            <div class="company-brand">
                                <img src="./assets/images/logo-black.png" alt="logo"
                                     class="footer-logo">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                    Sagittis sed ptibus liberolectus nonet psryroin. Amet sed lorem
                                    posuere sit iaculis amet, ac urna. Adipiscing fames semper erat
                                    ac in suspendisse iaculis.</p>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-2">

                        <div class="footer-menu">
                            <h5>About Us</h5>
                            <ul class="menu-list">
                                <li class="menu-item"><a href="#">vision</a></li>
                                <li class="menu-item"><a href="#">articles </a></li>
                                <li class="menu-item"><a href="#">careers</a></li>
                                <li class="menu-item"><a href="#">service terms</a></li>
                                <li class="menu-item"><a href="#">donate</a></li>
                            </ul>
                        </div>

                    </div>
                    <div class="col-md-2">

                        <div class="footer-menu">
                            <h5>Discover</h5>
                            <ul class="menu-list">
                                <li class="menu-item"><a href="#">Home</a></li>
                                <li class="menu-item"><a href="#">Books</a></li>
                                <li class="menu-item"><a href="#">Authors</a></li>
                                <li class="menu-item"><a href="#">Subjects</a></li>
                                <li class="menu-item"><a href="#">Advanced Search</a></li>
                            </ul>
                        </div>

                    </div>
                    <div class="col-md-2">

                        <div class="footer-menu">
                            <h5>My account</h5>
                            <ul class="menu-list">
                                <li class="menu-item"><a href="#">Sign In</a></li>
                                <li class="menu-item"><a href="#">View Cart</a></li>
                                <li class="menu-item"><a href="#">My Wishtlist</a></li>
                                <li class="menu-item"><a href="#">Track My Order</a></li>
                            </ul>
                        </div>

                    </div>
                    <div class="col-md-2">

                        <div class="footer-menu">
                            <h5>Help</h5>
                            <ul class="menu-list">
                                <li class="menu-item"><a href="#">Help center</a></li>
                                <li class="menu-item"><a href="#">Report a problem</a></li>
                                <li class="menu-item"><a href="#">Suggesting edits</a></li>
                                <li class="menu-item"><a href="#">Contact us</a></li>
                            </ul>
                        </div>

                    </div>

                </div>
                <!-- / row -->

            </div>
        </footer>

        <div id="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">

                        <div class="copyright">
                            <div class="row">

                                <div class="col-md-6">
                                    <p>
                                        © 2022 All rights reserved. Free HTML Template by <a
                                            href="https://www.templatesjungle.com/" target="_blank">TemplatesJungle</a>
                                    </p>
                                </div>

                                <div class="col-md-6">
                                    <div class="social-links align-right">
                                        <ul>
                                            <li><a href="#"><i class="icon icon-facebook"></i></a></li>
                                            <li><a href="#"><i class="icon icon-twitter"></i></a></li>
                                            <li><a href="#"><i class="icon icon-youtube-play"></i></a>
                                            </li>
                                            <li><a href="#"><i class="icon icon-behance-square"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!--grid-->

                    </div>
                    <!--footer-bottom-content-->
                </div>
            </div>
        </div>

        <script src="./assets/js/jquery-1.11.0.min.js"></script>
        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/script.js"></script>
    </body>
</html>
