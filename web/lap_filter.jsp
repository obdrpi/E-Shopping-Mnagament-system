<%-- 
    Document   : lap_filter
    Created on : 3 Apr, 2013, 12:26:37 PM
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
<body background="laptops.jpg">
    <h1> FILTER SEARCH </h1>
    
        <br><br><br><form name="lap" action="http://localhost:8080/e_shop/filterlap_lap.jsp">
        
	<h3> <b>Company </b></h3>
	<select name="company">
           
		<option selected="Selected"></option>
                <option value="all"> ALL </option>
		<option value="'dell'"> DELL </option>
		<option value="'LENOVO'"> LENOVO </option>
	</select>

	<br><br><br>
	<h3> <b>Price </b></h3>
	<select name="price">
		<option selected="Selected"></option>
		<option value="all"> ALL </option>
                <option value="35000"> below 35,000/- </option>
		<option value="40000"> 35,000/- - 50,000/- </option>
		<option value="50000"> above 50,000/-</option>
	</select>
	
	<br><br><br>
        
	<input type="submit" action="http://localhost:8080/e_shop/filterlap_lap.jsp" value="Submit">
</form>
</body>
</html>
