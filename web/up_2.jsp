<%-- 
    Document   : up_2
    Created on : 9 Apr, 2013, 11:27:48 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
  try{ 
int i;          
//String empid=(String) session.getAttribute("empid");
String a=request.getParameter("user");
String b=request.getParameter("pass");
String c=request.getParameter("f_name");
String d=request.getParameter("m_name");
String e=request.getParameter("l_name");
String f=request.getParameter("address");
String g=request.getParameter("gender");
String h=request.getParameter("email_id");
String j=request.getParameter("mobile");
 String user=String.valueOf(session.getAttribute("user"));
Statement stmt=null;
if(b.length() < 4)
    i= 5/0;

    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/e_shop","root","vikas");
   
    PreparedStatement ps=con.prepareStatement("UPDATE customer SET PASSWORD=?,F_NAME=?,M_NAME=?,L_NAME=?,ADDRESS=?,GENDER=?,EMAIL_ID=?,MOBILE_NO=? WHERE USER_ID='"+user+"'");
      ps.setString(1,b);
    ps.setString(2,c);
    ps.setString(3,d);
    ps.setString(4,e);
    ps.setString(5,f);
    ps.setString(6,g);
    ps.setString(7,h);
    ps.setString(8,j);
   
  ps.executeUpdate();
 %> <font color="green"> <h1><%out.println("SUCCESSFULLY UPDATED");%></h1></font><%
  //out.println(rs);    
}

catch(Exception e){
    %> <font color="green"> <h1><%out.println("Passowrd should be of atleast 4 characters.");%></h1></font><%
e.printStackTrace();
}

%>

        
    </body>
</html>
