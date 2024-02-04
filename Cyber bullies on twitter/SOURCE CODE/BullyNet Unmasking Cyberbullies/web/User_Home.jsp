<%-- 
    Document   : index
    Created on : 19 Jun, 2021, 12:35:41 PM
    Author     : JAVA-JP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DBconnection.SQLconnection"%>
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
                            <a href="User_Home.jsp"><span class="menu-mid" style="color: red">Home</span></a>
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
        <%
            String id = (String) session.getAttribute("uid");
            String name = (String) session.getAttribute("uname");
            String email = (String) session.getAttribute("umail");
            System.out.println("Seseeion Values : " + id + name + email);
            Statement st = SQLconnection.getconnection().createStatement();
            ResultSet rt = st.executeQuery("select * from user_reg where  id='" + id + "' ");
            if (rt.next()) {
                String dob = rt.getString("dob");
                String address = rt.getString("address");

        %>
        <div class="content">
            <div class="wrap">
                <div class="grids">
                    <center><h3>Your Profile</h3></center>
                    <div class="grid-a">
                        <div class="grid-left">
                            <form id="contform">
                                <table id="contact-form" border="0" cellpadding="0" cellspacing="0" class="data-form chk-icons" width="100%">
                                    <tbody><tr>
                                            <td width="200" class="frm-label">Name</td>
                                            <td width="600"><input class="frm-field" type="text" readonly="" value="<%=name%>"></td>
                                        </tr>
                                        <tr>
                                            <td class="frm-label">DOB</td>
                                            <td><input class="frm-field" type="text" readonly="" value="<%=dob%>"></td>
                                        </tr>
                                        <tr>
                                            <td class="frm-label">Email</td>
                                            <td><input class="frm-field" type="text" readonly="" value="<%=email%>"></td>
                                        </tr>    
                                        <tr>
                                            <td class="frm-label">Address</td>
                                            <td><textarea class="frm-field" style="resize: none" readonly="" ><%=address%></textarea></td>
                                        </tr> 
                                    </tbody></table>
                            </form>
                        </div>
                    </div>
                    <div class="grid-b">
                        <img src="Getimage?id=<%=id%>" width="350" height="300">
                    </div>
			<div class="clear"></div>
                </div>
            </div>
        </div>
        <%                            }
        %>
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

