<%-- 
    Document   : EmployeeList
    Created on : 20 Oct, 2022, 9:09:55 PM
    Author     : Kalyani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="new2.css">
        <style>
            h1{
    color:#FDF5A6;
    background-color: #4A274F;
}
        </style>
    </head>
    <body>
        <center>
          <%@page import="java.sql.*" %>
          <%
          try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ksknewdatabase","root","");
              Statement st=con.createStatement();
              String sql="Select *from ksknewtable";
              ResultSet rs=st.executeQuery(sql);
              %>
              <h1><u><font  face="arial">Employee Registration List</u></font></h1>
              <table border="2" cellspacing="10">
                 
                  <tbody>
                      <tr align="center">
                          <td><b>First_Name</b></td>
                          <td><b>Middle_Name</b></td>
                            <td><b>Last_Name</b></td>
                            <td><b>Employee_ID</b></td>
                            <td><b>Department</b></td>
                            <td><b>Position</b></td>
                            <td><b>Monthly_salary</b></td>
                            <td><b>Action</b></td>
                            <td><b>Action</b></td>
                            <td><b>Action</b></td>
                            
                            
                          
                      </tr>
                      
                      <%
                          while(rs.next())
                          {
                              
                          
                          %>
                          <tr>
                              <td><%=rs.getString("First_Name")%></td>
                              <td><%=rs.getString("Middle_Name")%></td>
                          <td><%=rs.getString("Last_Name")%></td>
                          <td><%=rs.getString("Employee_ID")%></td>
                          <td><%=rs.getString("Department")%></td>
                          <td><%=rs.getString("Position")%></td>
                          <td><%=rs.getLong("Monthly_salary")%></td>
                          
                          <td><a href="delete.jsp?emid=<%=rs.getString("Employee_ID")%>">delete information</a></td>
                           <td><a href="update.jsp?emid=<%=rs.getString("Employee_ID")%>">update information</a></td>
                           <td><a href="view.jsp?emid=<%=rs.getString("Employee_ID")%>">view information</a></td>
                          </tr>
                                <%
                              }
con.close();
}
catch (Exception e)
{
e.printStackTrace();

}
%>

</center>
    </body>
</html>
