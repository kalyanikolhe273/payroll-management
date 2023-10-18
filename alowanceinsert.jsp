<%-- 
    Document   : alowanceinsert
    Created on : 8 Dec, 2022, 2:08:20 PM
    Author     : Kalyani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
 
<
    
    </head>
    <body bgcolor="#6D8299">
    <center>
        <%@page import="java.sql.*" %>
        <% 
            String al1=request.getParameter("allow");
            String al2=request.getParameter("type");
            String d=request.getParameter("date");
            String a=request.getParameter("amount");
           
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ksknewdatabase","root","");
              Statement st=con.createStatement();
              String sq="insert into allowancetable(allowance,type,,date,amount)values('"+al1+"','"+al2+"','"+d+"','"+a+"')";
              st.executeUpdate(sq);
              con.close();
            }
           
            catch(Exception e){
                
                
               
                
            
                e.printStackTrace();
                
                  out.print("Data Inserted!!!");
                  
                                 
            }
            
             
          
                  
                
          
  
                
            
            %>
           
            
            
            
    </center>
          
                   
    </body>
</html>
