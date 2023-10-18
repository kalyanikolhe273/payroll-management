<%-- 
    Document   : Registerr
    Created on : 20 Oct, 2022, 8:20:20 PM
    Author     : Kalyani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#6D8299">
    <center>
        <%@page import="java.sql.*" %>
        <% 
            String fn=request.getParameter("fname");
            String mn=request.getParameter("mname");
            String ln=request.getParameter("lname");
            String emid=request.getParameter("emid");
            String dept=request.getParameter("dept");
             String posi=request.getParameter("pos");
            String sl=request.getParameter("salary");
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ksknewdatabase","root","");
              Statement st=con.createStatement();
              String sq="insert into ksknewtable(First_Name,Middle_Name,Last_Name,Employee_ID,Department,Position,Monthly_Salary)values('"+fn+"','"+mn+"','"+ln+"','"+emid+"','"+dept+"','"+posi+"','"+sl+"')";
              st.executeUpdate(sq);
              con.close();
            }
           
            catch(Exception e){
               
                
            
                e.printStackTrace();
                
                  out.print("Data Inserted!!!");
                  
                                 
            }
            
             
          
                  
                
          
  
                
            
            %>
            <br>
            <a href="EmployeeList.jsp">View Employee</a>
            
            
    </center>
          
                   
    </body>
</html>
