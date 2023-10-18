<%-- 
    Document   : allowance
    Created on : 6 Dec, 2022, 2:16:21 PM
    Author     : Kalyani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="grey">
    <center>
        <h1><i><span>PAYROLL MANAGEMENT SYSTEM</span></i></h1>
         <%@page import="java.sql.*"%>
    
 <%
   String eid=request.getParameter("emid"); 
try{
ResultSet rs=null;
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ksknewdatabase","root","");
Statement st=con.createStatement();
String sql ="select * from ksknewtable where Employee_ID="+eid;
rs=st.executeQuery(sql);
%>

<%
while(rs.next()){
    String n=rs.getString("First_Name");
    String m=rs.getString("Middle_Name");
    String l=rs.getString("Last_Name");
%>
 

<h1>New allowance Employee ID:  <%=eid%><br></td>
<%=n%>
<%=m %>
<%=l %>
</h1>
 
        <form action="alowanceinsert.jsp">
            
          <table border="0">
                
                <tbody>
                    <tr>
                        <td>Employee ID:</td>
                        <td><input type="text" name="eid" value="" /></td>
                    </tr>
                    <tr>
                        <td>Allowance:</td>
                        <td><select name="allow">
                                <option value="-1">Select</option>
                                <option value="House">House</option>
                                <option value="Phone">Phone</option>
                                <option value="Travelling">Travelling</option>
                                <option value="Dearness">Dearness</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Type:</td>
                        <td><select name="Type">
                <option value="-1">Select</option>
                <option value="Monthly">Monthly</option>
                <option value="Yearly">Yearly</option>
                            </select></td>
            
                    </tr>
                    <tr>
                        <td>Date:</td>
                        <td><input type="date" name="date" value="" /></td>
                    </tr>
                    <tr>
                        <td>Amount:</td>
                        <td><input type="number" name="amount" value="" /></td>
                    </tr>
                </tbody>
            </table>
            <br>
            <input type="submit" value="ADD TO LIST" />

            
            
        </form>
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
