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
            padding: 15px;
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
                            <a href="User_Home.jsp"><span class="menu-mid">Home</span></a>
                        </li>
                        <li>
                            <a href="Timeline.jsp"><span class="menu-mid" style="color: red">Timeline</span></a>
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
                            <a href="message.jsp"><span class="menu-mid">Message</span></a>
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
        <div class="content">
            <div class="wrap">
                <div class="grids">
                    <center><h3>Timeline</h3></center>
                    <table id="customers">
                        <%                                                //while(rs2.next()){
                            //fid=rs2.getInt("fid");
                            //fname=rs2.getString("fname");
                            //System.out.println("friend id"+fid);

                            Statement st1 = null;
                            ResultSet rs1 = null;
                            String statusb = "Allow";
                            String setting = "public";
                            try {
                                Connection con = SQLconnection.getconnection();
                                st1 = con.createStatement();
                                String sql3 = "SELECT * FROM tweet ORDER BY `tweet`.`tid` DESC";

                                rs1 = st1.executeQuery(sql3);
                                while (rs1.next()) {
                                    //rs.getString
%>
                        <tr>
                            <td>
                                &nbsp;<img style="border-radius: 50%;" src="Getimage?id=<%=rs1.getInt("uid")%>" alt="" width="50" height="50" />&nbsp;&nbsp; 
                                <font style="color: black"><%=rs1.getString("username").toUpperCase()%><font>&nbsp;&nbsp; <font style="color: #c43c35">@<%=rs1.getString("username")%></font>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h4>Tweet:</h4><textarea readonly="" style="width: 350px; height: 90px; border-color: white; color: black"><%=rs1.getString("msg")%></textarea>
                           
                                <img src="img_tweet?id=<%=rs1.getInt("tid")%>" style=" float: right" alt="" width="400" height="300" />
                            </td>
                        </tr><br>

                        <%
                                }
                            } catch (Exception e3) {
                                System.out.println(e3);
                            }

                        %>
                    </table>
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

