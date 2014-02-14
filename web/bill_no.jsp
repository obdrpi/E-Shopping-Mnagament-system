<%-- 
    Document   : bill_no
    Created on : 3 Apr, 2013, 12:48:15 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h1><a>CUSTOMER DETAILS</a></h1>
		<form name="myform" class="appnitro"  action="http://localhost:8080/e_shop/bill_java.jsp">
					<div class="form_description">
			<h2>ENTER YOUR DETAILS</h2>
			
		</div>	<ul >
                 					<li id="li_4" >
		<label class="description" for="element_1">bill_no*</label>
		<div>
			<input id="element_4" name="element_6" class="element text medium" type="text" maxlength="10" value="<%
                String bill_num=new String();
                out.println(session.getAttribute("bill_num"));
                %>" disabled="disabled"/> 
		</div> 
                			<li id="li_5" >
		<label class="description" for="element_1">t_amount*</label>
		<div>
			<input id="element_3" name="element_3" class="element text medium" type="text" maxlength="10" value=" <%
                String count=new String();
                out.println(session.getAttribute("count"));
                %>" disabled="disabled"/> 
                        </div> 
			
			
					<li id="li_1" >
		<label class="description" for="element_1">card_no*</label>
		<div>
			<input id="element_1" name="card_num" class="element text medium" type="text" maxlength="10" value=""/> 
		</div> 
		</li>		<li id="li_6" >
		<label class="description" for="element_6">contact_no *</label>
		<div>
			<input id="element_6" name="contact_num" class="element text medium"  maxlength="15" value="" type="text"/> 
		</div> 
		</li> 
                <li id="li_3" >
                    	<label class="description" for="Address">Address *</label>&nbsp;
                        <div>
                        <textarea name="Address" rows="4" cols="20">
                        </textarea>
                        
                        </div>
                </li>
                <input type="submit" value="purchase" />
               
    </body>
</html>
