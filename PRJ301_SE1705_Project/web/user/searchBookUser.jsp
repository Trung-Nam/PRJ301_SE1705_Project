<%-- 
    Document   : searchBookUser
    Created on : Mar 3, 2023, 9:03:36 PM
    Author     : ASUS G731G
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" href="assets\img\logo-fav.png">
        <title>TN Book</title>
        <link rel="stylesheet" type="text/css"
              href=".\assets\lib\perfect-scrollbar\css\perfect-scrollbar.css">
        <link rel="stylesheet" type="text/css"
              href=".\assets\lib\material-design-icons\css\material-design-iconic-font.min.css">
        <link rel="stylesheet" type="text/css"
              href=".\assets\lib\jquery.vectormap\jquery-jvectormap-1.2.2.css">
        <link rel="stylesheet" type="text/css"
              href=".\assets\lib\jqvmap\jqvmap.min.css">
        <link rel="stylesheet" type="text/css"
              href=".\assets\lib\datetimepicker\css\bootstrap-datetimepicker.min.css">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
              integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href=".\assets\css\body.css" type="text/css">
        <link rel="stylesheet" href=".\assets\css\app.css" type="text/css">
    </head>

    <body>
        <%@include file="../header.jsp"%>
        <div class="ads-grid py-5">
            <div class="container py-md-5 py-4">
                <!-- tittle heading -->
                <!-- //tittle heading -->
                <div class="row">
                    <!-- product right -->
                    <div class="col-lg-3 mt-lg-0 mt-4 p-lg-0 order-lg-first order-last">
                        <div class="side-bar p-sm-4 p-3" style="">
                            <form action="search-filter" method="get">
                                <!-- discounts -->
                                <div class="left-side py-2">
                                    <a class="list-group-item active" style="color: #fff;">Author</a>
                                    <ul class="list-group" style="border: 1px solid #4285f4;">
                                        <c:forEach items="${requestScope.authorData }" var="a">
                                            <li style="padding-left: 5px;">${a.authorName } 
                                                <input type="checkbox"  class="checked" name="author" value="${a.authorId}" onclick="this.form.submit()"
                                                       <c:forEach items="${requestScope.author}" var="a1">
                                                           <c:if test="${a.authorId == a1.authorId}"> checked</c:if>
                                                       </c:forEach> /></li>
                                            </c:forEach>
                                    </ul>
                                </div>
                                <!-- //discounts -->
                                <!-- electronics -->
                                <div class="left-side py-2">
                                    <a class="list-group-item active" style="color: #fff;">Publisher</a>
                                    <ul class="list-group" style="border: 1px solid #4285f4;">
                                        <c:forEach items="${requestScope.publisherData }" var="p">
                                            <li style="padding-left: 5px;">${p.publisherName } 
                                                <input type="checkbox" class="checked" name="publisher" value="${p.publisherId}" onclick="this.form.submit()"
                                                       <c:forEach items="${requestScope.publisher}" var="p1">
                                                           <c:if test="${p.publisherId == p1.publisherId}"> checked</c:if>
                                                       </c:forEach> /></li>
                                            </c:forEach>
                                    </ul>
                                </div>
                                <!-- //electronics -->
                                <!-- delivery -->
                                <div class="left-side py-2">
                                    <a class="list-group-item active" style="color: #fff;">Category</a>
                                    <ul  class="list-group" style="border: 1px solid #4285f4;">
                                        <c:forEach items="${requestScope.categoryData }" var="c">
                                            <li style="padding-left: 5px;">${c.categoryName } 
                                                <input type="checkbox" class="checked" name="category" value="${c.categoryId}" onclick="this.form.submit()"
                                                       <c:forEach items="${requestScope.category}" var="c1">
                                                           <c:if test="${c.categoryId == c1.categoryId}"> checked</c:if>
                                                       </c:forEach> /></li>
                                            </c:forEach>
                                    </ul>
                                </div>
                                <!-- //delivery -->
                            </form>
                        </div>
                        <!-- //product right -->
                    </div>
                    <!-- product left -->
                    <div class="agileinfo-ads-display col-lg-9 order-lg-last order-first">
                        <h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4">
                            <c:if test="${errorMessage != null }">
                                <span class="font-weight-normal">${errorMessage}</span>
                            </c:if>
                        </h3>
                        <div class="wrapper">
                            <!-- first section -->
                            <div class="product-sec1 px-lg-4">
                                <div class="row">

                                    <c:forEach items="${requestScope.pageBook }" var="d">
                                        <div class="col-md-4 product-men" >
                                            <div class="men-pro-item simpleCart_shelfItem" style="border: 1px solid #ccc; height: 400px; margin-bottom: 24px;">
                                                <div class="men-thumb-item text-center">

                                                    <img src="${fn:substringAfter(d.image,'../')}"
                                                         alt="" class="img-fluid img-responsive" style="width:185px; height: 240px;">
                                                    <div class="men-cart-pro">
                                                        <div class="inner-men-cart-pro">
                                                            <a href="book-detail?id=${d.bookId }" class="link-product-add-cart">Quick
                                                                View</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item-info-product text-center mt-2">
                                                    <div class="info-product-price">											
                                                        <span class="item_price">${d.bookTitle  }</span>
                                                    </div>
                                                    <div class="info-product-price">
                                                        <p class="item_price">${d.author.authorName }</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>

                                </div>
                                <div class="clearfix" style="margin-left: 40%;">
                                    <ul class="pagination">
                                        <c:if test="${search != null}">
                                            <li class="page-item"><a href="search-filter?search=${search}&page=${page-1}"
                                                                     style="color: #2196F3;" class="page-link" ${page == 1 ? 'hidden' : ''} >Previous</a></li>
                                            <li class="page-item"><a class="page-link">${page}</a></li>
                                            <li class="page-item"><a href="search-filter?search=${search}&page=${page+1}" 
                                                                     class="page-link" style="color: #2196F3;" ${page == num ? 'hidden' : ''}>Next</a></li>
                                            </c:if>
                                            <c:if test="${search == null}">
                                            <li class="page-item"><a href="search-filter?page=${page-1}" 
                                                                     style="color: #2196F3;" class="page-link" ${page == 1 ? 'hidden' : ''}>Previous</a></li>
                                            <li class="page-item"><a href="" class="page-link">${page}</a>
                                            </li>
                                            <li class="page-item"><a href="search-filter?page=${page+1}" class="page-link"
                                                                     style="color: #2196F3;" ${page == num ? 'hidden' : ''}>Next</a></li>
                                            </c:if>
                                    </ul>
                                </div>
                            </div>
                            <!-- //first section -->

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr>
        <%@include file="../footer.jsp"%>
    </body>

</html>
