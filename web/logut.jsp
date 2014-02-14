<%-- 
    Document   : logut
    Created on : 9 Apr, 2013, 12:17:53 AM
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
        <% try{
            session.setAttribute("user",null);
            response.sendRedirect("http://localhost:8080/e_shop/head.jsp");
                  }
        catch(Exception e)
                               { response.sendRedirect("http://localhost:8080/e_shop/head.jsp");
        }
        %>
    </body>
</html>
