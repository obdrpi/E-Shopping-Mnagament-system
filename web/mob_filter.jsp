<%-- 
    Document   : mob_filter
    Created on : 8 Apr, 2013, 2:30:33 PM
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
<body background="mobiles.jpg">
	<h1> FILTER SEARCH </h1>

	<br><br><br>
	<h3> <b>Company </b></h3>
        <form action="http://localhost:8080/e_shop/filter_mob.jsp">
	<select name="company">
		<option selected="Selected"></option>
                <option value="ALL">ALL</option>
		<option value="'HTC'">HTC</option>
		<option value="'NOKIA'">NOKIA</option>
		<option value="'SAMSUNG'">SAMSUNG</option>

	</select>

	<br><br><br>
	<h3> <b>Price </b></h3>
	<select name="price">
		<option selected="Selected"></option>
                <option value="ALL">ALL</option>
		<option value="10000"> below 10,000/- </option>
		<option value="20000"> 10,000/- - 20,000/- </option>
		<option value="30000"> above 30,000/-</option>
	</select>
	
	<br><br><br>
	<input type="submit" action="http://localhost:8080/e_shop/filter_mob.jsp" value="Submit">
</form>
</body>
</html>
