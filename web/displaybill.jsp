<%-- 
    Document   : displaybill
    Created on : 16 Apr, 2013, 1:38:48 PM
    Author     : dell
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
 <%             try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_shop","root","vikas");
Statement stmt = con.createStatement();
 String bill=String.valueOf(session.getAttribute("bill_num"));
 String STMT= "select * from map,purchase where bill_no = '"+bill.trim()+"' and map.product_id=purchase.product_id" ;
PreparedStatement ps=con.prepareStatement(STMT);
  ResultSet rs= stmt.executeQuery(STMT);
  out.println("product_id");%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <% out.println("Bill_no");%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <% out.println("user_id");%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <%out.println("company");%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <%out.println("model_no");%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><br><%
  while(rs.next())
         {
     out.println(rs.getString(1));%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <% out.println(rs.getString(2));%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <% out.println(rs.getString(3));%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <%out.println(rs.getString(4));%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <%out.println(rs.getString(5));%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <br><br>
     <%
 }}
 catch(Exception e)
                 {
 }
 %>
    </body>
</html>
