<%-- 
    Document   : index
    Created on : 19 Jun, 2021, 12:35:41 PM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
                            <a href="User_Home.jsp"><span class="menu-mid">Home</span></a>
                        </li>
                        <li>
                            <a href="Timeline.jsp"><span class="menu-mid">Timeline</span></a>
                        </li>
                        <li>
                            <a href="Tweet.jsp"><span class="menu-mid">Tweet</span></a>
                        </li>
                        <li>
                            <a href="people.jsp"><span class="menu-mid">All People</span></a>
                        </li>
                        <li>
                            <a href="followers.jsp"><span class="menu-mid">Followers</span></a>
                        </li>
                        <li>
                            <a href="following.jsp"><span class="menu-mid">Following</span></a>
                        </li>
                        <li>
                            <a href="message.jsp"><span class="menu-mid" style="color: red">Message</span></a>
                        </li>
                        <li>
                            <a href="view_message.jsp"><span class="menu-mid">View Messages</span></a>
                        </li>
                        <li>
                            <a href="index.jsp"><span class="menu-mid">Logout</span></a>
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
                    <center><h3>Post Tweet</h3></center>
                    <div class="login_form">
                        <div class="login_form_left">  
                            <img src="img/twtmsg.jpg" width="400" height="300" >
                        </div>
                        <div class="login_form_right">
                            <table>
                                <tr>
                                    <th style="text-align: center;width: 200px; font-size: 16px; color: black"><b>User Name</b></th>
                                    <th style="text-align: center;width: 200px;  font-size: 16px; color: black"><b>Chat</b></th>
                                </tr>
                                <tr><td> &nbsp;&nbsp;&nbsp;</td><td> &nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
                                <tr>
                                    <%
                                        String id = (String) session.getAttribute("uid");
                                        String name = (String) session.getAttribute("uname");
                                        String email = (String) session.getAttribute("umail");
                                        Connection con5 = SQLconnection.getconnection();
                                        Statement st5 = con5.createStatement();
                                        String sql3 = "select * from user_reg where id!='" + id + "'";
                                        try {
                                            ResultSet rs5 = st5.executeQuery(sql3);
                                            while (rs5.next()) {
                                    %>
                                    <td style="font-size: 16px; color: #000033"><center><%=rs5.getString("name")%></center></td>  
                            <td style="font-size: 16px; color: #000033"><center><a href="msg.jsp?fid=<%=rs5.getString("id")%>&fname=<%=rs5.getString("name")%>" class="btn btn-link btn-lg">Message</a></center></td>  <br>
                                </tr>
                                <%
                                        }
                                    } catch (Exception ex) {
                                        ex.printStackTrace();
                                    }

                                %>
                            </table><br><br>
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

