<%-- 
    Document   : ad_lap_filter_java
    Created on : 15 Apr, 2013, 3:23:38 PM
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
        Statement st=con.createStatement();
        String comp=request.getParameter("company");
        String mod=request.getParameter("model");
        String pric=request.getParameter("price");
        int quan=Integer.valueOf(request.getParameter("quantity"));
       // out.println(String.valueOf(session.getAttribute("gadget")));
        out.println("update " +String.valueOf(session.getAttribute("gadget"))+ " set quantity='"+quan+"' where company='" +comp.trim()+ "' AND model_no='" +mod.trim()+"'");
        st.executeUpdate("update " +String.valueOf(session.getAttribute("gadget"))+ " set quantity='"+quan+"'+quantity,price = '"+pric+"' where company='" +comp.trim()+ "' AND model_no='" +mod.trim()+"'");
       response.sendRedirect("index.jsp"); 
     }catch(Exception e){

 }  %>
           </body>
</html>
