<%-- 
    Document   : UpdateNewPassword
    Created on : Mar 20, 2023, 11:31:12 PM
    Author     : ASUS G731G
--%>

<%-- 
    Document   : ForgotPassword
    Created on : Mar 20, 2023, 9:32:20 PM
    Author     : ASUS G731G
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
        <script
            src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
        <meta charset="UTF-8">
        <title>Forgot Password</title>
        <link rel="stylesheet" href="assets/css/formLogin.css">
    </head>
    <body style="margin: 0">
        <div class="container" id="container" style="width: 500px;min-height: 500px; display: flex;justify-content: center;align-items: center; text-align: center">
            <c:if test="${message != null }">
                <div class="p-3 text-center bg-info" style="position: absolute;
                     bottom: 0px">${message }</div>
            </c:if>
            <div class="form-container forgot-password-container">
                <form class="forgot-password" onsubmit="return formSubmit()" action="update-new-password" method="post" style="margin-top: 0%;">
                    <br>
                    <h1 style="margin-bottom: 30px;top: 6%;
                        position: absolute;
                        left: 12%">Update Password</h1>	
                        <input type="hidden" value="${userid}" name="userid" id="userid">
                        <input class="box" type="password" id="password" name="password" placeholder="Password" style="width: 100%" required minlength="8"/>
                    <div id="validPassword"></div>
                    <input class="box" type="password" id="rePassword" name="Repassword" placeholder="Repassword" style="width: 100%" required minlength="8"/>
                    <div id="validRePassword"></div>
                    <button type="submit" style="margin-top: 5%">Update</button>
                </form>
            </div>
        </div>
        <script src="assets/js/LoginAndRegister.js"></script>
        <script src="assets/js/ValidateForm.js"></script>
    </body>
</html>
