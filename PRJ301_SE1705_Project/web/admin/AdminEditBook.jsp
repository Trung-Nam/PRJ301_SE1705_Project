<%-- 
    Document   : AdminEditBook
    Created on : Mar 5, 2023, 10:11:21 PM
    Author     : ASUS G731G
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Edit Book</title>

        <!-- Bootstrap CSS  -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" 
              integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

        <!-- jquery -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" 
        integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js" 
        integrity="sha512-rstIgDs0xPgmG6RX1Aba4KV5cWJbAMcvRCVmglpam9SoHZiUCyQVDdH2LPlxoHtrv17XWblE/V/PP+Tr04hbtA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

        <!-- Fontawesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
              integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
        <div class="container col-sm-9 mt-3">
            <div class="card">

                <div class="card-header bg-primary text-white">						
                    <h4 class="card-title">Edit Book</h4>
                </div>
                <div class="card-body">	
                    <form action="edit-book" method="post" id="validateUpdate" onsubmit="return formSubmit()">		
                        <input type="text" value="${book.bookId}" name="id" hidden="">		
                        <div class="form-group">
                            <label>Title</label>
                            <input name="title" type="text" class="form-control" value="${book.bookTitle}">
                        </div>

                        <div class="form-group">
                            <label>Author</label>
                            <select name="author" class="form-control" aria-label="Default select example">
                                <c:forEach items="${author}" var="o">
                                    <option value="${o.authorId}" ${book.author.authorId == o.authorId ? 'selected' : ''}>${o.authorName}</option>
                                </c:forEach>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Brief</label>
                            <textarea name="brief" class="form-control"  >${book.brief}</textarea>
                        </div>
                        <div class="form-group">
                            <label>Publisher</label>
                            <select name="publisher" class="form-control" aria-label="Default select example">
                                <c:forEach items="${publisher}" var="c">
                                    <option value="${c.publisherId}" ${book.publisher.publisherId == c.publisherId ? 'selected' : ''}>${c.publisherName}</option>
                                </c:forEach>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Image</label>
                            <input accept=".jpg, .jpeg, .png, .svg" type="file" name = "image" class="form-control" value="${book.image}" required>
                        </div>

                        <div class="form-group" hidden>
                            <label hidden>Read Count</label>
                            <textarea name="readCount" class="form-control"  hidden></textarea>
                        </div>
                        <div class="form-group">
                            <label>Category</label>
                            <select name="category" class="form-control" aria-label="Default select example">
                                <c:forEach items="${category}" var="a">
                                    <option value="${a.categoryId}" ${book.category.categoryId == a.categoryId ? 'selected' : ''}>${a.categoryName}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <a href="list-book"><input type="button" class="btn btn-danger" data-dismiss="modal" value="Cancel"></a>
                            <input type="submit" class="btn btn-success" value="Save">
                        </div>
                    </form>
                </div>


            </div>
        </div>

        <!-- CSS -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    </body>
</html>
