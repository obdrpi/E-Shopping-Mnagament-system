<%-- 
    Document   : accr_filter
    Created on : 8 Apr, 2013, 3:10:15 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">
               body
               {
                   margin-left:30px;
                   background-size:800px 400px;
                   background-repeat:no-repeat;
                   position:absolute;
               }
        </style>
    </head>
<body background="accr.jpg">
	<h1> FILTER SEARCH </h1>

	<br><br><br>
	<h3> <b>Items </b></h3>
         <br><br><br><form name="lap" action="http://localhost:8080/e_shop/filter_accr.jsp">
	<select name="items">
		<option selected="Selected"></option>
		<option value="'hard disk'">HARDISK</option>
		<option value="'headphones'">HEADPHONES</option>
		<option value="'memory card'">MEMORY CARDS</option>
		<option value="'keyboard'">MICE & KEYBOARD</option>
		<option value="'pendrive'">PENDRIVE</option>
	</select>

	<br><br><br>
	<input type="submit" action="http://localhost:8080/e_shop/filter_accr.jsp" value="Submit">
        </form>

</body>
</html>