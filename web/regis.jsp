<%-- 
    Document   : regis.jsp
    Created on : 1 Apr, 2013, 7:52:31 PM
    Author     : dell
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Form</title>
<script type="text/javascript" src="js/view.js"></script>
<script type="text/javascript" src="js/calendar.js"></script>
</head>
<body id="main_body" >
	<div id="form_container">
	
		<h1><a>CUSTOMER DETAILS</a></h1>
		<form name="myform" class="appnitro"  action="http://localhost:8080/e_shop/re_login.jsp">
					<div class="form_description">
			<h2>ENTER YOUR DETAILS</h2>
			<p>This is your form description. Click here to edit.</p>
		</div>						
			<ul >
			
					<li id="li_1" >
		<label class="description" for="element_1">User Name *</label>
		<div>
			<input id="element_1" name="element_1" class="element text medium" type="text" maxlength="10" value=""/> 
		</div> 
		</li>		<li id="li_6" >
		<label class="description" for="element_6">Password *</label>
		<div>
			<input id="element_6" name="element_6" class="element text medium"  maxlength="15" value="" type="password"/> 
		</div> 
		</li>
                <li id="li_5" >
		<label class="description" for="element_5">
                    Name
                </label>
                    <br>
		<span>
                        <label>First</label>
                       
			<input id="element_5_1" name= "element_5_1"  maxlength="10" size="8" value=""/>
                        &nbsp;&nbsp;&nbsp;&nbsp;   
		</span>
                <span>
                        <label>Middle</label>
			<input id="element_5_2" name= "element_5_2"  maxlength="10" size="8" value=""/>
			&nbsp;&nbsp;&nbsp;&nbsp;
		</span>
		<span>
                        <label>Last</label>
			<input id="element_5_3" name= "element_5_3"  maxlength="10" size="8" value=""/>
			&nbsp;&nbsp;&nbsp;&nbsp;
		</span> 
		</li>		<li id="li_7" >
		<label class="description" for="element_7">Gender </label>
		<div>
		<select id="element_7" name="element_7"> 
			<option value="Select" selected="selected"></option>
<option value="male" >Male</option>
<option value="female" >Female</option>

		</select>
		</div> 
		
                
                <li id="li_3" >
                    	<label class="description" for="Address">Address *</label>&nbsp;
                        <div>
                        <textarea name="Address" rows="4" cols="20">
                        </textarea>
                            </div>
                </li>
                
		<li id="li_4" >
		<label class="description" for="element_4">Email *</label>
		<div>
			<input id="element_4" name="element_4"  type="text" maxlength="40" value=""/> 
		</div> 
                </li>
                 <li id="li_10" >
		<label class="description" for="element_3">Mobile Number </label>
		<div>
                   
			<input id="element_3" name="element_3"  type="text" maxlength="11" value=""/> 
		</div> 
		</li>
			
					<li class="buttons">
			    
				<input id="saveForm" class="button_text" type="submit" name="submit" value="Submit" />
		</li>
			</ul>
		</form>	
		
	</div>
    *  The selected fields are mandatory <BR>
    ** Password ahould be atleast 4 characters long. 
	</body>
</html>

