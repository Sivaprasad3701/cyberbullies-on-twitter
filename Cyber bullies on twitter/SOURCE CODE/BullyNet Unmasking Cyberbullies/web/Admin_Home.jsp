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
    if (request.getParameter("Success") != null) {
    %>
    <script>alert('Login Success');</script>
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
                            <a href="Admin_Home.jsp">
                                <span class="menu-mid" style="color: red">Home</span>
                            </a>
                        </li>
                        <li>
                            <a href="user_details.jsp">
                                <span class="menu-mid">User Details</span>
                            </a>
                        </li>
                        <li>
                            <a href="user_tweets.jsp">
                                <span class="menu-mid">User Tweets</span>
                            </a>
                        </li>
                        <li>
                            <a href="bullying_tweets.jsp">
                                <span class="menu-mid">Bullying Tweets</span>
                            </a>
                        </li>
                        <li>
                            <a href="add_bullyingwords.jsp">
                                <span class="menu-mid">Add Bullying Words</span>
                            </a>
                        </li>
                        <li>
                            <a href="blocked_users.jsp">
                                <span class="menu-mid">Blocked Users</span>
                            </a>
                        </li>  
                        <li>
                            <a href="graph.jsp">
                                <span class="menu-mid">Graph</span>
                            </a>
                        </li>               
                        <li>
                            <a href="index.jsp">
                                <span class="menu-mid">Logout</span>
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
        <div class="content">
            <div class="wrap">
                <div class="grids">
                    <center><h3>Welcome Admin!</h3></center>
                    <img src="img/adminhome.jpg" width="1100" height="550" />
                    <div class="clear"></div>
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

