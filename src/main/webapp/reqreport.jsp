<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.List" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
   
       <html>

      <head> <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
      <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
               <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
           <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>
       

         
                  <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #7fdbd4;width:1500px">
                    <div>
                        <a  class="navbar-brand"style="color:white;font:verdana;font-size:25px"> <b>Requirement Tracking System</b></a>
                               
                    </div>
<a href="<%=request.getContextPath()%>/dashboard?empname=<c:out value='${emp.empname}' />" class="btn" id="myButton" style="color:white;position:relative;bottom:5px;left:800px;  padding: 12px 16px;
  font-size: 25px;
  cursor: pointer"><i class="fa fa-home"></i></a>
 <div>
                       
                               <a class="navbar-brand"style="color:white;position:relative;bottom:5px;left:800px"><b>${emp.empname}</b></a>
                    </div>
                     <a href="<%=request.getContextPath()%>/loginpage" class="btn" id="myButton2" style="color:white;position:relative;bottom:5px;left:800px;  padding: 12px 16px;
  font-size: 25px;
  cursor: pointer">
 
<span class="fa-stack fa-1x" style="font-size:15px">
  <i class="fa fa-circle-o fa-stack-2x"></i>
  <i class="fa fa-power-off fa-stack-1x "></i>
  </span>
  </a>
  </nav>
     

        <body>
<font face="Verdana">
         <form action="exporttoexcel?status2=<c:out value='${status2}'/>&status3=<c:out value='${status3}'/>&status4=<c:out value='${status4}'/>&status5=<c:out value='${status5}'/>&status6=<c:out value='${status6}'/>&status7=<c:out value='${status7}'/>&status8=<c:out value='${status8}'/>&status9=<c:out value='${status9}'/>&status10=<c:out value='${status10}'/>&status11=<c:out value='${status11}'/>&date=<c:out value='${date}'/>" method="post">      
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
                      
                                                        <li><a href="<%=request.getContextPath()%>/filterform?empname=<c:out value='${emp.empname}' />" class="nav-link"style="color:white;padding:10px;position:relative;top:4px;right:20px"><b>Requirement Report</b></a></li> 
                                                             <li><a href="<%=request.getContextPath()%>/loginpage" class="nav-link"style="color:white;padding:10px;position:relative;top:8px;right:20px"><b>Logout</b></a></li>
 
      <li><a  class="nav-link"style="position:relative;top:-245px;right:-150px;color:white" onclick="closeNav() "><b>X</b></a></li>
   
       
                        
                           </ul>
                    </div>
                    </div>
            </c:if>
                     <a href="<%=request.getContextPath()%>/reqform?empname=<c:out value='${emp.empname}' />"class="btn btn-success"style="background-color:#7fdbd4;border-color:white;border-radius:5px;position:relative;left:285px;top:0px"><b>New</b></a>
            <br>

            <div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">
                    <h5 style="position:relative;top:-40px"class="text-center"><b>Requirement(s)</b> </h5>
                    <hr style="position:relative;top:-40px">
                   <label style="color:grey;font-size:12px;position:relative;left:900px;top:-80px"><i>Total No of Records:</i></label>            
 <label style="position:relative;font-size:12px;left:910px;top:-80px">${fn:length(listreq)}</label>
                   
                    <fieldset>
                                 <button class="btn btn-success"value="Export to Excel" style=" font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;hieght:38px;position:relative;top:-124px;left:860px;border-radius:5px"><i class="fa fa-file-excel-o"></i></button>
             
                   
                     <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;hieght:38px;position:relative;top:-124px;left:700px;border-radius:5px">
           </fieldset>
                    <table id="user" class="table table-bordered"style="width:1200px;position:relative;left:190px;top:-120px">
                        <thead>
                            <tr style="font-size:14px">
                        <!--     <th >ID</th> -->
                        <th> Req No</th>
                                <th style="width:100px;">Req By</th>
                                <th>Req Date</th>
                                <th>Req For</th>
                                  <th style="width:300px;">Req Details</th>
                                <th>Authperson</th>
                                <th>Accepted Date</th>
                                 <th>Contact Person</th>
                                  <th>Completed Date</th>
                                  <th>Status</th>
                             
                               
                            </tr>
                        </thead>
                        <tbody>
                            <!--   for (Todo todo: todos) {  -->
                            <c:forEach var="req" items="${listreq}">

                                <tr style="font-size:12px">
                             
                                     <td>
                                     
                                         <a href="editreq?id=<c:out value='${req.id}'/>&empname=<c:out value='${emp.empname}'/>&username=<c:out value='${req.reqdetails}'/>"><c:out value="Req000${req.id}" /></a> &nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                   
                                     <td>
                                         <c:out value="${req.reqby}" /></a>
                                    </td>
                                     
                                   
                              <td>
                              <c:out value="${req.reqdate}"/>
                              </td>
                                       
                              <td>
                                        <c:out value="${req.reqfor}" />
                                        </td>
                                   
                                         <td>
                                        <c:out value="${req.authperson}" />
                                        </td>
                                       
                                        <td>
                                        <c:out value="${req.reqdetails}" />
                                        </td>
                                                <td>
                                        <c:out value="${req.accdate}" />
                                        </td>
                                                <td>
                                        <c:out value="${req.assnto}" />
                                        </td>
                                                <td>
                                        <c:out value="${req.assntodate}" />
                                        </td>
                                         <td>
                                        <c:out value="${req.status}" />
                                        </td>
                             
                                </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>

                    </table>





                </div>
            </div>
            </font>
            </form>
           
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