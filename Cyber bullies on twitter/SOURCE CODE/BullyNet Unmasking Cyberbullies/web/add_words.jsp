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
    String bword = request.getParameter("bword");
    
    Statement st = null;
    Statement st1 = null;
    Connection conn = SQLconnection.getconnection();
    Statement sto = conn.createStatement();
    st = conn.createStatement();
    st1 = conn.createStatement();

    try {

        int i = st.executeUpdate("insert into swords(word)values('"+ bword +"')");
        
        if (i != 0) {
           
                response.sendRedirect("add_bullyingwords.jsp?word_added");
            } else {

                System.out.println("failed");
                response.sendRedirect("add_bullyingwords.jsp?Failed");
            }
        
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>

