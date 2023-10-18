<%-- 
    Document   : AddEmployee
    Created on : 20 Oct, 2022, 6:58:23 PM
    Author     : Kalyani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="addcs.css">
        <style>
            .u{
    color: #FBF8BE;
  background-color: #234E70;
            }
            </style>
        
    </head>
    <body>
    <center>
       <div class="n">
        
           <h1><u class="u">Employee Registeration Form</u></h1></div>
        <form name="demo"  action="Registerr.jsp" onsubmit="return Validationform()">
        
        <table border="0" cellspacing="10">
            
            <tbody>
                
                <tr>
                    <td style="font-size: 20px"><b>First Name:</b></td>
                    <td><input type="text" name="fname" value="" required /></td>
                </tr>
                <tr>
            <b><td style="font-size: 20px"><b>Middle Name:</b></td></b>
                    <td><input type="text" name="mname" value="" required /></td>
                </tr>
                <tr>
                <b><td style="font-size: 20px"><b>Last Name:</b></td></b>
                    <td><input type="text" name="lname" value="" required /></td>
                </tr>
                <tr>
                <b><td style="font-size: 20px"><b>Employee ID:</b></td></b>
                    <td><input type="text" name="emid" value="" required /></td>
                </tr>
                <tr>
                <b><td style="font-size: 20px"><b>Department:</b></td></b>
                    <td><input type="text" name="dept" value="" required /></td>
                </tr>
                <tr>
                <b><td style="font-size: 20px"><b>Position:</b></td></b>
                    <td><input type="text" name="pos" value="" required /></td>
                </tr>
                <tr>
                <b><td style="font-size: 20px"><b>Monthly Salary:</b></td></b>
                    <td><input type="text" name="salary" value="" required /></td>
                </tr>
            <td><input type="submit" value="Submit" /></td>
            <td><input type="submit" value="Cancel" /></td>
            
            </tbody>
        </table>
        </form>
    </center>
    
        <script>
            <center>
            function Validationform(){
                var fn=document.demo.fname.value;
                if(fn===null || fn===""){
                    alert("please enter your first name");
                
               
                    return false;
                }
                var mn=document.demo.lname.value;
                if(mn===null || mn===""){
                    alert("please enter your middle name");
                    return false;
                }
                var ln=document.demo.lname.value;
                if(ln===null || ln===""){
                    alert("please enter your last name");
                    return false;
                }
                
                var emid=document.demo.emid.value;
                if(isNaN(emid)){
                    alert("id should be in numeric");
                    return false;
                }
                var d=document.demo.dept.value;
                if(d===null || d===""){
                    alert("please enter your department");
                    return false;
                }
                var posi=document.demo.pos.value;
                if(posi===null || posi===""){
                    alert("please enter your mname");
                    return false;
                }
                var sl=document.demo.salary.value;
                if(sl===null || sl===""){
                    alert("please enter your salary");
                }
                if(isNaN(sl)){
                    alert("salary should be numeric");
                
                    return false;
                
            }
        }
        </center>
        </script>

    </body>
</html>
