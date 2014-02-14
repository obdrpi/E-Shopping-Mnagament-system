<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><form name="form1" action="http://localhost:8080/e_shop/purchase.jsp">
        
     <%
     try{ 
     String comp=request.getParameter("company");
    String range=request.getParameter("price");
    
    
      if(range.equals("35000"))
          range="< 35000";
           else if(range.equals("40000"))
               range=">= 35000 and price<= 50000";
           else if(range.equals("50000"))
               range=">= 50000";
     else if(range.equals("all"))
               range=">0";
   //  if(comp.equals("all"))
     //     comp=">'a'";
                 //  out.println(range);
Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_shop","root","vikas");
Statement st= con.createStatement();
ResultSet rs;
if(comp.equals("all"))
    rs= st.executeQuery("select * from laptop  where price"+range );
else
    rs= st.executeQuery("select * from laptop  where company =" +comp+ "and price"+range );
//sultSet rs= st.executeQuery("select * from laptop where company = 'dell' and price < 35000" );%>
<TABLE cellpadding="15" border="1" style="background-color: #FFFFFF;"> 
<TR>
                            <TD><%out.println("SELECT");%></TD>  
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
                                <%
            if(!rs.getString(8).equals("0"))
{     %>
            <TD><input type="checkbox" name="laptop" value="<%  out.println(rs.getString(1)+"-"+rs.getString(2));%>"  id="rs.getString(1)" /> </TD>
           <%
           }
                      else{
    %>
                        <TD><input type="checkbox" name="laptop" value="<%  out.println(rs.getString(1)+"-"+rs.getString(2));%>" disabled id="rs.getString(1)" /> </TD>
<%
}
%>

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
</html>
