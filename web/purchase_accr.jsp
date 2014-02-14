<%-- 
    Document   : purchase_accr
    Created on : 8 Apr, 2013, 3:35:24 PM
    Author     : dell
--%>


<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <% try{    
        String[] comp;
        String count=new String();
         String[] company= new String[50];
         String[] model= new String[50];
                        
    comp = request.getParameterValues("acc");
int i,j=0;
if(comp!= null)
    
       {
    for(i=0;i<comp.length;i++)
    {
        String parts=comp[i];  
         for(String ret:parts.split("-",2) ){//for splitting string into two parts
             if(j==0)
                              {
                   company[i]=new String(ret);
                          j++;}
              else{
   model[i]=new String(ret);
                       j=0;}
         }
          
    
    } 
int x=0,id=1;

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_shop","root","vikas");
String bill_no=new String();
String bill_num=new String();
String init_bill=new String();
init_bill="e_shop_xyz";
Statement s1 = con.createStatement();
Statement stmt = con.createStatement();  
Statement st=con.createStatement();
Statement st1=con.createStatement();
ResultSet rs2=st1.executeQuery("select max(PRODUCT_ID) from purchase");
ResultSet bill=s1.executeQuery("select count(BILL_NO) from bill_payment");

if(bill.equals(null))
bill_no=new String(init_bill+"0");
else
{   if(bill.next()==true)
    bill_no=new String(init_bill+bill.getString(1));
}
out.println("hello");  
PreparedStatement ps,ps1;
Statement stat=con.createStatement();
ResultSet rs3;

//out.println();
 if(rs2.equals(null))
{    id=1;
}
else
    {
    
    if(rs2.next())
    id=Integer.valueOf(rs2.getString(1));
    id++;
}

out.println(String.valueOf(session.getAttribute("user")));
if((String.valueOf(session.getAttribute("user"))).equals("null"))
    response.sendRedirect("login.jsp");

int tot=0;
  
Statement stmnt = con.createStatement();
for(i=0;i<comp.length;i++)
{
out.println(company[i]+" "+model[i]+id);
String query = "select PRICE from accessories where COMPANY= '"+company[i]+"' and MODEL_NO ='"+model[i].trim()+"'";
rs3= stmnt.executeQuery(query);
if(rs3.next()==true)
tot=tot+Integer.parseInt(rs3.getString(1));
session.setAttribute("product","acce");


}
session.setAttribute("com",company);
    session.setAttribute("mod",model);
session.setAttribute("id_bill",i);
con.close();
out.println("hello");
session.setAttribute("bill_num", bill_no);
session.setAttribute ("count", tot);
response.sendRedirect("bill_no.jsp");
con.close();
out.println("hello");
session.setAttribute("bill_num", bill_no);
session.setAttribute ("count", tot);
response.sendRedirect("bill_no.jsp");

}
}
 
catch(Exception e)
               {
    
    e.printStackTrace();
}

    %>
    </body>
</html>