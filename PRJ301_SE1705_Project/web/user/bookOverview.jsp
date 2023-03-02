<%-- 
    Document   : bookOverview
    Created on : Mar 2, 2023, 8:38:17 PM
    Author     : ASUS G731G
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
                                <c:if test="${sessionScope.user == null}">
                                    <a href="Login" class="user-account for-buy"><i
                                            class="icon icon-user"></i>
                                        <span>Account</span>
                                    </a> 
                                </c:if>      
                                <c:if test="${sessionScope.user != null}">
                                    <a href="#" class="user-account for-buy">
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
                                        <li class="menu-item active"><a href="home"
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
        <section class="bg-sand">
            <div class="container">
                <div class="row">

                    <div class="col-md-4" style="display: flex;
                         justify-content: space-between">
                        <a href="#" class="product-image"><img
                                src="${fn:substringAfter(book.image,'.')}" style="width: 280px;height: 425px;"></a>
                    </div>

                    <div class="col-md-8 pl-5">
                        <div class="product-detail">
                            <h1>${book.bookTitle}</h1>
                            <p>${book.category.categoryName}</p>
                            <!--                            <span class="price colored">$45.00</span>-->
                            <p>${fn:substring(book.brief,0,150)}</p>
<!--                            <p>${fn:substring(book.brief,150,300)} ...</p>-->

                            <button type="submit" name="add-to-cart" value="27545"
                                    class="button"><a href="add-book-case?id=${book.bookId}" style="color: black;font-weight: bold;">Add to your favourite</a></button>

                        </div>
                    </div>

                </div>
            </div>
        </section>


        <section class="padding-large">
            <div class="container">
                <div class="row">

                    <div class="col-md-12">
                        <h2 style="color: black;">Book Preview...</h2>
                        <div class="post-content">
                            <p>${fn:substring(book.content,0,600)}</p>


                        </div><!--post-content-->
                        <button type="button" name="add-to-cart" value="27545"
                                class="button"><a href="read-book?id=${book.bookId}" style="color: black;font-weight: bold;">Read more !</a></button>
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
                                <p></p>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-2">

                        <div class="footer-menu">
                            <h5>About Us</h5>
                            <ul class="menu-list">
                                <li class="menu-item"><a href="#">Vision</a></li>
                                <li class="menu-item"><a href="#">Articles </a></li>
                                <li class="menu-item"><a href="#">Careers</a></li>
                                <li class="menu-item"><a href="#">Service terms</a></li>
                                <li class="menu-item"><a href="#">Donate</a></li>
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
                            </ul>
                        </div>

                    </div>
                    <div class="col-md-2">

                        <div class="footer-menu">
                            <h5>My account</h5>
                            <ul class="menu-list">
                                <li class="menu-item"><a href="#">Sign In</a></li>
                                <li class="menu-item"><a href="#">View Cart</a></li>
                                <li class="menu-item"><a href="#">My Favorites</a></li>
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
                                    ACÂ© 2022 All rights reserved.<a href="#" target="_blank">TTDNA</a>
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
