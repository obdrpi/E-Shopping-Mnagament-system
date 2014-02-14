<%-- 
    Document   : newjsp
    Created on : 30 Mar, 2013, 5:41:57 PM
    Author     : dell
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
            
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div><font face="verdana,arial" size=-1>
            <center><table cellpadding='2' cellspacing='0' border='0' style="width:1000px" id='ap_table'>
                    <tr><td bgcolor="blue">
                            <table cellpadding='0' cellspacing='0' border='0' width='100%'>
                                <tr><td bgcolor="blue" align=center style="padding:2;padding-bottom:4">
                                        <b><font size=-1 color="white" face="verdana,arial"><b>Welcome To Online Shopping</b></font>
                                        </th>
</tr>
<tr><td bgcolor="white" style="padding: 5"><br>

    <form   method="post" action="login.jsp">
<input type="hidden" name="action" value="login">
<input type="hidden" name="hide" value="">

<center><table>
<tr><td><font face="verdana,arial" size=-1>Login:</font></td><td><input type="text" name="login"></td></tr>
<tr><td><font face="verdana,arial" size=-1>Password:</font></td><td><input type="password" name="password"></td></tr>
<%String hello=request.getParameter("login");
    String hello1=request.getParameter("password");
    %>
<tr><td><font face="verdana,arial" size=-1>&nbsp;</font></td><td><font face="verdana,arial" size=-1>
        <input type="submit"  value="Enter"></font></td></tr>
<tr><td colspan=2><font face="verdana,arial" size=-1>&nbsp;</font>
   
    </td></tr>
<tr><td colspan=2><font face="verdana,arial" size=-1>Lost your username or password? Find it <a href="find-pass.jsp">here</a>!</font></td></tr>
<tr><td colspan=2><font face="verdana,arial" size=-1>New User? Find it <a href="regis.jsp" target="_blank" >here</a>!</font></td></tr>
<tr><td colspan=2><font face="verdana,arial" size=-1></font></td></tr>

</table></center>
</form>
</td></tr></table></td></tr></table>
</div>
    <%
 //System.setProperty("java.awt.headless","false");
if(hello != null&& hello != "") 
        {
            try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_shop","root","vikas");
Statement stmt = con.createStatement();
 String STMT= "select PASSWORD from customer where USER_ID = ? or EMAIL_ID=?";
PreparedStatement ps=con.prepareStatement(STMT);
ps.setString(1,hello);
ps.setString(2,hello);
  ResultSet rs= ps.executeQuery();
 
   if(rs.next()== false) {
              out.println("User name is not registered"); }
  else{
  if(rs.previous()==true);
while(rs.next())
     {
     if(rs.getString(1).equals(hello1))
          {
          session.setAttribute ("user", hello);
if(hello.equals("admin"))
    response.sendRedirect("ad_product.jsp");
else{             
out.println("Right password");
           
            response.sendRedirect("head.jsp");
                }      
           }
     else
       out.println("Wrong password");
}
   }        
}    


 catch(Exception e){
        out.println(e);
        e.printStackTrace();
        }
                   }
       
          
                 
          
       
%>

       
    </body>
</html>
  </body>
</html>
