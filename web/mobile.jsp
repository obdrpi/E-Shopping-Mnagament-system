<%-- 
    Document   : mobile
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
        <title>Mobile</title>
    </head>
    <body>
        <h1>MObile!</h1>
        Company&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;model no.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;camera&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;os&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;qty<tr><br>
    <% int a;
    try{
Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_shop","root","vikas");
    Statement st =con.createStatement();
    ResultSet rs=st.executeQuery("Select * from MOBILE ");
    while(rs.next())
               {
        out.println(rs.getString(1));%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%
        out.println(rs.getString(2));%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%
        out.println(rs.getString(3));%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%
        out.println(rs.getString(4));%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%
        out.println(rs.getString(5));%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%
        out.println(rs.getString(6));%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%
        out.println(rs.getString(7));%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%
        %><input type="checkbox" name="abcd" value="ON" id="" /><br><%
    }
       }catch(Exception e){}
    %>
    </body>

</html>
