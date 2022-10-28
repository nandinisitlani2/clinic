<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<HEAD>

<meta charset="utf-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <title>Requirement Management Application</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</HEAD>
 <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #7fdbd4">
                    <div>
                        <a  class="navbar-brand"style="color:white;font:verdana;font-size:25px"><b>Requirement Tracking System</b></a>
                               
                    </div>
                     <ul class="navbar-nav">
                      
                         <li><a href="<%=request.getContextPath()%>/loginpage?empname=<c:out value='${emp.empname}'/>" class="nav-link">Login</a></li>
                        
                    </ul>
                </nav>
<body>
<font face="Verdana" >


            <header>
      

                   
            </header>
          
            
                               
                <div class="shadow-lg p-3 mb-5 bg-white rounded" style="width:400px;height:200px;border-width:5px;position:relative;left:450px;top:180px">

 
  <form action="<%=request.getContextPath()%>/login" method="post">
   
  <fieldset style="position:relative;top:10px;left:50px">
    <label> User Name</label>
     <input type="text" name="empname"onkeyup="this.value=this.value.toUpperCase();" class="normal"style="right:30px;top:-220px" size="20" maxlength="20" style="text-transform:uppercase; class="form-control"  required="required" />
   </fieldset>
   <fieldset style="position:relative;top:40px;left:60px">
     <label>Password</label>
     <input type="password" name="passwordd" style="right:20px;bottom:220px"/>
   </fieldset>


   <input type="submit" class="btn btn-success" value="Login" style="position:relative;top:60px;left:160px;font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-radius:5px"/>
  </form>
 </div>
 
</body>
</html>