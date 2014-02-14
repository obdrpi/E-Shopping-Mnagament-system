<%-- 
    Document   : up
    Created on : 9 Apr, 2013, 11:24:45 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
//String empid=(String) session.getAttribute("empid");
ResultSet rs=null;
Statement stmt=null;

try{
    int i=5;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/e_shop","root","vikas");
    stmt=con.createStatement();
    String user=String.valueOf(session.getAttribute("user"));
    if(user.equals(null))
     i= 5/0;
    rs=stmt.executeQuery("select * from customer where USER_ID='"+user+"'");
        rs.next();
}

catch(Exception e){
 response.sendRedirect("login.jsp");
}

%>
<form name="myform" class="appnitro"  action="up_2.jsp">
     <table width="309" border="1" align="center">
      <tr>
    <td width="108">USER_ID</td>
    <td width="185"><label>
      <input type="text" name="user" value="<%=rs.getString(1)%>"readonly/>
    </label></td>
      </tr>
      <tr>
    <td>PASSWORD</td>
    <td><label>
      <input type="text" name="pass" value="<%=rs.getString(2)%>"/>
    </label></td>
      </tr>
       <tr>
    <td>FIRST NAME</td>
    <td><label>
      <input type="text" name="f_name" value="<%=rs.getString(8)%>"/>
    </label></td>
      </tr>
       <tr>
    <td>MIDDLE NAME</td>
    <td><label>
      <input type="text" name="m_name" value="<%=rs.getString(7)%>"/>
    </label></td>
      </tr>
       <tr>
    <td>LAST NAME</td>
    <td><label>
      <input type="text" name="l_name" value="<%=rs.getString(9)%>"/>
    </label></td>
      </tr>
       <tr>
    <td>ADDRESS</td>
    <td><label>
      <input type="text" name="address" value="<%=rs.getString(5)%>"/>
    </label></td>
      </tr>
       <tr>
    <td>GENDER</td>
    <td><label>
      <input type="text" name="gender" value="<%=rs.getString(4)%>" />
    </label></td>
      </tr>
       <tr>
    <td>EMAIL_ID</td>
    <td><label>
      <input type="text" name="email_id" value="<%=rs.getString(3)%>"/>
    </label></td>
      </tr>
       <tr>
    <td>MOBILE</td>
    <td><label>
      <input type="text" name="mobile" value="<%=rs.getString(6)%>"/>
    </label></td>
      </tr>
     </table>
    
 <input type="submit" align="center" value="UPDATE" name="SUBMIT" />
           </form>
          