<%-- 
    Document   : homepage
    Created on : 20 Oct, 2022, 3:38:54 PM
    Author     : Kalyani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            

<%
    String uname=request.getParameter("username");
    String pass=request.getParameter("password");
    if(uname.equalsIgnoreCase("jkadmin")&&pass.equals("jk1234"))
    {
        response.sendRedirect("AddEmployee.jsp");
    }
    else
    {
        response.sendRedirect("invaliduser.jsp");
    }
    %>
    </body>


