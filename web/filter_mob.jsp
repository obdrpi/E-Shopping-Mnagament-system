<%-- 
    Document   : mob2
    Created on : Apr 7, 2013, 12:56:59 AM
    Author     : Dell
--%>

<%-- 
    Document   : 1
    Created on : Apr 5, 2013, 1:37:51 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
<%@page import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><form name="form1" action="http://localhost:8080/e_shop/purchase_m.jsp">
        
     <%
     try{ 
     String comp=request.getParameter("company");
    String range=request.getParameter("price");
    
    
      if(range.equals("10000"))
          range="<='10000'";
           else if(range.equals("20000"))
               range=" between '10000' and '30000'";
           else if(range.equals("30000"))
               range=">='30000'";
     else if(range.equals("ALL"))
               range=">'0'";
     
                 //  out.println(range);
Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_shop","root","vikas");
Statement st= con.createStatement();
ResultSet rs;
if(comp.equals("ALL"))
    rs= st.executeQuery("select * from mobile  where price"+range );
else
rs= st.executeQuery("SELECT * FROM mobile where COMPANY ="+comp+"and PRICE"+range);

//sultSet rs= st.executeQuery("select * from laptop where company = 'dell' and price < 35000" );

//PreparedStatement ps1=con.prepareStatement("update laptop set PROCESSOR=?,RAM=?,GRAPHICS=? where COMPANY=? and MODEL_NO=?");
String var;%>
<TABLE cellpadding="15" border="1" style="background-color: #FFFFFF;"> 
     <TR>
         
                            <TD><%out.println("SELECT");%></TD>  
                            <TD><% out.println("COMPANY");%></TD>
                            <TD><% out.println("MODEL NO.");%></TD>
                            <TD><%out.println("TYPE");%></TD>
                            <TD><%out.println("CAMERA");%></TD>
                            <TD><%out.println("OS");%></TD>
                            <TD><%out.println("PRICE");%></TD>                            
                            <TD><%out.println("QUANTITY");%></TD>                             
                              
               </TR>         
    
<%while(rs.next())
               {
    
   // rec=new Sales();
    //rec.setId("input type=\"checkbox\" name =\" selectedItems\" value=\""+rs.getString(1)+"\"/>+ rs.getString(1));
    %>
        <TR>
                                           <%
            if(!rs.getString(7).equals("0"))
{     %>
            <TD><input type="checkbox" name="mobile" value="<%  out.println(rs.getString(1)+"-"+rs.getString(2));%>" id="rs.getString(1)" /></TD>
           <%
           }
                      else{
    %>
            <TD><input type="checkbox" name="mobile" disabled value="<%  out.println(rs.getString(1)+"-"+rs.getString(2));%>" id="rs.getString(1)" /></TD>
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
      <input type="submit" value="purchase" action="http://localhost:8080/z/login.jsp" />
              </form>
    </body>
</html>

    </body>
</html>

