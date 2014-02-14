<%-- 
    Document   : ad_lap_filter.jsp
    Created on : 15 Apr, 2013, 3:09:08 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN ADD</title>
    </head>
    <body>
       <form  action="ad_lap_filter_java.jsp">
           Company<input type="text" name="company" value="" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Model_NO<input type="text" name="model" value="" />
           <br><br>
       Quantity<input type="text" name="quantity" value="" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PRICE<input type="text" name="price" value="" />
       <input type="submit" value="UPDATE" />
       <%
       session.setAttribute("gadget","laptop");
       %>
       </form>
       <form action="addpro.jsp">
       
<%
try{
         Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_shop","root","vikas");   
Statement st= con.createStatement();
ResultSet rs;
    rs= st.executeQuery("select * from laptop");
    
%>
<TABLE cellpadding="15" border="1" style="background-color: #FFFFFF;"> 
<TR>
    
                            <TD><% out.println("COMPANY");%></TD>
                            <TD><% out.println("MODEL NO.");%></TD>
                            <TD><%out.println("PROCESSOR");%></TD>
                            <TD><%out.println("RAM");%></TD>
                            <TD><%out.println("GRAPHICS");%></TD>
                            <TD><%out.println("DISPLAY");%></TD>
                            <TD><%out.println("HARD DISK");%></TD>
                            <TD><%out.println("PRICE");%></TD>   
                            <TD><%out.println("QUANTITY");%></TD>   
                              
               </TR>         <%
String var;
String str=new String();
while(rs.next())
               {%>
                <TR>
                                

            <TD><%=rs.getString(1)%></TD>
            <TD><%=rs.getString(2)%></TD>
            <TD><%=rs.getString(3)%></TD>
            <TD><%=rs.getString(4)%></TD>
            <TD><%=rs.getString(5)%></TD>
            <TD><%=rs.getString(6)%></TD>
            <TD><%=rs.getString(9)%></TD>
            <TD><%=rs.getString(7)%></TD>
            <TD><%=rs.getString(8)%></TD>
                        </TR>  <%       
                var=rs.getString(1);
        %><%
    }%>
  <TD><input type="text" name="a" value="" /></TD>
   <TD><input type="text" name="b" value="" /></TD>
    <TD><input type="text" name="c" value="" /></TD>
   <TD><input type="text" name="d" value="" /></TD>
    <TD><input type="text" name="e" value="" /></TD>
     <TD><input type="text" name="f" value="" /></TD>
                      <TD><input type="text" name="g" value="" /></TD>
                        <TD><input type="text" name="h" value="" /></TD>
                         <TD><input type="text" name="i" value="" /></TD>
                           
                               <TD> <input type="submit" value="add" /></TD>
  <% }
     catch(Exception y)
                         {
         y.printStackTrace();
     }
  session.setAttribute("gadget","laptop");
       %>
       
       </form>
</TABLE>
    </body>

</html>
