<%-- 
    Document   : index
    Created on : 19 Jun, 2021, 12:35:41 PM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>BullyNet: Unmasking Cyberbullies on Social Networks</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <script src="js/jquery.js"></script>
    </head>
    <%
        if (request.getParameter("Failed") != null) {
    %>
    <script>alert('Login Failed');</script>
    <%            }
    %>
    <body>
        <div class="header">
            <div class="wrap">
                <div class="clear"></div>
            </div>
        </div>
        <div id="primary-navindex">
            <div class="wrap">
                <div class="nav">
                    <ul class="navigation">
                        <li class="active">
                            <a href="index.jsp">
                                <span class="menu-mid">Home</span>
                            </a>
                        </li>
                        <li>
                            <a href="User_login.jsp">
                                <span class="menu-mid">User</span>
                            </a>
                        </li>
                        <li>
                            <a href="Admin_login.jsp">
                                <span class="menu-mid" style="color: red">Admin</span>
                            </a>
                        </li>
                        <div class="clear"></div>                
                    </ul>
                </div>	
            </div>
        </div>
        <script type="text/javascript">
            $(".navigation li").hover(
                    function () {
                        $(this).addClass("nav-hover");
                    },
                    function () {
                        $(this).removeClass("nav-hover");
                    }
            );
        </script>
        <!-- Domain Blurb -->
        <div class="blue-bar">
            <div class="wrap">
                <div class="domain-name">
                    <h2>BullyNet: Unmasking Cyberbullies on Social Networks</h2>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#field_domains-input').textboxValueToggle('Buy a Domain name...');
            });
            $.fn.textboxValueToggle = function (defaultText) {
                $(this).focus(function () {
                    if ($(this).val() === defaultText) {
                        $(this).val('').removeClass('optionalField');
                    }
                }).blur(function () {
                    if ($(this).val() === '') {
                        $(this).addClass('optionalField').val(defaultText);
                    }
                });
            }
        </script>
        <script type="text/javascript">
            $(".navigation li").hover(
                    function () {
                        $(this).addClass("nav-hover");
                    },
                    function () {
                        $(this).removeClass("nav-hover");
                    }
            );
        </script> 
        <div class="bulk-domain">
            <div class="content">
                <div class="wrap">
                    <center><h3>Admin Login</h3></center>
                    <div class="login_form">
                        <div class="login_form_left">  
                            <img src="img/admin1.jpg" width="400" height="300" >
                        </div>
                        <div class="login_form_right">
                            <form action="admin" method="post">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div>
                                                    <label>E-Mail <span class="astrix">*</span></label>
                                                    <input type="text" name="name" placeholder="Enter Your Email" required="">
                                                </div>
                                                <div>
                                                    <label>Password <span class="astrix">*</span></label>
                                                    <input type="password" name="pass" placeholder="Enter Your Password" required="">
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input name="Checkout" type="submit" class="uiButton" value="Login">
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>   
                            </form>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <div class="footer-bottom">
                <div class="wrap">
                    <div class="copy-right">
                        <p>© 2021</p>
                    </div>
                </div>	
            </div>
        </div>
    </body>
</html>

