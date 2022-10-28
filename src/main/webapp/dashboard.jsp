<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
               <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
           <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>
       

         <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #7fdbd4;width:1300px;height:55px">
                    <div>
                        <a  class="navbar-brand"style="color:white;font:verdana;font-size:25px"> <b>Requirement Tracking System</b></a>
                               
                    </div>
<div text-center>
<a href="<%=request.getContextPath()%>/dashboard?empname=<c:out value='${emp.empname}' />" class="btn" id="myButton" style="color:white;position:relative;bottom:5px;left:650px;  padding: 12px 16px;
  font-size: 25px;
  cursor: pointer"><i class="fa fa-home"></i></a>

                       
                               <a class="navbar-brand"style="color:white;position:relative;bottom:2px;left:650px"><b>${emp.empname}</b></a>
                    </div>
                     <a href="<%=request.getContextPath()%>/loginpage" class="btn" id="myButton2" style="color:white;position:relative;bottom:5px;left:650px;  padding: 12px 16px;
  font-size: 25px;
  cursor: pointer">
 
<span class="fa-stack fa-1x" style="font-size:15px">
  <i class="fa fa-circle-o fa-stack-2x"></i>
  <i class="fa fa-power-off fa-stack-1x "></i>
  </span>
  </a>
  </nav>
      
</div>
        <body>
<font face="Verdana">        
   <c:if test="${emp.user=='Admin'}">
<header>
             
                 <!--    <div class="vertical-menu">
                        <a  class="navbar-brand"style="color:white"> Requirement Tracking System </a>
                    </div> -->
<div class="top" >
			
		<a href="#" class="menu_icon"><i  onclick="openNav()"class="material_icons"><div style="width:35px;height:5px;background-color:black;color:#7fdbd4;margin:6px 0"></div> <div style="width:35px;color:#7fdbd4;height:5px;background-color:black;margin:6px 0"></div><div style="width:35px;color:#7fdbd4;height:5px;background-color:black;margin:6px 0"></div></i></a>
		</div>
                    <div class="wrapper" style="display:flex;
	position:relative;">
                    <div id="mySidenav" class="sidebar" style="position:fixed;
	width:0px;
	height:100%;
	background:#7fdbd4;
	position:fixed;
	left:0px;
	padding:30px 0;">
                    <ul style="list-style-type:none">
                   
                        
                
                        <li> <a class="nav-link"style="color:white;padding:10px;position:relative;top:-20px;right:30px"><b>${emp.empname}</b></a></li>
                            <li><a href="<%=request.getContextPath()%>/dashboard"class="nav-link"style="color:white;padding:10px;position:relative;top:-10px;right:20px"><b>Dash Board</b></a></li>
                  
                        <li><a href="<%=request.getContextPath()%>/usermaster?empname=<c:out value='${emp.empname}' />" class="nav-link"style="color:white;padding:10px;position:relative;top:-8px;right:20px"><b>User Master</b></a></li>
            
                          
            
                        <li><a href="<%=request.getContextPath()%>/Authorisationmaster?empname=<c:out value='${emp.empname}' />" class="nav-link"style="color:white;padding:10px;position:relative;top:-6px;right:20px"><b>Authorisation Master</b></a></li>
                  
                       
                        
                            <li><a href="<%=request.getContextPath()%>/req?empname=<c:out value='${emp.empname}' />" class="nav-link"style="color:white;padding:10px;position:relative;top:-4px;right:20px"><b>Requirement(s)</b></a></li> 
                             <li><a href="<%=request.getContextPath()%>/filterform?empname=<c:out value='${emp.empname}' />" class="nav-link"style="color:white;padding:10px;position:relative;top:-2px;right:20px"><b>Report</b></a></li> 
                           <li><a href="<%=request.getContextPath()%>/loginpage" class="nav-link"style="color:white;padding:10px;position:relative;top:0px;right:20px"><b>Logout</b></a></li>
   <li><a  class="nav-link"style="position:relative;top:-325px;right:-150px;color:white" onclick="closeNav() "><b>X</b></a></li>
   
   
       
                        
                           </ul>
                    </div>
                    </div>
           
      
        
         
             
      </header>     
        </c:if>   
  
                 
           
       
        
           
            <c:if test="${emp.user=='User'}">
<header>
             
                 <!--    <div class="vertical-menu">
                        <a  class="navbar-brand"style="color:white"> Requirement Tracking System </a>
                    </div> -->
<div class="top" >
			
		<a href="#" class="menu_icon"><i  onclick="openNav()"class="material_icons"><div style="width:35px;height:5px;background-color:black;color:#7fdbd4;margin:6px 0"></div> <div style="width:35px;color:#7fdbd4;height:5px;background-color:black;margin:6px 0"></div><div style="width:35px;color:#7fdbd4;height:5px;background-color:black;margin:6px 0"></div></i></a>
		</div>
                    <div class="wrapper" style="display:flex;
	position:relative;">
                    <div id="mySidenav" class="sidebar" style="position:fixed;
	width:0px;
	height:100%;
	background:#7fdbd4;
	position:fixed;
	left:0px;
	padding:30px 0;">
                    <ul style="list-style-type:none">
                   
                        
                
                  
        
                  
                       
                        <li> <a class="nav-link"style="color:white;padding:10px;position:relative;top:-20px;right:30px"><b>${emp.empname}</b></a></li>
                           <li><a href="<%=request.getContextPath()%>/dashboard?empname=<c:out value='${emp.empname}' />"class="nav-link"style="color:white;padding:10px;position:relative;top:0px;right:20px"><b>Dash Board</b></a></li>
                  
                            <li><a href="<%=request.getContextPath()%>/req?empname=<c:out value='${emp.empname}' />" class="nav-link"style="color:white;padding:10px;position:relative;top:2px;right:20px"><b>Requirement(s)</b></a></li> 
                      
                                                        <li><a href="<%=request.getContextPath()%>/filterform?empname=<c:out value='${emp.empname}' />" class="nav-link"style="color:white;padding:10px;position:relative;top:4px;right:20px"><b>Report</b></a></li> 
                                                             <li><a href="<%=request.getContextPath()%>/loginpage" class="nav-link"style="color:white;padding:10px;position:relative;top:8px;right:20px"><b>Logout</b></a></li>
 
      <li><a  class="nav-link"style="position:relative;top:-245px;right:-150px;color:white" onclick="closeNav() "><b>X</b></a></li>
   
       
                        
                           </ul>
                    </div>
                    </div>
            </c:if>
           <br>

            <div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">
                    <h5 style="position:relative;top:-40px"class="text-center"><b>Dashboard</b> </h5>
                    <hr style="position:relative;top:-40px">
<body>

           <header>
<!-- <div class="vertical-menu">
<a class="navbar-brand"style="color:white"> Requirement Tracking System
</a>
</div> -->

<!--
<div class="top" >
<a href="#" class="menu_icon"><i onclick="openNav()"class="material_icons"><div style="width:35px;height:5px;background-color:black;color:#7fdbd4;margin:6px 0"></div>
<div style="width:35px;color:#7fdbd4;height:5px;background-color:black;margin:6px 0"></div>
<div style="width:35px;color:#7fdbd4;height:5px;background-color:black;margin:6px 0"></div></i></a>
</div>
<div class="wrapper" style="display:flex; position:relative;">
<div id="mySidenav" class="sidebar" style="position:fixed;
width:0px;
height:100%;
background:#7fdbd4;
position:fixed;
left:0px;
padding:30px 0;">

<ul style="list-style-type:none">

<li> <a class="nav-link"style="color:white;padding:10px;position:relative;top:-20px;right:30px"><b>${emp.empname}</b></a></li>
<li><a href="<%=request.getContextPath()%>/dashboard?empname=<c:out value = '${emp.empname}'/>"
class="nav-link"style="color:white;padding:10px;position:relative;top:110px;right:20px"><b>Dashboard</b></a></li>
<li><a href="<%=request.getContextPath()%>/usermaster?empname=<c:out
value='${emp.empname}'
/>"class="nav-link"style="color:white;padding:10px;position:relative;top:50px;right:20px"><b>User Master</b></a></li>
<li><a
href="<%=request.getContextPath()%>/Authorisationmaster?empname=<c:out
value='${emp.empname}'
/>"class="nav-link"style="color:white;padding:10px;position:relative;top:70px;right:20px"><b>Authorisation Master</b></a></li>
<li><a href="<%=request.getContextPath()%>/req?empname=<c:out
value='${emp.empname}' />"
class="nav-link"style="color:white;padding:10px;position:relative;top:90px;right:20px"><b>Requirement(s)</b></a></li>
<li><a href="<%=request.getContextPath()%>/loginpage"
class="nav-link"style="color:white;padding:10px;position:relative;top:110px;right:20px"><b>Logout</b></a></li>

<li><a class="nav-link"style="position:relative;top:-210px;right:-150px;color:white"
onclick="closeNav() "><b>X</b></a></li>
           
                       
                    </ul>
                    </div>
                    </div>
               
            </header>
            -->


<!--
<input type="button" class="btn btn-success"value="New/Open/Reopen" onclick="history.back(-1)"style=" font-weight:bold;font-family:Verdana;background-color:#D6EAF8;border-color:white;border-width:2px;color:white;position:relative;top:40px;width:200px;height:130px;position:relative;top:2px;left:300px;border-radius:5px">
<input type="button" class="btn btn-success"value="Reverted" onclick="history.back(-1)"style=" font-weight:bold;font-family:Verdana;background-color:#F5CBA7;border-color:white;border-width:2px;color:white;position:relative;top:40px;width:200px;height:130px;position:relative;top:2px;left:300px;border-radius:5px">
<input type="button" class="btn btn-success"value="Accepted" onclick="history.back(-1)"style=" font-weight:bold;font-family:Verdana;background-color:#76D7C4;border-color:white;border-width:2px;color:white;position:relative;top:40px;width:200px;height:130px;position:relative;top:2px;left:300px;border-radius:5px">
<input type="button" class="btn btn-success"value="Completed" onclick="history.back(-1)"style=" font-weight:bold;font-family:Verdana;background-color:#F7DC6F;border-color:white;border-width:2px;color:white;position:relative;top:40px;width:200px;height:130px;position:relative;top:2px;left:300px;border-radius:5px">

<form method = post action = "http://localhost:2020/RequrementManagementSystem/dashboard2.jsp">
<input type="submit" class="btn btn-success"value="Archive" onclick="history.back(-1)"style=" font-weight:bold;font-family:Verdana;background-color:#CCD1D1;border-color:white;border-width:2px;color:white;position:relative;top:40px;width:200px;height:130px;position:relative;top:2px;left:300px;border-radius:5px">
</form>
<ul class = "navbar-nav">
-->

<a href = "<%=request.getContextPath()%>/newreq?empname=<c:out value='${emp.empname}' />" class = "nav-link" style=" font-weight:bold;font-family:Verdana;background-color:#54ECDA  ;border-color:white;border-width:2px;color:white;position:relative;top:40px;width:200px;height:130px;position:relative;top:-22px;left:200px;border-radius:5px">New/Open/Reopen</a>
<a href = "<%=request.getContextPath()%>/revertedreq?empname=<c:out value='${emp.empname}' />" class = "nav-link" style=" font-weight:bold;font-family:Verdana;background-color:#F1450E ;border-color:white;border-width:2px;color:white;position:relative;top:40px;width:200px;height:130px;position:relative;top:-152px;left:500px;border-radius:5px"><center>Reverted</center></a>
<a href = "<%=request.getContextPath()%>/acceptedreq?empname=<c:out value='${emp.empname}' />" class = "nav-link" style=" font-weight:bold;font-family:Verdana;background-color:#0B6B9B;border-color:white;border-width:2px;color:white;position:relative;top:40px;width:200px;height:130px;position:relative;top:-280px;left:800px;border-radius:5px"><center>Accepted</center></a>
<a href = "<%=request.getContextPath()%>/completedreq?empname=<c:out value='${emp.empname}' />" class = "nav-link" style = "font-weight:bold;font-family:Verdana;background-color:#066351;border-color:white;border-width:2px;color:white;position:relative;top:40px;width:200px;height:130px;position:relative;top:-228px;left:360px;border-radius:5px"><center>Completed</center></a>
<a href = "<%=request.getContextPath()%>/archivedreq?empname=<c:out value='${emp.empname}' />" class = "nav-link" style=" font-weight:bold;font-family:Verdana;background-color:#6E8E83 ;border-color:white;border-width:2px;color:white;position:relative;top:40px;width:200px;height:130px;position:relative;top:-358px;left:650px;border-radius:5px"><center>Archived</center></a>
</ul>
</body>
 <script>
        
        function openNav() {
        	  document.getElementById("mySidenav").style.width = "250px";
        	}

        	/* Set the width of the side navigation to 0 */
        	function closeNav() {
        	  document.getElementById("mySidenav").style.width = "0";
        	}
        </script>

</html>