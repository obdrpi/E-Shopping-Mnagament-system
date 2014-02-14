<%-- 
    Document   : re_login
    Created on : 2 Apr, 2013, 2:05:49 PM
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
                  String user=request.getParameter("element_1");
    String pass=request.getParameter("element_6");
    String f_name=request.getParameter("element_5_1");
    String m_name=request.getParameter("element_5_2");
    String l_name=request.getParameter("element_5_3");
    String gender=request.getParameter("element_7");
    String address=request.getParameter("Address");
    String email=request.getParameter("element_4");
    String mobile=request.getParameter("element_3");
    Integer.parseInt(mobile);
    int b;
    if(user.length()<2||email.length()<2)
     b=1/0;
    %>
            <% int a;
Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_shop","root","vikas");
PreparedStatement ps=con.prepareStatement("INSERT into customer(USER_ID,PASSWORD,EMAIL_ID,F_NAME,M_NAME,L_NAME,GENDER,ADDRESS,MOBILE_NO) values (?,?,?,?,?,?,?,?,?)");
//Statement st=con.createStatement();
//Statement st1=con.createStatement();
ResultSet rs,rs1;
PreparedStatement ps1=con.prepareStatement("Select * from customer where USER_ID= ?");
PreparedStatement ps2=con.prepareStatement("Select * from customer where EMAIL_ID= ?");
//PreparedStatement ps1=con.prepareStatement("update laptop set PROCESSOR=?,RAM=?,GRAPHICS=? where COMPANY=? and MODEL_NO=?");
ps1.setString(1,user);
rs=ps1.executeQuery();
ps2.setString(1,email);
rs1=ps2.executeQuery();
if(rs.next()==true)
       {
out.println("User Name Already in USe");
response.sendRedirect("regis_1.jsp");
}
       else if(rs1.next())
       {
out.println("Email ID Already in USe");
response.sendRedirect("regis_1.jsp");
       }

    
   if((user.isEmpty())||(email.isEmpty()))
    a=1/0;
        ps.setString(1,user);
	ps.setString(2,pass);
        ps.setString(3,email);
         ps.setString(4,f_name);
	ps.setString(5,m_name);
	ps.setString(6,l_name);
        ps.setString(7,gender);
        ps.setString(8,address);
        ps.setString(9,mobile);
   ps.executeUpdate(); 
          con.close();
               response.sendRedirect("login.jsp");

     
   }
     catch(ArithmeticException e)
                         {
    // done="donesfdsdkfh";
        response.sendRedirect("regis_2.jsp"); 
           
     }
     catch(IllegalStateException y)
                         {
        response.sendRedirect("regis_2.jsp"); 
     }catch(Exception c)
                         {
        response.sendRedirect("regis_2.jsp"); 
     }

       %>
       
    </body>
</html>
