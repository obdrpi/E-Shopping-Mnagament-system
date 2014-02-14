<%-- 
    Document   : laptop
    Created on : 3 Apr, 2013, 12:05:08 AM
    Author     : dell
--%>
<%@page import="javax.swing.text.Document"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>LAptop!</h1>
    <% int a;
    try{
Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_shop","root","vikas");
    Statement st =con.createStatement();
    ResultSet rs=st.executeQuery("Select * from LAPTOP ");
    while(rs.next())
               {
        out.println(rs.getString(1)+"      "+"\n");
        out.println(rs.getString(2)+"      "+"\n");
        out.println(rs.getString(3)+"      "+"\n");
        out.println(rs.getString(4)+"      "+"\n");
        out.println(rs.getString(5)+"      "+"\n");
        out.println(rs.getString(6)+"      "+"\n");
        out.println(rs.getString(7)+"      "+"\n");
        %><br><%
    }
       }catch(Exception e){}
    %>
    </body>

</html>
