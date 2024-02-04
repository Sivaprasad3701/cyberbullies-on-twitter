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
                                <span class="menu-mid" style="color: red">Home</span>
                            </a>
                        </li>
                        <li>
                            <a href="User_login.jsp">
                                <span class="menu-mid">User</span>
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
        <div class="content">
            <div class="wrap">
                <div class="grids">
                    <center><h3><u>ABSTRACT</u></h3></center>
                    <p align="justify" style="font-size: 25px;">
                        One of the most harmful consequences of social
                        media is the rise of cyberbullying, which tends to be more sinister
                        than traditional bullying given that online records typically
                        live on the internet for quite a long time and are hard to
                        control. In this paper, we present a three-phase algorithm, called
                        BullyNet, for detecting cyberbullies on Twitter social network.
                        We exploit bullying tendencies by proposing a robust method for
                        constructing a cyberbullying signed network. We analyze tweets
                        to determine their relation to cyberbullying, while considering
                        the context in which the tweets exist in order to optimize their
                        bullying score. We also propose a centrality measure to detect
                        cyberbullies from a cyberbullying signed network, and we show
                        that it outperforms other existing measures. We experiment on
                        a dataset of 5.6 million tweets and our results shows that the
                        proposed approach can detect cyberbullies with high accuracy,
                        while being scalable with respect to the number of tweets.
                    </p>
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

