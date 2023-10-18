
<%-- 
    Document   : updateinfo.jsp
    Created on : 14 Nov, 2022, 5:41:03 PM
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
    <center>
        <%@page import="java.sql.*" %>
        <% 
            String emid1=request.getParameter("emid1");
        String emid2=request.getParameter("emid2");
        String fname=request.getParameter("fname");
        String lname=request.getParameter("lname");
        String mname=request.getParameter("mname");
        String dept=request.getParameter("dept");
        String pos=request.getParameter("pos");
        String salary=request.getParameter("salary");
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            PreparedStatement pst=null;
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ksknewdatabase","root","");
                
                 
              String sql="update ksknewtable set First_Name=?,Last_name=?,Middle_Name=?,Employee_ID=?,Department=?,position=?,Monthly_Salary=? where Employee_ID="+emid1;
                pst=con.prepareStatement(sql);
               pst.setString(1,fname);
                pst.setString(2,lname);
                 pst.setString(3,mname);
                  pst.setString(4,emid2);
                   pst.setString(5,dept);
                    pst.setString(6,pos);
                    pst.setString(7,salary);
                    int i=pst.executeUpdate();
                    if(i>0)
                    {
                        out.print("data updated successfully");
                        
                    }
                    else
                    {
                        out.print("data not updated");
                    }
                        
                    con.close();
        }
        
        catch(Exception e)
        {
        System.out.print(e);
        }
        response.sendRedirect("EmployeeList.jsp");
               
              %>
        
       
        
        
        
            
                              
      </center>                 
    </body>
</html>
