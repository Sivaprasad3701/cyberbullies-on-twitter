<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
    Connection con = SQLconnection.getconnection();
    Statement st1 = con.createStatement();

    String msg = (String) session.getAttribute("message");
    System.out.println("Checking  : " + msg);
    boolean bol = false;

    Statement st = con.createStatement();
    String Query = "select * from swords";
    ResultSet rs = st.executeQuery(Query);
    while (rs.next()) {
        String val1 = rs.getString("word").toLowerCase();
        System.out.println("val1 is :" + val1);
        String msg1 = msg.toLowerCase();
        if (msg1.indexOf(val1) >= 0) {

            st1.executeUpdate("update tweet set status='1' where msg='" + msg + "'");
            response.sendRedirect("Tweet.jsp?tweet_added");

            bol = false;
            break;
        } else {
            bol = true;
        }
    }
    if (bol == true) {
        st1.executeUpdate("update tweet set status='0' where msg='" + msg + "'");

        response.sendRedirect("Tweet.jsp?sucess");
    }

%>

