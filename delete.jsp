<%-- 
    Document   : delete
    Created on : 22 Nov, 2022, 7:27:52 PM
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
         <%@page import="java.sql.*" %>
    <center>
        
          <%
              String emid=request.getParameter("emid");
          try
            {
                
                Class.forName("com.mysql.jdbc.Driver");
                Statement st=null;
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ksknewdatabase","root","");
                
                  st=con.createStatement();
              String sql="delete from ksknewtable where  Employee_ID="+emid;
                 st.executeUpdate(sql);
                 System.out.print("data is successfully deleted");
  con.close();
}
catch(Exception e)
{
System.out.print(e);


}
          response.sendRedirect("EmployeeList.jsp");
%>
    
    </body>
</html>
