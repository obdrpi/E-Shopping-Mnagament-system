<%-- 
    Document   : record
    Created on : Apr 8, 2013, 12:20:34 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">z
        <title>JSP Page</title>
    </head>
    <body>
    <h1>RECORD STATUS</h1>
    <br>
    <br>
    <%
    try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_shop","root","vikas");
Statement st= con.createStatement();
String user=String.valueOf(session.getAttribute("user"));
ResultSet rs= st.executeQuery("SELECT * FROM record,BILL_PAYMENT where record.BILL_NO= bill_payment.BILL_NO and record.USER_ID ='"+user+"' ");%>
<TABLE cellpadding="15" border="1" style="background-color: #FFFFFF;"> 
    <TR>
        <TD><%out.println("DATE OF DELIVERY");%>
        <TD><%out.println("STATUS");%></TD>
        <TD><%out.println("USER_ID");%></TD>
        <TD><%out.println("BILL_NO");%></TD>
        
        </TD><TD><%out.println("CARD NUMBER");%></TD>
        <TD><%out.println("ADDRESS");%></TD>
        <TD><%out.println("TOTAL AMOUNT");%></TD>
        <TD><%out.println("CONTACT NUMBER");%></TD>

    </TR>
<%
while(rs.next())
{
    %>

    <TR>
        <TD><%=rs.getString(1)%></TD>
        <TD><%=rs.getString(2)%></TD>
        <TD><%=rs.getString(3)%></TD>
        <TD><%=rs.getString(4)%></TD>
        <TD><%=rs.getString(6)%></TD>
        <TD><%=rs.getString(7)%></TD>
        <TD><%=rs.getString(8)%></TD>
        <TD><%=rs.getString(9)%></TD>
    </TR>

    <%
    }
               }
    catch(Exception e)
                       {
        e.printStackTrace();
    }%>
</TABLE>
</body>
</html>
