<%-- 
    Document   : view
    Created on : 1 Dec, 2022, 3:45:37 PM
    Author     : Kalyani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            h1{
                font-family: arial;
                color: #F4A896;
                text-align: center;
            }
            .m{
                font-weight: bold;
            }
            body{
                background-color: #358597;
            }
           
               
            
        </style>
    </head>
    <body>
    <center>
         <%@page import="java.sql.*" %>
          <%
              String emid=request.getParameter("emid");
          try
            {
                ResultSet rs=null;
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ksknewdatabase","root","");
              Statement st=con.createStatement();
              String sql="Select *from ksknewtable where Employee_ID="+emid;
               rs=st.executeQuery(sql);
              %>
              <h1 style="color: #FF8787"><u>Employee Registration List</u></h1></style>
              <table border="0" cellspcing="20">
                 
                  <tbody>
                      <tr
                      
                      <%
                          while(rs.next())
                          {
                              
                          
                          %>
                            <tr>
                                <td class="m">First Name:</td>
                                <td><%=rs.getString("First_Name")%></td>
                            </tr>
                            <tr>
                                <td class="m">Middle Name:</td>
                              <td><%=rs.getString("Middle_Name")%></td>
                            </tr>
                            <tr>
                                <td class="m">Last Name:</td>
                            
                                
                                
                          <td><%=rs.getString("Last_Name")%></td>
                            </tr>
                            <tr>
                                <td class="m">Employee_ID:</td>
                          <td><%=rs.getString("Employee_ID")%></td>
                            </tr>
                            <tr>
                                
                                <td class="m">Department:</td>
                          <td><%=rs.getString("Department")%></td>
                            </tr>
                            <tr>
                                <td class="m">Position:</td>
                                
                          <td><%=rs.getString("Position")%></td>
                            </tr>
                            <tr>
              <td class="m">Monthly_salary</td>
                          <td><%=rs.getLong("Monthly_salary")%></td>
              </tr>
              <tr>
                  <td> <a href="allowance.jsp?emid=<%=rs.getString("Employee_ID")%>">Add allowance</a></td>
              </tr>
              <tr>
                  <td> <a href="dedunction.jsp?emid=<%=rs.getString("Employee_ID")%>">Add dedunction</a></td>
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

    