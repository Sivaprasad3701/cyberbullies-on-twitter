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
                                <span class="menu-mid" style="color: red">User</span>
                            </a>
                        </li>
                        <li>
                            <a href="Admin_login.jsp">
                                <span class="menu-mid">Admin</span>
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
        <script>
            var loadFile = function (event) {
                var reader = new FileReader();
                reader.onload = function () {
                    var output = document.getElementById('output');
                    output.src = reader.result;
                };
                reader.readAsDataURL(event.target.files[0]);
            };
        </script>
        <div class="bulk-domain">
            <div class="content">
                <div class="wrap">
                    <center><h3>User Register</h3></center>
                    <div class="login_form">
                        <form action="user_reg" method="post" enctype="multipart/form-data">
                            <div class="login_form_left">  
                                <table>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div>
                                                    <label>Name <span class="astrix">*</span></label>
                                                    <input type="text" name="username" placeholder="Enter Your Name" required="">
                                                </div>
                                                <div>
                                                    <label>E-Mail <span class="astrix">*</span></label>
                                                    <input type="email" name="email" placeholder="Enter Your Email" required="">
                                                </div>
                                                <div>
                                                    <label>DOB <span class="astrix">*</span></label>
                                                    <input type="date" name="dob" required="">
                                                </div>
                                                <div>
                                                    <label>Gender <span class="astrix">*</span></label>
                                                    <select name="gender" required="">
                                                        <option value="">Select Your Gender</option>
                                                        <option>Male</option>
                                                        <option>Female</option>
                                                        <option>Others</option>
                                                    </select>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table> 
                            </div>
                            <div class="login_form_right">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div>
                                                    <label>Phone No <span class="astrix">*</span></label>
                                                    <input type="text" name="phone" placeholder="Enter Your Phone No" required="">
                                                </div>
                                                <div>
                                                    <label>Address <span class="astrix">*</span></label>
                                                    <input type="text" name="address" placeholder="Enter Your Address" required="">
                                                </div>
                                                <div>
                                                    <label>Password <span class="astrix">*</span></label>
                                                    <input type="password" name="pass" placeholder="Enter Your Password" required="">
                                                </div>
                                                <div>
                                                    <label>Profile <span class="astrix">*</span></label>
                                                    <input type="file" name="photo" accept="image/x-png,image/gif,image/jpeg" onchange="loadFile(event)" style="width: 180px;" required="">
                                                    <img id="output" src="#" alt="Preview Profile" width="140" height="140" style="float: right" />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input name="Checkout" type="submit" class="uiButton" value="Sign Up">
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>  
                            </div> 
                        </form>
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

