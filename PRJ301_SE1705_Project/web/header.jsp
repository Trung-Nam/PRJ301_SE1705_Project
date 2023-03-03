<%-- 
    Document   : header
    Created on : Mar 3, 2023, 9:56:17 PM
    Author     : ASUS G731G
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Book Store</title>
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
                        <div class="col-md-2">
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
                        <div class="col-md-4">
                            <div class="right-element">
                                <c:if test="${sessionScope.user == null}">
                                    <a href="Login" class="user-account for-buy"><i
                                            class="icon icon-user"></i>
                                        <span>Account</span>
                                    </a> 
                                </c:if>      
                                <c:if test="${sessionScope.user != null}">
                                    <a href="user-profile" class="user-account for-buy">
                                        <i class="icon icon-user"></i>
                                        <span>${user.fullName}</span>
                                    </a> 
                                </c:if>
                                <a href="book-case" class="cart for-buy"> <i
                                        class="fa-solid fa-book-open-reader"></i> <span>Favorites</span></a>
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

                        <div class="col-md-2"
                             style="margin: auto; display: flex; justify-content: flex-end;">
                            <div class="logo-black">
                                <a href="Home" style="text-decoration: none;">
                                    <div class="company-brand">
                                        <img src="./assets/images/logo-black.png" alt="logo"
                                             class="footer-logo">
                                        <p></p>
                                    </div>
                                </a>
                            </div>

                        </div>

                        <div class="col-md-10"
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
        <script src="./assets/js/jquery-1.11.0.min.js"></script>
        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/script.js"></script>

    </body>

</html>
