<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>

<body style="margin-top:30px;" >
	

	<h1 align="center">
		WELCOME TO ONLINE SHOPPING
	</h1>
    <%
    if(session.getAttribute("user")==null)
     {  
%>
	<a href="login.jsp"  style="text-decoration:none; color:#000; font-size:15px; margin-left:1100px;">
		<b>Login / SignUp / Register </b>
	</a>
	
<%
    }
       else{
               %>
               <a href="up.jsp" target="_blank"  style="text-decoration:none; color:#000; font-size:15px; margin-left:1100px;">
            <b> <%out.println(String.valueOf(session.getAttribute("user")));%>
(Update)</b>
	</a>
    	<a href="logut.jsp"  style="text-decoration:none; color:#000; font-size:15px; margin-left:1100px;">
            <b> Log Out</b>
	</a><%}%>
</body>
</html>