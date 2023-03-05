<%-- 
    Document   : LoginAdmin
    Created on : Mar 5, 2023, 9:00:44 PM
    Author     : ASUS G731G
--%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" href="..\assets\images\logo-black.png">
        <title>Login Admin</title>
        <link rel="stylesheet" type="text/css" href="..\assets\lib\perfect-scrollbar\css\perfect-scrollbar.css">
        <link rel="stylesheet" type="text/css" href="..\assets\lib\material-design-icons\css\material-design-iconic-font.min.css">
        <link rel="stylesheet" type="text/css" href="..\assets\lib\jquery.vectormap\jquery-jvectormap-1.2.2.css">
        <link rel="stylesheet" type="text/css" href="..\assets\lib\jqvmap\jqvmap.min.css">
        <link rel="stylesheet" type="text/css" href="..\assets\lib\datetimepicker\css\bootstrap-datetimepicker.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="..\assets\css\app.css" type="text/css">
    </head>
    <body class="be-splash-screen">
        <div class="be-wrapper be-login">
            <div class="be-content">
                <div class="main-content container-fluid">
                    <div class="splash-container">
                        <div class="card card-border-color card-border-color-primary">
                            <div style="color: red; font-size: 20px; text-align: center;">${mess}</div>
                            <div style="color: red; font-size: 20px; text-align: center;">${message}</div>  
                            <div class="card-header"><img class="logo-img" src="..\assets\images\logo-black.png" alt="logo" width="300" height="80"><span class="splash-description" style="font-size: 20px;">Please enter your user information.</span></div>
                            <div class="card-body">

                                <form action="login-admin" method="post">
                                    <div class="form-group">
                                        <input class="form-control" id="username" name="username" type="text" placeholder="Username" autocomplete="off">
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" id="password" name="password" type="password" placeholder="Password">
                                    </div>
                                    <div class="form-group row login-tools">
                                        <div class="col-6 login-remember">
                                            <div class="custom-control custom-checkbox">
                                                <input class="custom-control-input" type="checkbox" id="checkbox1">
                                                <label class="custom-control-label" for="checkbox1">Remember Me</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group login-submit" style="margin-left:35%;"> 
                                        <input type="submit" value="Sign In" style="padding: 2%; font-size: 16px;" /></div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="..\assets\lib\jquery\jquery.min.js" type="text/javascript"></script>
        <script src="..\assets\lib\perfect-scrollbar\js\perfect-scrollbar.min.js" type="text/javascript"></script>
        <script src="..\assets\lib\bootstrap\dist\js\bootstrap.bundle.min.js" type="text/javascript"></script>
        <script src="..\assets\js\app.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                //-initialize the javascript
                App.init();
            });

        </script>
    </body>
</html>