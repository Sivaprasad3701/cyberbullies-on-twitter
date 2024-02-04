<%-- 
    Document   : index
    Created on : 19 Jun, 2021, 12:35:41 PM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.google.gson.Gson"%>
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
                                <span class="menu-mid" style="color: red">Graph</span>
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
                    <center><h3>Analysis</h3></center><br>
                    <%
                                    String val1 = "", val2 = "", val3 = "";
                                    String val11 = "", val22 = "", val33 = "";
                                    int i = 0;

                                    try {
                                        Connection con = SQLconnection.getconnection();

                                        Statement st = con.createStatement();
                                        ResultSet rs0 = st.executeQuery("SELECT  COUNT(tid) AS value_occurrence FROM  tweet");
                                        rs0.next();
                                        {

                                            val1 = rs0.getString("value_occurrence");
                                        }
                                        rs0.close();
                                        Statement st1 = con.createStatement();
                                        ResultSet rs2 = st1.executeQuery("SELECT  COUNT(tid) AS value_occurrence FROM  tweet WHERE status = '1' ");
                                        rs2.next();
                                        {
                                            val2 = rs2.getString("value_occurrence");
                                        }
                                        //Integer sii = rs0.getInt("value_occurrence");
                                        System.out.println("count------------------> " + val1);
                                        System.out.println("count------------------> " + val2);

                                    } catch (Exception ex) {
                                        ex.printStackTrace();
                                    }

                                %>
                                <script type="text/javascript">
                                    window.onload = function () {

                                        var chart = new CanvasJS.Chart("chartContainer", {
                                            animationEnabled: true,
                                            exportEnabled: true,
                                            title: {
                                                text: ""
                                            },
                                            axisY: {
                                                includeZero: true
                                            },
                                            data: [{
                                                    type: "column", //change type to bar, line, area, pie, etc
                                                    //indexLabel: "{y}", //Shows y value on all Data Points
                                                    indexLabelFontColor: "#5A5757",
                                                    indexLabelPlacement: "outside",
                                                    dataPoints: [{y: <%=val1%>, label: "All Tweets"},
                                                        {y: <%=val2%>, label: "Bullying Tweets"}]
                                                }]
                                        });
                                        chart.render();

                                    }
                                </script>
                                <div id="chartContainer" style="height: 370px; max-width: 920px; margin: 0px auto;"></div>
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

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
        <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
        <!-- About us Skills Circle progress  -->
        <script>
            // First circle
            new Circlebar({
                element: "#circle-1",
                type: "progress",
                maxValue: "90"
            });

            // Second circle
            new Circlebar({
                element: "#circle-2",
                type: "progress",
                maxValue: "84"
            });

            // Third circle
            new Circlebar({
                element: "#circle-3",
                type: "progress",
                maxValue: "60"
            });

            // Fourth circle
            new Circlebar({
                element: "#circle-4",
                type: "progress",
                maxValue: "74"
            });

        </script>
    </body>
</html>

