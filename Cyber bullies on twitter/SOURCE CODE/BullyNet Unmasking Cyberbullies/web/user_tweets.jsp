<%-- 
    Document   : index
    Created on : 19 Jun, 2021, 12:35:41 PM
    Author     : JAVA-JP
--%>

<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
    <style>
        #customers {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            font-size: 20px;
            border-collapse: collapse;
            width: 100%;
        }

        #customers td, #customers th {
            border: 1px solid white;
            padding: 10px;
        }


        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #e91e63;
            color: white;
        }
    </style>
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
                                <span class="menu-mid">Home</span>
                            </a>
                        </li>
                        <li>
                            <a href="user_details.jsp">
                                <span class="menu-mid">User Details</span>
                            </a>
                        </li>
                        <li>
                            <a href="user_tweets.jsp">
                                <span class="menu-mid" style="color: red">User Tweets</span>
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
                    <center><h3>User Tweets</h3></center>
                    <table id="customers">
                        <tr>
                            <th>Twitter ID</th>
                            <th>User ID</th>
                            <th>Name</th>
                            <th>Tweet's</th>
                            <th><center>Photo</center></th>
                        </tr>
                        <%
                            Connection con = SQLconnection.getconnection();
                            Statement st = con.createStatement();
                            Statement st1 = con.createStatement();
                            Statement st2 = con.createStatement();

                            try {
                                ResultSet rs = st.executeQuery("SELECT * FROM tweet");
                                while (rs.next()) {

                        %>
                        <tr>
                            <td><%=rs.getString("tid")%></td>
                            <td><%=rs.getString("uid")%></td>
                            <td><%=rs.getString("username")%></td>
                            <td><%=rs.getString("msg")%></td>
                            <td><center><img src="img_tweet?id=<%=rs.getString("tid")%>" width="300" height="180"/></center></td>
                        </tr>
                        <%                                             }
                            } catch (Exception ex) {
                                ex.printStackTrace();
                            }


                        %>
                    </table><br><br>
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

