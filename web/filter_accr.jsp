<%-- 
    Document   : filter_accr
    Created on : 8 Apr, 2013, 3:13:50 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <form name="form1" action="http://localhost:8080/e_shop/purchase_accr.jsp">
        
     <%
     try{ 
     String item=request.getParameter("items");
                 //  out.println(range);
Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_shop","root","vikas");
Statement st= con.createStatement();
ResultSet rs;
    rs= st.executeQuery("select * from accessories where type =" +item);%>
    <TABLE cellpadding="15" border="1" style="background-color: #FFFFFF;"> 
     <TR>
                            <TD><%out.println("SELECT");%></TD>  
                            <TD><% out.println("COMPANY");%></TD>
                            <TD><% out.println("MODEL NO.");%></TD>
                            <TD><%out.println("TYPE");%></TD>
                            <TD><%out.println("COLOR");%></TD>
                            <TD><%out.println("DESCRIPTION");%></TD>
                            <TD><%out.println("PRICE");%></TD>                            
                            <TD><%out.println("QUANTITY");%></TD>                             
                              
               </TR><%         
String var;
while(rs.next())
               {
    %>
     <TR>
          <%
            if(!rs.getString(7).equals("0"))
{     %>
            <TD><input type="checkbox" name="acc" value="<%  out.println(rs.getString(1)+"-"+rs.getString(2));%>" id="rs.getString(1)" /></TD>
           <%
           }
                      else{
    %>
            <TD><input type="checkbox" name="acc" disabled value="<%  out.println(rs.getString(1)+"-"+rs.getString(2));%>" id="rs.getString(1)" /></TD>
<%
}%>
            <TD><%=rs.getString(1)%></TD>
            <TD><%=rs.getString(2)%></TD>
            <TD><%=rs.getString(3)%></TD>
            <TD><%=rs.getString(4)%></TD>
            <TD><%=rs.getString(5)%></TD>
            <TD><%=rs.getString(6)%></TD>
            <TD><%=rs.getString(7)%></TD>
            
               </TR>         
       
        <%
    }
   }
     catch(Exception y)
                         {
         y.printStackTrace();
     }

       %>
    </TABLE>
    <br>
    <br>
       <input type="submit" value="purchase" action="http://localhost:8080/e_shop/login.jsp" />
              </form>
    </body>

    </body>
</html>
