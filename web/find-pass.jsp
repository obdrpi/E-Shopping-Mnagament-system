<%-- 
    Document   : find-pass
    Created on : 1 Apr, 2013, 10:25:11 PM
    Author     : dell
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
   
<title>Forgot your password? Enter your email address and we'll tell your Login Information.</title>
</head>
<body bgcolor="white" text="black" link="blue" alink="blue" vlink="blue" background="" >
<!-- 5263972 -->
<font face="verdana,arial" size=-1>
<center><table cellpadding='2' cellspacing='0' border='0' id='ap_table'>
<tr><td bgcolor="blue"><table cellpadding='0' cellspacing='0' border='0' style="width:1000px"><tr><td bgcolor="blue" align=center style="padding:2;padding-bottom:4"><b><font size=-1 color="white" face="verdana,arial"><b>Forgot your?<br> Enter your email address and we will tell your Login Information.</b></font></th></tr>
<tr><td bgcolor="white" style="padding:5"><br>
<form method="post" action="find-pass.jsp" name="aform">
<input type="hidden" name="action" value="lost2">
<input type="hidden" name="user" value="deluxe">
<center><table id='ap_table_lost'>
<tr><td><font face="verdana,arial" size=-1>Email:</font></td>  <td><font face="verdana,arial" size=-1><input type="text" name="email"></td>
    <%String hello=request.getParameter("email");
        %>
  <td><font face="verdana,arial" size=-1><input type="submit" value="Submit"></td></tr>
</table></center>
</form>
  <br> <br>
<center><font face="verdana,arial" size=-1>
    <a href="http://localhost:8080/e_shop/login.jsp">Click Here</a>to go back to Login Page.
    </font></center> <br>
</td></tr></table></td></tr></table>
</body>
</html>
<%
 int flag=0;
if(hello != null&& hello != "") 
        {
            try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_shop","root","vikas");
Statement stmt = con.createStatement();
 String STMT= "select PASSWORD,USER_ID from customer where EMAIL_ID=?";
PreparedStatement ps=con.prepareStatement(STMT);
ps.setString(1,hello);
  ResultSet rs= ps.executeQuery();
   if(rs.next()== false) {
       out.println("Please enter a valid email id"); }
else{
  if(rs.previous()==true);
while(rs.next())
     {
    out.println("User name");
       out.println(rs.getString(2));
out.println("Password");
       out.println(rs.getString(1));
}}}
 catch(Exception e){
        out.println(e);
        e.printStackTrace();
        }
             }
%>
    
