<%-- 
    Document   : shipment_java
    Created on : 15 Apr, 2013, 8:20:33 PM
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
        <%
    try
    {
       Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_shop","root","vikas");

String a=request.getParameter("a");
String b=request.getParameter("b");
String c=request.getParameter("c");
String d=request.getParameter("d");
String e=request.getParameter("e");
String f=request.getParameter("f");
String g=request.getParameter("g");

PreparedStatement ps=con.prepareStatement("INSERT into mobile(COMPANY,MODEL_NO,TYPE,CAMERA,OS,PRICE,QUANTITY) values (?,?,?,?,?,?,?)");
        ps.setString(1,a);
	ps.setString(2,b);
        ps.setString(3,c);
         ps.setString(4,d);
	ps.setString(5,e);
	ps.setString(6,f);
        ps.setString(7,g);
        
   ps.executeUpdate(); 


    } 
 
    
  
    catch(Exception e)
    {
        e.printStackTrace();
    }
    
    %>
    <font color="green">SUCCESSFULLY UPDATED...</font>
    </body>
</html>
