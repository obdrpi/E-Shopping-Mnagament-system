<%-- 
    Document   : bill_java
    Created on : 6 Apr, 2013, 9:14:25 PM
    Author     : dell
--%>
<%@page import="java.io.*"%>
<%@page import="java.text.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
  
//con.setAutoCommit(false);
try
{

         Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_shop","root","vikas");   
String bill_num=new String();
                        String count=new String();
String card_no=request.getParameter("card_num");
String contact_no=request.getParameter("contact_num");
String address_=request.getParameter("Address");

Integer.parseInt(contact_no);
//Statement st= con.createStatement();
PreparedStatement ps5=con.prepareStatement("INSERT into map(PRODUCT_ID,BILL_NO) values(?,?)");
PreparedStatement ps=con.prepareStatement("INSERT into bill_payment(BILL_NO,CARD_NO,SHIPPING_ADD,TOTAL_AMOUNT,CONTACT_NO) values (?,?,?,?,?)");
ps.setString(1,String.valueOf(session.getAttribute("bill_num")));
ps.setString(2,card_no);
ps.setString(3,address_);
ps.setString(4, String.valueOf(session.getAttribute("count")));
ps.setString(5,contact_no);
 ps.executeUpdate();
PreparedStatement ps1=con.prepareStatement("INSERT into record(DATE,STATUS,USER_ID,BILL_NO) values (?,?,?,?)");
//ps1.setString(1,String.valueOf(session.getAttribute("bill_num")));
//ps1.setString(2,card_no);
java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
ps1.setDate(1, sqlDate);
ps1.setString(2,String.valueOf("undelivered"));
ps1.setString(3,String.valueOf(session.getAttribute("user")));
ps1.setString(4, String.valueOf(session.getAttribute("bill_num")));
ps1.executeUpdate();
/////////////////start from here
int id=1;
Statement st1 = con.createStatement();
ResultSet rs2=st1.executeQuery("select max(PRODUCT_ID) from purchase");
if(rs2.equals(null))
{    id=1;
}
else
    {
    
    if(rs2.next())
    id=Integer.valueOf(rs2.getString(1));
    id++;
}
int length = Integer.parseInt(String.valueOf(session.getAttribute("id_bill")));
//out.println(length);
Object company = session.getValue("com");
String[] co= (String[]) company;
Object model = session.getValue("mod");
String[] mo= (String[]) model;
for(int i=0;i<length;i++)
       {
              ps=con.prepareStatement("INSERT into purchase(USER_ID,COMPANY,MODEL_NO,PRODUCT_ID) values (?,?,?,?)");
             ps.setString(1,String.valueOf(session.getAttribute("user")));
             ps.setString(2,co[i]);
             ps.setString(3,mo[i]);
              ps.setString(4,String.valueOf(id));
 //             out.println(mo[i]+co[i]);
           ps.executeUpdate();
           ps5.setString(1,String.valueOf(id));
           ps5.setString(2,String.valueOf(session.getAttribute("bill_num")));
           ps5.executeUpdate();
            id++;

        String pro=String.valueOf(session.getAttribute("product"));
        Statement s_1=con.createStatement();//for decrement quantity
        ResultSet rs,rs1;
        if(pro.equals("lap"))
       s_1.executeUpdate("update laptop set quantity=quantity-1 where COMPANY='"+co[i].trim()+"'and MODEL_NO='"+mo[i].trim()+"'");
        else if(pro.equals("mob"))
        s_1.executeUpdate("update mobile set quantity=quantity-1 where COMPANY='"+co[i].trim()+"'and MODEL_NO='"+mo[i].trim()+"'");
        else if(pro.equals("acce"))
        s_1.executeUpdate("update accessories set quantity=quantity-1 where COMPANY='"+co[i].trim()+"'and MODEL_NO='"+mo[i].trim()+"'");
    }  
//con.commit();
con.close();
out.println("Thank You For Purchasing");
out.println("Your shipment will arrive within 3 days.");
out.println("customere care no-9001929764");
}
catch(Exception y)
{ %>      
    <br> <font color ="red"><% out.println("error: INCORRECT SYNTAX: ");%> 
        <% y.printStackTrace();
//        con.rollback();
}
%>
<form  action = "displaybill.jsp"
       > <input type="submit" value="Print_Bill" /> </form >


       
    </body>
</html>
