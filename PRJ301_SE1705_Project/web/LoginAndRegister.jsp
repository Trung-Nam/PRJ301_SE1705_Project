<%-- 
    Document   : LoginAndRegister
    Created on : Feb 17, 2023, 12:05:37 AM
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
        <title>Form login and register</title>
        <link rel="stylesheet" href="assets/css/formLogin.css">
    </head>
    <body>
        <h1 style="margin-bottom: 3%"> Login and Register </h1>
        <div class="container" id="container" style="width: 920px; min-height: 700px;">
            <c:if test="${message != null }">
                <div class="p-3 text-center bg-info">${message }</div>
            </c:if>
            <div class="form-container sign-up-container">
                <form class="sign-up" onsubmit="return formSubmit()" action="Register" method="post" style="margin-top: 0%;">
                    <br>
                    <h1 style="margin-bottom: 10px">Create Account</h1>
                    <input class="box" type="text"  name="fullname" placeholder="Full Name" required/> 	
                    <input class="box" type="text" id="username" name="username" placeholder="User Name" />	
                    <div id="validUsername"></div>
                    <input class="box" type="password" id="password" name="password" placeholder="Password" />
                    <div id="validPassword"></div>
                    <input class="box" type="password" id="rePassword" name="Repassword" placeholder="Repassword" />
                    <div id="validRePassword"></div>
                    <input class="box" type="text" id="email" name="email" placeholder="Email" />
                    <div id="validEmail"></div>
                    <select name="question" class="box">
                        <c:forEach items="${questions}" var="q">
                            <option value="${q.question_id}">${q.question}</option>
                        </c:forEach>
                    </select>
                    <input class="box" type="text"  name="answer" placeholder="Your Answer" required/> 
                    <button type="submit">Sign Up</button>
                </form>
            </div>
            <div class="form-container sign-in-container">
                <c:if test="${message != null }">
                    <div class="p-3 text-center bg-info">${message }</div>
                </c:if>

                <form class="sign-in" action="Login" method="post">
                    <h1>Sign in</h1>
                    <span>or use your account</span>
                    <input class="box" type="text" name="username" placeholder="Username" />
                    <input class="box" type="password" name="password" placeholder="Password" />
                    <a href="forgot-password">Forgot your password?</a>
                    <button type="submit">Sign In</button>
                </form>
            </div>
            <div class="overlay-container">
                <div class="overlay">
                    <div class="overlay-panel overlay-left">
                        <h1>Welcome Back!</h1>
                        <h6>To keep connected with us please login with your personal info</h6>
                        <button class="ghost" id="signIn">Sign In</button>
                    </div>
                    <div class="overlay-panel overlay-right">
                        <h1>Hello, Friend!</h1>
                        <h6>Enter your personal details and start journey with us</h6>
                        <button class="ghost" id="signUp">Sign Up</button>
                    </div>
                </div>
            </div>
        </div>
        <script src="assets/js/LoginAndRegister.js"></script>
        <script src="assets/js/ValidateForm.js"></script>
    </body>
</html>