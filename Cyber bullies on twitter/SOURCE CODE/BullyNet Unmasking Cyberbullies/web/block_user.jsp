<%-- 
    Document   : sendkey
    Created on : Nov 9, 2019, 1:09:33 PM
    Author     : java1
--%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
    String uid = request.getParameter("uid");
    String uname = request.getParameter("uname");
    
    Statement st = null;
    Statement st1 = null;
    Connection conn = SQLconnection.getconnection();
    Statement sto = conn.createStatement();
    st = conn.createStatement();
    st1 = conn.createStatement();

    try {

        int i = sto.executeUpdate("update user_reg set status = 'Blocked' where id='" + uid + "'");
        
        if (i != 0) {
           
                response.sendRedirect("bullying_tweets.jsp?Blocked");
            } else {

                System.out.println("failed");
                response.sendRedirect("bullying_tweets.jsp?Failed");
            }
        
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>

