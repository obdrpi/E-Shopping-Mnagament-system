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
Statement st= con.createStatement();
Statement st1= con.createStatement();
ResultSet rs= st.executeQuery("SELECT BILL_NO FROM record where status='undelivered'");

String stat;
int rs1;
while(rs.next())
 {
    stat=request.getParameter(rs.getString(1));
        if(stat.equals("delivered"))
               {
         
       rs1=  st1.executeUpdate("update record set status = 'delivered' where BILL_NO='"+rs.getString(1)+"'");
 
              } 
stat=new String();    
st= con.createStatement();
} 
 
    
}
    
    catch(Exception e)
    {
        out.println("swap");
    }
    
    %>
    <font color="green">SUCCESSFULLY UPDATED...</font>
    </body>
</html>
