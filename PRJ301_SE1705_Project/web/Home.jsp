<%-- 
    Document   : Home
    Created on : Feb 16, 2023, 11:52:39 PM
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
                                <a href="#" class="user-account for-buy"><i
                                        class="icon icon-user"></i><span>Account</span></a> <a
                                    href="book-case" class="cart for-buy"> <i
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

        <section id="billboard">

            <div class="container">
                <div class="row">
                    <div class="col-md-12">

                        <button class="prev slick-arrow">
                            <i class="icon icon-arrow-left"></i>
                        </button>

                        <div class="main-slider pattern-overlay">
                            <c:forEach items="${newBooks}" var="n">
                                <div class="slider-item">
                                    <div class="banner-content">
                                        <h2 class="banner-title">${n.bookTitle }</h2>
                                        <p>${fn:substring(n.brief,0,300)}...</p>
                                        <div class="btn-wrap">
                                            <a href="book-detail?id=${n.bookId}"
                                               class="btn btn-outline-accent btn-accent-arrow">Read More<i
                                                    class="icon icon-ns-arrow-right"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <!--banner-content-->
                                    <img src="${fn:substringAfter(n.image,'.')}" alt="banner"
                                         class="banner-image" style="width: 410px; height: 600px">
                                </div>
                            </c:forEach>

                            <!--slider-item-->

                        </div>
                        <!--slider-->

                        <button class="next slick-arrow">
                            <i class="icon icon-arrow-right"></i>
                        </button>

                    </div>
                </div>
            </div>

        </section>

        <section id="client-holder" data-aos="fade-up">
            <div class="container">
                <div class="row">
                    <div class="inner-content">
                        <div class="logo-wrap">
                            <div class="grid">
                                <a href="#"><img src="./assets/images/client-image1.png"
                                                 alt="client"></a> <a href="#"><img
                                        src="./assets/images/client-image2.png" alt="client"></a> <a
                                    href="#"><img src="./assets/images/client-image3.png"
                                              alt="client"></a> <a href="#"><img
                                        src="./assets/images/client-image4.png" alt="client"></a> <a
                                    href="#"><img src="./assets/images/client-image5.png"
                                              alt="client"></a>
                            </div>
                        </div>
                        <!--image-holder-->
                    </div>
                </div>
            </div>
        </section>

        <section id="featured-books">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">

                        <div class="section-header align-center">
                            <div class="title">
                                <span>Some quality items</span>
                            </div>
                            <h2 class="section-title">Featured Books</h2>
                        </div>

                        <div class="product-list" data-aos="fade-up">
                            <div class="row ">
                                <c:forEach items="${list }" var="l">
                                    <div class="col-md-3 ">
                                        <figure class="product-style"
                                                style="width: 360px; height: 565px;">
                                            <img src="${fn:substringAfter(l.image,'.')}" alt="Books"
                                                 class="product-item" style="width: 300px; height: 425px;">
                                            <button type="button" class="add-to-cart"
                                                    data-product-tile="add-to-cart">
                                                <a href="add-book-case?id=${l.bookId}">Add to Favorite</a>
                                            </button>
                                            <figcaption>
                                                <h3>${l.bookTitle }</h3>
                                                <p>${l.author.authorName }</p>
                                            </figcaption>
                                        </figure>
                                    </div>
                                </c:forEach>
                            </div>
                            <!--ft-books-slider-->
                        </div>
                        <!--grid-->


                    </div>
                    <!--inner-content-->
                </div>

                <div class="row">
                    <div class="col-md-12">

                        <div class="btn-wrap align-right">
                            <a href="#" class="btn-accent-arrow">View all products <i
                                    class="icon icon-ns-arrow-right"></i></a>
                        </div>

                    </div>
                </div>
            </div>
        </section>

        <section id="best-selling" class="leaf-pattern-overlay">
            <div class="corner-pattern-overlay"></div>
            <div class="container">
                <div class="row">

                    <div class="col-md-8 col-md-offset-2">
                        <c:forEach items="${popularBook}" var="p">
                            <div class="row">

                                <div class="col-md-6">
                                    <figure class="products-thumb">
                                        <img src="${fn:substringAfter(p.image,'.')}" alt="book"
                                             class="single-image">
                                    </figure>
                                </div>

                                <div class="col-md-6">
                                    <div class="product-entry">
                                        <h2 class="section-title divider">Best Selling Book</h2>

                                        <div class="products-content">
                                            <div class="author-name">By ${p.author.authorName}</div>
                                            <h3 class="item-title">${p.bookTitle}</h3>
                                            <p>${fn:substring(p.brief,0,300)}...</p>
                                            <div class="btn-wrap">
                                                <a href="book-detail?id=${p.bookId}" class="btn-accent-arrow">read
                                                    it now <i class="icon icon-ns-arrow-right"></i>
                                                </a>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </c:forEach>
                        <!-- / row -->

                    </div>

                </div>
            </div>
        </section>

        <section id="quotation" class="align-center">
            <div class="inner-content">
                <h2 class="section-title divider">Quote of the day</h2>
                <blockquote data-aos="fade-up">
                    <q>“The more that you read, the more things you will know. The
                        more that you learn, the more places you’ll go.”</q>
                    <div class="author-name">Dr. Seuss</div>
                </blockquote>
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
