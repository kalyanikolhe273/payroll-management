


<%-- 
    Document   : update
    Created on : 21 Nov, 2022, 4:57:55 PM
    Author     : Kalyani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-color: #136371;
            }
            .n{
                color: #FDFFFC;
                font-size:17px;
                font-weight: bold;
                
            }
            h1{
                color: #FF9242;
                font-size: 30px;
                
            }
            
            .c{
               text-align: center; 
            }
        </style>
    </head>
    <body>
    <center>
        <h1><u>Payroll Management</u></h1>
        <%@page import="java.sql.*" %>
    <center>
        
          <%
              String emid=request.getParameter("emid");
          try
            {
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ksknewdatabase","root","");
                
                 Statement st=con.createStatement();
              String sql="Select *from ksknewtable where  Employee_ID="+emid;
                 ResultSet rs=st.executeQuery(sql);
              %>
              
                   <%
                          while(rs.next())
                          {
                              
                          
                          %>
                          <form action="updateinfo.jsp">
                              <table border="0">
                         
                            
                                  <tr>
                                  <td> <input type="hidden" name="emid1" value="<%=rs.getString("Employee_ID")%>" /><br> </td>
                                  </tr>
                                  <tr>
                                  <td class="n"> Employee_ID:</td> 
                                  <td><input type="text" name="emid2" value="<%=rs.getString("Employee_ID")%>" /><br></td>
                                  </tr>
                                  <tr>
                     
                                      
                                      <td class="n">first_Name:</td> 
                                  <td><input type="text" name="fname" value="<%=rs.getString("First_Name")%>" /><br></td>
                                  </tr>
                                  <tr>
                                  <td class="n"> Middle_Name:</td> 
                                  <td><input type="text" name="mname" value="<%=rs.getString("Middle_Name")%>" /><br></td>
                                  </tr>
                                  <tr>
                                  <td class="n">Last_Name:</td> 
                              <td class="c"><input type="text" name="lname" value="<%=rs.getString("Last_Name")%>" /><br></td>
                              </tr>
                          
                              
                              <tr>
                              
                               <td class="n"> Department: </td>
                               <td class="c"><input type="text" name="dept" value="<%=rs.getString("Department")%>" /><br></td>
                              </tr>
                              <tr>
                              <td class="n">position:</td> 
                              <td><input type="text" name="pos" value="<%=rs.getString("position")%>" /><br></td>
                              </tr>
                              <tr>
                              <td class="n">monthly_salary:</td>
                              <td><input type="text" name="salary" value="<%=rs.getLong("monthly_salary")%>"/><br></td>
                              </tr>
                              <tr>
                              <td class="btn"><input type="submit" value="update info" /></td>
                              </tr>
                              </table>
                          </form>
                                <%
                                    }
con.close();
}
catch(Exception e)
{
System.out.print(e);
}
%>
                          
                              
</center>
    </body>
</html>

 
