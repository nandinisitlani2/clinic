<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   
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
<a href="<%=request.getContextPath()%>/dashboard?empname=<c:out value='${emp.empname}' />" class="btn" id="myButton" style="color:white;position:relative;bottom:5px;left:580px;  padding: 12px 16px;
  font-size: 25px;
  cursor: pointer"><i class="fa fa-home"></i></a>

                       
                               <a class="navbar-brand"style="color:white;position:relative;bottom:2px;left:580px"><b>${emp.empname}</b></a>
                    </div>
                     <a href="<%=request.getContextPath()%>/loginpage" class="btn" id="myButton2" style="color:white;position:relative;bottom:5px;left:580px;  padding: 12px 16px;
  font-size: 25px;
  cursor: pointer">
 
<span class="fa-stack fa-1x" style="font-size:15px">
  <i class="fa fa-circle-o fa-stack-2x"></i>
  <i class="fa fa-power-off fa-stack-1x "></i>
  </span>
  </a>
  </nav>
      
</div>
       <body onload="addDate();addDate2()">
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
                            <li><a href="<%=request.getContextPath()%>/dashboard?empname=<c:out value='${emp.empname}' />"class="nav-link"style="color:white;padding:10px;position:relative;top:-10px;right:20px"><b>Dash Board</b></a></li>
                  
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
                      
                                                        <li><a href="<%=request.getContextPath()%>/filterform?empname=<c:out value='${emp.empname}' />" class="nav-link"style="color:white;padding:10px;position:relative;top:4px;right:20px"><b> Report</b></a></li> 
                                                             <li><a href="<%=request.getContextPath()%>/loginpage" class="nav-link"style="color:white;padding:10px;position:relative;top:8px;right:20px"><b>Logout</b></a></li>
 
      <li><a  class="nav-link"style="position:relative;top:-245px;right:-150px;color:white" onclick="closeNav() "><b>X</b></a></li>
   
       
                        
                           </ul>
                    </div>
                    </div>
            </c:if>
            <br>
            <div class="container col-md-5" style="width:400px;position:relative;right:60px;border-width:5px">
                <div class="shadow-lg p-3 mb-5 bg-white rounded" style="position:relative;bottom:40px;width:600px;border-width:5px">
                    <div class="card-body" style="width:600px;">
                    <c:if test="${req!= null}">
                            <form action="updatereq?empname=<c:out value='${emp.empname}' />" method="post">
                        </c:if>
                   <c:if test="${req==null}">
                            <form action="submitreqform?empname=<c:out value='${emp.empname}' />" method="post">
                        </c:if>

               
                        <c:if test="${req!= null}">
                            <input type="hidden" name="id" value="<c:out value='${req.id}' />">
                            </c:if>
                       
                     
                       
           
                 
                           
                        <caption>
                             <h2 style="font-size:20px;position:relative;left:180px;bottom:20px">
                         
                             
                                   <b> Appointment Form</b>
                           
                            </h2>
                            <h5>
                           
                                <fieldset class="form-group"style="font-size:14px;position:relative;bottom:50px">
                            <label style="color:grey"><b> Date</b></label> <input readonly="readonly"style="border:none;position:relative;font-size:10pt;left:20px;" type="text" id="datetext"class="normal" size="10" maxlength="20" class="form-control" name="reqdate" required="required">
                        </fieldset>
                          <c:if test="${req!= null}">
                              <fieldset class="form-group"style="font-size:14px;position:relative;bottom:90px;left:460px">
                           <input readonly="readonly"style="border:none;position:relative;font-size:10pt;left:20px;" type="text" id="datetext"class="normal" size="8" maxlength="20" class="form-control" name="id"value="<c:out value='Req000${req.id}' />"  required="required">
                        </fieldset>
                        </c:if>
                            </h5>
                       
                        </caption>
             

                         <c:if test="${req==null}">
                     <fieldset class="form-group"style="font-size:14px;position:relative;bottom:40px">
                            <label style="color:grey;"><b>Appointment By</b></label> <input style="font-family:verdana;font-size:10pt;height:26px;position:relative;left:40px;" readonly="readonly"type="text" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="20" style="text-transform:uppercase "value="<c:out value='${emp.empname}' />" class="form-control" name="reqby" required="required">
                        </fieldset>
                   
                         

             
                     



<fieldset class="form-group"style="font-size:14px;position:relative;bottom:40px">
    <label style="color:grey;"><b> Appointment For</b><label>
     
       <select style="position:relative;left:40px;font-size:10pt;height:26px;"id="reqFor"required ="required" name="reqfor"value="<c:out value='${req.reqfor}' />"  onchange="changeFunc(this)"  >
       
         <option value=""selected="selected" >Select</option>
       <c:forEach var="auth" items="${auth.getAuthList()}">
       
       <option value="${auth.reqFor}/${auth.username}" >${auth.reqFor}</option>
       
       
       </c:forEach>
       
        </select>
 
</fieldset>

<fieldset class="form-group"style="font-size:14px;position:relative;bottom:50px">
                            <label style="color:grey"><b>Doctor Name</b></label> <input required ="required"  readonly="readonly"id="authperson"type="text" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="100" style="font-size:10pt;text-transform:uppercase;position:relative;left:20px;height:26px;"value="<c:out value='${req.authperson}' />" class="form-control" name="authperson" required="required">
                            </fieldset>
                <fieldset class="form-group"style="font-size:14px;position:relative;bottom:50px" >
 <label style="color:grey; vertical-align:middle"><b>AppointmentDetails</b></label>
   
             <textarea name="reqdetails" rows="6" cols="40" required ="required" style= "vertical-align:middle;position:relative;left:-80px;font-size:10pt"> <c:out value='${req.reqdetails}' /> </textarea>
                  
             </fieldset>
                     
                       <fieldset class="form-group"style="font-size:14px;position:relative;bottom:65px">
                            <label style="color:grey"><b>Status</b></label> <input type="text"readonly="readonly"class="normal" size="20" maxlength="20" style="height:26px;font-size:10pt;position:relative;left:127px "value="New" class="form-control" name="status" required="required">
                        </fieldset>
                         <button type="submit" class="btn btn-success"onclick="FbotonOn2()"style="font-family:Verdana;background-color:#7fdbd4;position:relative;top:2px;left:220px;border-color:white;border-radius:5px"><b>Save</b></button>
                       <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;hieght:38px;position:relative;top:2px;left:220px;border-radius:5px">
           
                        </c:if>
                     
       
     <c:if test="${req!=null}">
                        <fieldset class="form-group"style="font-size:14px;position:relative;bottom:70px">
                            <label style="color:grey"><b>Requirement By</b></label> <input style="height:26px;position:relative;left:65px;font-size:10pt" readonly="readonly"type="text" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="20" name="reqby"style="text-transform:uppercase "value="<c:out value='${req.reqby}' />" class="form-control" required="required">
                        </fieldset>
                   
                         

                  <fieldset class="form-group"style="font-size:14px;position:relative;bottom:70px">
                            <label style="color:grey"><b>Requirement Date</b></label> <input readonly="readonly"style="height:26px;position:relative;left:48px;font-size:10pt" type="text" class="normal" size="20" maxlength="20" class="form-control"value="<c:out value='${req.reqdate}' />" name="reqdate" required="required">
                        </fieldset>
                     


   <fieldset class="form-group"style="font-size:14px;position:relative;bottom:70px">
                            <label style="color:grey"><b>Requirement For</b></label> <input style=height:26px;position:relative;left:57px;font-size:10pt" readonly="readonly"type="text" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="20" name="reqfor"style="text-transform:uppercase "value="<c:out value='${req.reqfor}' />" class="form-control" required="required">
                        </fieldset>

   <fieldset class="form-group"style="font-size:14px;position:relative;bottom:70px">
                            <label style="color:grey"><b>Authorized Person</b></label> <input  readonly="readonly"id="authperson2"type="text" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="100" style="height:26px;text-transform:uppercase;position:relative;left:45px;font-size:10pt "value="<c:out value='${req.authperson}' />" class="form-control" name="authperson" required="required">
                        </fieldset>
           <fieldset class="form-group"style="font-size:14px;position:relative;bottom:70px" >
 <label style="color:grey; vertical-align:middle"><b>Requirement Details</b></label>
   
             <textarea name="reqdetails" rows="6" cols="40" required ="required" value="<c:out value='${req.reqdetails}' />" style= "vertical-align:middle;position:relative;left:-60px;font-size:10pt"> <c:out value='${req.reqdetails}' /> </textarea>
                  
             </fieldset>
                    
          
                        </c:if>
                     
                          <c:if test="${emp.empname==req.reqby}">
                            <c:if test="${req.status=='New'}">
                         <fieldset class="form-group"style="font-size:14px;position:relative;bottom:40px">
                            <label style="color:grey"><b>Status</b></label>
                             <select style="height:26px;position:relative;left:141px;width:80px;font-size:10pt" name="status"value="<c:out value='${req.status}' />"onchange="if(this.value=='Cancelled')
                             {
                              userselect11.style.visibility='visible'
                             }
                        
                          
                             else
                             {
                               userselect11.style.visibility='hidden'
                             };" >
       
       
   
       
       <option value="New">New</option>
       
       <option value="Cancelled">Cancel</option>  
 
       
        </select>
                        </fieldset>
                        </c:if>
                                                      <c:if test="${req.status=='Reopened'}">
                         <fieldset class="form-group"style="font-size:14px;position:relative;bottom:70px">
                            <label style="color:grey"><b>Status</b></label>
                             <select style="position:relative;left:141px;width:80px;font-size:10pt" name="status"value="<c:out value='${req.status}' />"onchange="if(this.value=='Cancelled')
                             {
                              userselect11.style.visibility='visible'
                             }
                        
                          
                             else
                             {
                               userselect11.style.visibility='hidden'
                             };" >
       
       
   
       
       <option value="Reopened">Reopen</option>
       
       <option value="Cancelled">Cancel</option>  
 
       
        </select>
                        </fieldset>
                        </c:if>
                        <c:if test="${req.status=='Open'}">
                         <fieldset class="form-group"style="font-size:14px;position:relative;bottom:70px">
                            <label style="color:grey"><b>Status</b></label>
                             <select style="height:26px;position:relative;left:141px;width:80px;font-size:10pt" name="status"value="<c:out value='${req.status}' />"onchange="if(this.value=='Cancelled')
                             {
                              userselect11.style.visibility='visible'
                             }
                        
                          
                             else
                             {
                               userselect11.style.visibility='hidden'
                             };" >
       
       
   
       
       <option value="Open">Open</option>
       
       <option value="Cancelled">Cancel</option>  
 
       
        </select>
                        </fieldset>
                        </c:if>
                                            <c:if test="${req.status=='Reverted'}">
               
             <fieldset class="form-group"style="font-size:14px;position:relative;bottom:70px">
                            <label style="color:grey"><b>Status</b></label>
                             <select style="height:26px;position:relative;left:141px;width:80px;font-size:10pt" name="status"value="<c:out value='${req.status}' />"onchange="if(this.value=='Open')
                             {
                              userselect12.style.visibility='visible'
                             }
                        
                          
                             else
                             {
                               userselect12.style.visibility='hidden'
                             };">
       
       
   
          <option value="<c:out value='${req.status}' />" selected="selected">${req.status}</option>
       <option value="Open">Open</option>
       

 
       
        </select>
                        </fieldset>
                         
                               <fieldset  style="font-size:14px;position:relative;bottom:70px">
                         <label style="color:grey"><b>Auth Person's Remarks</b><label>
                        <input type="textbox" readonly="readonly"  name="authpersonremarks"value="<c:out value='${req.authpersonremarks}' />"style="font-size:10pt;position:relative;left:20px"/>
                        </fieldset>
                                <fieldset  style=";font-size:14px;position:relative;left:0px;bottom:70px">
                         <label style="color:grey"><b> Contact Person Remarks</b><label>
                        <input type="text" readonly="readonly" name="assnfromremarks"value="<c:out value='${req.assnfromremarks}' />"size="40"style="font-size:10pt;position:relative;left:10px"/>
                        </fieldset>
                       </c:if>
          <%--     <fieldset  style="font-size:14px">
                         <label style="color:grey"><b> Assn From Remarks</b><label>
                        <input type="textbox"  name="assnfromremarks"value="<c:out value='${req.assnfromremarks}' />" font-size:10pt"/>
                        </fieldset> --%>
                     
                    
                              <c:if test="${req.status=='Accepted'}">
                           <fieldset class="form-group"style="font-size:14px;position:relative;bottom:70px">
                            <label style="color:grey"><b>Status</b></label> <input type="text"readonly="readonly" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="20" style="height:26px;font-size:10pt;text-transform:uppercase;position:relative;left:140px;font-size:10pt" value="<c:out value='${req.status}' />" class="form-control" name="status" required="required">
                        </fieldset>
                                 <fieldset class="form-group"id="assnto"style="font-size:14px;position:relative;bottom:40px">
                            <label style="color:grey"><b>Assigned To</b></label> <input type="text"readonly="readonly" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="100" style="height:26px;font-size:10pt;text-transform:uppercase;position:relative;left:95px "value="<c:out value='${req.assnto}' />" class="form-control" name="assnto" required="required">
                        </fieldset>
            <fieldset class="form-group" style="font-size:14px;position:relative;bottom:70px">
                            <label style="color:grey"> <b>Accepted Date</b></label> <input readonly="readonly"style="position:relative;left:76px;font-size:10pt" type="text" class="normal" size="20" value="<c:out value='${req.accdate}' />"maxlength="20" class="form-control" name="accdate" required="required">
                        </fieldset>
                        </c:if>
                                 <c:if test="${req.status=='Completed'}">
                       
                                 <fieldset class="form-group"style="font-size:14px;position:relative;bottom:70px">
                            <label style="color:grey"><b>Assigned From</b></label> <input type="text"readonly="readonly" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="100" style="height:26px;font-size:10pt;text-transform:uppercase;position:relative;left:70px "value="<c:out value='${req.assnfrom}' />" class="form-control" name="assnfrom" required="required">
                        </fieldset>
            <fieldset class="form-group" style="font-size:14px;position:relative;bottom:70px">
                            <label style="color:grey"> <b>Completed Date</b></label> <input readonly="readonly"style="height:26px;position:relative;left:58px;font-size:10pt" type="text" class="normal" size="20" value="<c:out value='${req.assntodate}' />"maxlength="20" class="form-control" name="assntodate" required="required">
                        </fieldset>
                          <fieldset class="form-group" style="font-size:14px;position:relative;bottom:70px">
                            <label style="color:grey"> <b>Assigned To</b></label> <input readonly="readonly"style="height:26px;position:relative;left:92px;font-size:10pt" type="text" class="normal" size="20" value="<c:out value='${req.reqby}' />"maxlength="20" class="form-control" name="accdate" required="required">
                        </fieldset>
                        
                        </c:if>
                             <c:if test="${req.status=='Cancelled'}">
                        <fieldset class="form-group"style="font-size:14px;position:relative;bottom:70px">
                            <label style="color:grey"><b>Status</b></label> <input type="text"readonly="readonly" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="20" style="height:26px;font-size:10pt;text-transform:uppercase;position:relative;left:140px;font-size:10pt" value="<c:out value='${req.status}' />" class="form-control" name="status" required="required">
                        </fieldset>
                        </c:if>
                                   <c:if test="${req.status=='Closed'}">
                        <fieldset class="form-group"style="font-size:14px;visibility:visible;position:relative;bottom:70px">
                            <label style="color:grey"><b>Status</b></label> <input type="text"readonly="readonly" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="20" style="height:26px;font-size:10pt;text-transform:uppercase;position:relative;left:140px;font-size:10pt" value="<c:out value='${req.status}' />" class="form-control" name="status" required="required">
  </fieldset>
                            <fieldset  style=";font-size:14px;position:relative;left:0px;bottom:70px">
                         <label style="color:grey"><b> Contact Person Remarks</b><label>
                        <input type="text"  name="assnfromremarks"value="<c:out value='${req.assnfromremarks}' />"size="40"style="font-size:10pt;position:relative;left:10px"/>
                        </fieldset>
                               <fieldset  style="font-size:14px;position:relative;bottom:70px">
                         <label style="color:grey"><b>Auth Person's Remarks</b><label>
                        <input type="textbox"  name="authpersonremarks"value="<c:out value='${req.authpersonremarks}' />" style="position:relative;left:20px;font-size:10pt"/>
                        </fieldset>
                        </fieldset>
                          </c:if>
                             <c:if test="${req.status=='Rejected'}">
                            <fieldset class="form-group"style="font-size:14px;position:relative;bottom:70px">
                            <label style="color:grey"><b>Status</b></label> <input type="text"readonly="readonly" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="20" style="height:26px;font-size:10pt;text-transform:uppercase;position:relative;left:119px;font-size:10pt" value="<c:out value='${req.status}' />" class="form-control" name="status" required="required">
                        </fieldset>
                               <fieldset  style="font-size:14px;position:relative;bottom:70px">
                         <label style="color:grey"><b> Auth Person's Remarks</b><label>
                        <input type="textbox"  name="authpersonremarks"value="<c:out value='${req.authpersonremarks}' />" font-size:10pt"/>
                        </fieldset>
                                <fieldset  style=";font-size:14px;position:relative;left:4px;bottom:210px">
                         <label style="color:grey"><b> Contact Person Remarks</b><label>
                        <input type="text"  name="assnfromremarks"value="<c:out value='${req.assnfromremarks}' />"size="40"style="font-size:10pt;position:relative;left:106px"/>
                        </fieldset>
                          </c:if>
                      <c:if test="${req.status=='Completed'}">
                         <fieldset class="form-group"style="font-size:14px;position:relative;bottom:70px">
                            <label style="color:grey"><b>Status</b></label>
                             <select style="height:26px;length:20px;position:relative;left:138px;width:120px;font-size:10pt" maxlength="20"  name="status"value="<c:out value='${req.status}' />"onchange="if(this.value=='Reopened')
                             {
                              userselect10.style.visibility='visible'
                             }
                             else if(this.value=='Closed')
                             {
                               userselect10.style.visibility='visible' 
                             }
                          
                             else
                             {
                               userselect10.style.visibility='hidden'
                             };"  >
       
       
   
        <option selected="selected">Completed</option>
       <option value="Closed">Close</option>
       
       <option value="Reopened">Reopen</option>  
 
       
        </select>
                        </fieldset>
                        <fieldset  style=";font-size:14px;position:relative;left:0px;bottom:70px">
                         <label style="color:grey"><b> Contact Person Remarks</b><label>
                        <input type="text"  name="assnfromremarks"value="<c:out value='${req.assnfromremarks}' />"size="40"style="font-size:10pt;position:relative;left:10px"/>
                        </fieldset>
                               <fieldset  style="font-size:14px;position:relative;bottom:70px">
                         <label style="color:grey"><b>Auth Person's Remarks</b><label>
                        <input type="textbox"  name="authpersonremarks"value="<c:out value='${req.authpersonremarks}' />" style="font-size:10pt;position:relative;left:20px"/>
                        </fieldset>
                        </c:if>
                         
                        </c:if>
                     
                         <c:if test="${emp.empname==req.assnto}">
                                               </fieldset>
    <fieldset class="form-group"style="font-size:14px;position:relative;bottom:75px;right:135px">
                            <label style="color:grey"><b>Contact Person</b></label> <input type="text"readonly="readonly" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="100" style="height:26px;font-size:10pt;text-transform:uppercase;position:relative;left:70px" value="<c:out value='${req.assnto}' />" class="form-control" name="assnto" required="required">
                        </fieldset>
                           <c:if test="${req.status=='Accepted'}">
                                <fieldset class="form-group" style="font-size:14px;position:relative;bottom:70px;">
                            <label style="color:grey"> <b>Accepted Date</b></label> <input readonly="readonly"style="position:relative;left:82px;font-size:10pt;height:26px;" type="text" id="datetext"class="normal" size="20" value="<c:out value='${req.accdate}' />"maxlength="20" class="form-control" name="accdate" required="required">
                        </fieldset>
                        <fieldset class="form-group"style="font-size:14px;position:relative;bottom:70px">
                            <label style="color:grey"> <b>Status</b></label>
                         <select style="height:26px;position:relative;left:155px;font-size:10pt"onchange="if(this.value=='Completed')
                             {userselect13.style.visibility='visible'
                             userselect9.style.visibility='visible'
                                 userselect5.style.visibility='visible'
                                     userselect6.style.visibility='visible'
                                       userselect7.style.visibility='visible'
                                       addDate3();
                             }
                             else if(this.value=='Rejected')
                             { userselect13.style.visibility='visible'
                                userselect9.style.visibility='visible'
                                   userselect5.style.visibility='hidden'
                                     userselect6.style.visibility='hidden'
                                       userselect7.style.visibility='hidden'
                             }
                             else if(this.value=='Reverted')
                             {userselect13.style.visibility='visible'
                             
                               userselect9.style.visibility='visible'
                                             userselect5.style.visibility='hidden'
                                     userselect6.style.visibility='hidden'
                                       userselect7.style.visibility='hidden'
                             }
                             else
                             {
                               userselect9.style.visibility='hidden'
                               userselect13.style.visibility='hidden'
                             };"name="status" value="<c:out value='${req.status}' />"style="position:relative;left:65px;font-size:10pt" >
       
        <option value="<c:out value='${req.status}' />" selected="selected">${req.status}</option>
   
   
        <option value="Completed">Completed</option>
      
        <option value="Rejected">Reject</option>
 
             <option value="Reverted">Revert</option>
        </select>
                        </fieldset>
                     
                             <c:if test="${req.status=='Reverted'}">
                                 <fieldset class="form-group"style="height:26px;font-size:14px;position:relative;bottom:10px">
                            <label style="color:grey"><b>Status</b></label> <input type="text"readonly="readonly" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="20" style="font-size:10pt;text-transform:uppercase;position:relative;left:150px;font-size:10pt" value="<c:out value='${req.status}' />" class="form-control" name="status" required="required">
                        </fieldset>
                             </c:if>
                                 </c:if>
                             <c:if test="${req.status=='Rejected'}">
                                 <fieldset class="form-group"style="height:26px;font-size:14px;position:relative;bottom:60px">
                            <label style="color:grey"><b>Status</b></label> <input type="text"readonly="readonly" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="20" style="font-size:10pt;text-transform:uppercase;position:relative;left:150px;font-size:10pt" value="<c:out value='${req.status}' />" class="form-control" name="status" required="required">
                        </fieldset>
                             </c:if>
                                    <c:if test="${req.status=='Reverted'}">
                                 <fieldset class="form-group"style="height:26px;font-size:14px;position:relative;bottom:60px">
                            <label style="color:grey"><b>Status</b></label> <input type="text"readonly="readonly" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="20" style="font-size:10pt;text-transform:uppercase;position:relative;left:145px;font-size:10pt" value="<c:out value='${req.status}' />" class="form-control" name="status" required="required">
                        </fieldset>
                             </c:if>
                       <%--             <c:if test="${req.status=='Open'}">
                                 <fieldset class="form-group"style="font-size:14px;position:relative;bottom:10px">
                            <label style="color:grey"><b>Status</b></label> <input type="text"readonly="readonly" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="20" style="font-size:10pt;text-transform:uppercase;position:relative;left:150px;font-size:10pt" value="<c:out value='${req.status}' />" class="form-control" name="status" required="required">
                        </fieldset> --%>
                         
                                        <c:if test="${req.status=='Reopened'}">
                                 <fieldset class="form-group"style="height:26px;font-size:14px;position:relative;bottom:10px">
                            <label style="color:grey"><b>Status</b></label> <input type="text"readonly="readonly" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="20" style="font-size:10pt;text-transform:uppercase;position:relative;left:150px;font-size:10pt" value="<c:out value='${req.status}' />" class="form-control" name="status" required="required">
                        </fieldset>
                             </c:if>
                              
                       
                      
                <fieldset class="form-group" id="input4"style="visibility:hidden;font-size:14px;position:relative;bottom:75px">
                            <label style="color:grey"> <b>Completed Date</b></label> <input readonly="readonly"style="height:26px;position:relative;left:72px;font-size:10pt" type="text" id="datetext3"class="normal" size="20" maxlength="20" class="form-control" name="assntodate" required="required">
                        </fieldset>
       
         
       
                         <fieldset class="form-group"id="input5"style="visibility:hidden;font-size:14px;position:relative;bottom:85px;right:135px">
                            <label style="color:grey"><b>Assigned From</b></label> <input type="text"readonly="readonly" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="100" style="height:26px;font-size:10pt;text-transform:uppercase;position:relative;left:75px" value="<c:out value='${req.assnto}' />" class="form-control" name="assnfrom" required="required">
  
</fieldset>
                         <fieldset class="form-group"id="input6"style="visibility:hidden;font-size:14px;position:relative;bottom:95px;right:136px">
                            <label style="color:grey"><b>Assigned to</b></label> <input type="text"readonly="readonly" onkeyup="this.value=this.value.toUpperCase();"class="normal"  maxlength="100" style="height:26px;font-size:10pt;text-transform:uppercase;position:relative;left:100px" value="<c:out value='${req.reqby}' />" class="form-control"  required="required">
                        </fieldset>
   <fieldset id="input7" style="visibility:hidden;font-size:14px;position:relative;left:4px;bottom:100px">
                         <label style="color:grey"><b> Contact Person Remarks</b><label>
                        <input type="text"  name="assnfromremarks"value="<c:out value='${req.assnfromremarks}' />"size="40"style="font-size:10pt;position:relative;left:30px"/>
                        </fieldset>
                     
<c:if test="${req.status=='Completed'}">
                        <fieldset class="form-group"style="height:26px;font-size:14px;position:relative;bottom:10px">
                            <label style="color:grey"><b>Status</b></label> <input type="text"readonly="readonly" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="20" style="font-size:10pt;text-transform:uppercase;position:relative;left:150px;font-size:10pt" value="<c:out value='${req.status}' />" class="form-control" name="status" required="required">
                       </fieldset>
                                 <fieldset class="form-group"id="assnto"style="font-size:14px">
                            <label style="color:grey"><b>Assigned From</b></label> <input type="text"readonly="readonly" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="100" style="height:26px;font-size:10pt;text-transform:uppercase;position:relative;left:100px "value="<c:out value='${req.assnfrom}' />" class="form-control" name="assnto" required="required">
                        </fieldset>
            <fieldset class="form-group" style="font-size:14px">
                            <label style="color:grey"> <b>Completed Date</b></label> <input readonly="readonly"style="height:26px;position:relative;left:92px;font-size:10pt" type="text" class="normal" size="20" value="<c:out value='${req.assntodate}' />"maxlength="20" class="form-control" name="accdate" required="required">
                        </fieldset>
                          <fieldset class="form-group" style="font-size:14px">
                            <label style="color:grey"> <b>Assigned To</b></label> <input readonly="readonly"style="height:26px;position:relative;left:92px;font-size:10pt" type="text" class="normal" size="20" value="<c:out value='${req.reqby}' />"maxlength="20" class="form-control" name="accdate" required="required">
                        </fieldset>
                        </c:if>
                        </c:if>
        
                         
                           <c:if test="${emp.empname==req.authperson}">
                               <c:if test="${req.status=='New'}">
                            <fieldset class="form-group"style="font-size:14px;visibility:visible;position:relative;left:10px;bottom:85px">
                            <label style="color:grey"> <b>Status</b><label>
                         <select style="height:26px;position:relative;left:125px;font-size:10pt" onchange="if(this.value=='Reverted')
                             {
                             userselect.style.visibility='visible',userselect2.style.visibility='visible', userselect3.style.visibility='hidden',userselect4.style.visibility='hidden'        ,userselect8.style.visibility='visible'

                             }
                             else if(this.value=='Accepted')
                             {
                             userselect3.style.visibility='visible'
                             userselect.style.visibility='hidden'
                             ,userselect2.style.visibility='hidden'
                             ,userselect4.style.visibility='visible'
                                     ,userselect8.style.visibility='visible'
                          
                             }
                               else if(this.value=='Rejected')
                             {
                         userselect.style.visibility='visible',userselect2.style.visibility='visible', userselect3.style.visibility='hidden',userselect4.style.visibility='hidden' ,userselect8.style.visibility='visible'
                            
                             }
                             
                             else
                             {
                             userselect.style.visibility='hidden',
                             userselect2.style.visibility='hidden',
                             userselect3.style.visibility='hidden',
                             userselect4.style.visibility='hidden',
                             userselect8.style.visibility='hidden'
                             };" name="status"value="<c:out value='${req.status}' />"  style="position:relative;left:70px;font-size:10pt" >
       
        <option value="<c:out value='${req.status}' />" selected="selected">${req.status}</option>
   
   
        <option value="Accepted">Accept</option>
       <option value="Reverted">Revert</option>
       
       <option value="Rejected">Reject</option>  
 
       
        </select>
                        </fieldset>
                        </c:if>
                        <c:if test="${req.status=='Reopened'}">
                            <fieldset class="form-group"style="font-size:14px;position:relative;bottom:50px">
                            <label style="color:grey"> <b>Status</b><label>
                         <select style="position:relative;left:125px;font-size:10pt" onchange="if(this.value=='Reverted')
                             {
                             userselect.style.visibility='visible',userselect2.style.visibility='visible', userselect3.style.visibility='hidden',userselect4.style.visibility='hidden',userselect8.style.visibility='visible',userselect9.style.visibility='visible'
                             }
                             else if(this.value=='Accepted')
                             {
                             userselect3.style.visibility='visible'
                             userselect.style.visibility='hidden'
                             ,userselect2.style.visibility='hidden'
                             ,userselect4.style.visibility='visible'
                             ,userselect8.style.visibility='visible'
                             ,userselect9.style.visibility='visible'
                             }
                               else if(this.value=='Rejected')
                             {
                         userselect.style.visibility='visible',userselect2.style.visibility='visible', userselect3.style.visibility='hidden',userselect4.style.visibility='hidden',userselect8.style.visibility='visible',userselect9.style.visibility='visible'
                             }
                             else
                             {
                             userselect.style.visibility='hidden',userselect2.style.visibility='hidden',userselect3.style.visibility='hidden',userselect4.style.visibility='hidden',
                             userselect9.style.visibility='hidden'
                             };" name="status"value="<c:out value='${req.status}' />"  style="height:26px;position:relative;left:70px;font-size:10pt" >
       
        <option value="<c:out value='${req.status}' />" selected="selected">${req.status}</option>
   
   
        <option value="Accepted">Accept</option>
       <option value="Reverted">Revert</option>
       
       <option value="Rejected">Reject</option>  
 
       
        </select>
                        </fieldset>
                        </c:if>
                                             <c:if test="${req.status=='Open'}">
                            <fieldset class="form-group"style="font-size:14px;visibility:visible;position:relative;left:10px;bottom:70px">
                            <label style="color:grey"> <b>Status</b><label>
                         <select style="position:relative;left:125px;font-size:10pt"  name="status"value="<c:out value='${req.status}' />"  style="height:26px;position:relative;left:50px;font-size:10pt" onchange="if(this.value=='Reverted')
                             {
                             userselect.style.visibility='visible',userselect2.style.visibility='visible', userselect3.style.visibility='hidden',userselect4.style.visibility='hidden',userselect8.style.visibility='visible',userselect9.style.visibility='visible'
                             }
                             else if(this.value=='Accepted')
                             {
                             userselect3.style.visibility='visible'
                             userselect.style.visibility='hidden'
                             ,userselect2.style.visibility='hidden'
                             ,userselect4.style.visibility='visible'
                             ,userselect8.style.visibility='visible'
                             ,userselect9.style.visibility='visible'
                             }
                               else if(this.value=='Rejected')
                             {
                         userselect.style.visibility='visible',userselect2.style.visibility='visible', userselect3.style.visibility='hidden',userselect4.style.visibility='hidden',userselect8.style.visibility='visible',userselect9.style.visibility='visible'
                             }
                             else
                             {
                             userselect.style.visibility='hidden',userselect2.style.visibility='hidden',userselect3.style.visibility='hidden',userselect4.style.visibility='hidden',
                             userselect9.style.visibility='hidden'
                             };" >
       
        <option value="<c:out value='${req.status}' />" selected="selected">${req.status}</option>
   
   
        <option value="Accepted">Accept</option>
       <option value="Reverted">Revert</option>
       
       <option value="Rejected">Reject</option>  
 
       
        </select>
                        </fieldset>
                        </c:if>
                          <c:if test="${req.status=='Cancelled'}">
                        <fieldset class="form-group"style="font-size:14px;position:relative;bottom:20px">
                            <label style="color:grey"><b>Status</b></label> <input type="text"readonly="readonly" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="20" style="height:26px;font-size:10pt;text-transform:uppercase;position:relative;left:130px;font-size:10pt" value="<c:out value='${req.status}' />" class="form-control" name="status" required="required">
                        </fieldset>
                         
                          </c:if>
                   
    <c:if test="${req.status=='Completed'}">
                        <fieldset class="form-group"style="font-size:14px;position:relative;bottom:20px">
                            <label style="color:grey"><b>Status</b></label> <input type="text"readonly="readonly" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="20" style="height:26px;font-size:10pt;text-transform:uppercase;position:relative;left:140px;font-size:10pt" value="<c:out value='${req.status}' />" class="form-control" name="status" required="required">
                        </fieldset>
                         
                          </c:if>
                       
                       <fieldset id="input" style="visibility:hidden;font-size:14px;position:relative;left:10px;bottom:40px">
                         <label style="color:grey"><b>Remarks</b><label>
                        <input type="textbox"  name="authpersonremarks" id="input2"style="visibility:hidden;font-size:10pt;position:relative;left:126px"/>
                        </fieldset>
                     
            <fieldset class="form-group" id="input3"style="visibility:hidden;font-size:14px;position:relative;bottom:90px">
                            <label style="color:grey"> <b>Accepted Date</b></label> <input readonly="readonly"style="height:26px;position:relative;left:88px;font-size:10pt" type="text" id="datetext2"class="normal" size="20" maxlength="20" class="form-control" name="accdate" required="required">
                        </fieldset>
       
       
                         <fieldset class="form-group"id="assnto2"style="visibility:hidden;font-size:14px;position:relative;bottom:90px;right:140px">
                            <label style="color:grey"><b>Assigned To</b></label> <input type="text"readonly="readonly" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="100" style="height:26px;font-size:10pt;text-transform:uppercase;position:relative;left:108px" value="<c:out value='${auth2.contactperson}' />" class="form-control" name="assnto" required="required">
                        </fieldset>

                          <c:if test="${req.status=='Accepted'}">
                           <fieldset class="form-group"id="assnto2"style="font-size:14px;position:relative;bottom:190px">
                            <label style="color:grey"><b>Assigned To</b></label> <input type="text"readonly="readonly" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="100" style="height:26px;font-size:10pt;text-transform:uppercase;position:relative;left:100px "value="<c:out value='${req.assnto}' />" class="form-control" name="assnto" required="required">
                        </fieldset>
            <fieldset class="form-group" style="font-size:14px;position:relative;bottom:190px">
                            <label style="color:grey"> <b>Accepted Date</b></label> <input readonly="readonly"style="height:26px;position:relative;left:83px;font-size:10pt" type="text" id="datetext"class="normal" size="20" value="<c:out value='${req.accdate}' />"maxlength="20" class="form-control" name="accdate" required="required">
                        </fieldset>
                        </c:if>
                          <c:if test="${req.status=='Rejected'}">
                                <fieldset class="form-group"style="font-size:14px;position:relative;bottom:190px">
                            <label style="color:grey"><b>Status</b></label> <input type="text"readonly="readonly" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="20" style="height:26px;font-size:10pt;text-transform:uppercase;position:relative;left:140px;font-size:10pt" value="<c:out value='${req.status}' />" class="form-control" name="status" required="required">
                        </fieldset>
                               <fieldset  style="font-size:14px;position:relative;bottom:190px">
                         <label style="color:grey"><b>Remarks</b><label>
                        <input type="textbox"  style="height:26px;font-size:10pt;text-transform:uppercase;position:relative;left:130px;font-size:10pt"name="authpersonremarks"value="<c:out value='${req.authpersonremarks}' />" >
                        </fieldset>
                         <fieldset  style=";font-size:14px;position:relative;left:4px;bottom:210px">
                         <label style="color:grey"><b> Contact Person Remarks</b><label>
                        <input type="text"  name="assnfromremarks"value="<c:out value='${req.assnfromremarks}' />"size="40"style="font-size:10pt;position:relative;left:126px"/>
                        </fieldset>
                          </c:if>
                            <c:if test="${req.status=='Reverted'}">
                        <fieldset class="form-group"style="font-size:14px;position:relative;bottom:190px">
                            <label style="color:grey"><b>Status</b></label> <input type="text"readonly="readonly" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="20" style="height:26px;font-size:10pt;text-transform:uppercase;position:relative;left:140px;font-size:10pt" value="<c:out value='${req.status}' />" class="form-control" name="status" required="required">
                        </fieldset>
                               <fieldset  style="font-size:14px;position:relative;bottom:190px">
                         <label style="color:grey"><b>Auth Person Remarks</b><label>
                        <input type="textbox"  style="font-size:10pt;position:relative;left:25px" name="authpersonremarks"value="<c:out value='${req.authpersonremarks}' />">
                        </fieldset>
                                <fieldset  style=";font-size:14px;position:relative;left:4px;bottom:210px">
                         <label style="color:grey"><b> Contact Person Remarks</b><label>
                        <input type="text"  name="assnfromremarks"value="<c:out value='${req.assnfromremarks}' />"size="40"style="font-size:10pt;position:relative;left:126px"/>
                        </fieldset>
                      
                     
                          
                          </c:if>
                           <c:if test="${emp.empname!=req.assnto}">
                            <c:if test="${emp.empname!=req.reqby}">
                            <c:if test="${emp.empname!=req.authperson}">
                                 <fieldset class="form-group"style="font-size:14px;position:relative;bottom:20px">
                            <label style="color:grey"><b>Status</b></label> <input type="text"readonly="readonly" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="20" style="height:26px;font-size:10pt;text-transform:uppercase;position:relative;left:140px;font-size:10pt" value="<c:out value='${req.status}' />" class="form-control" name="status" required="required">
                        </fieldset>
                          </c:if>
                          </c:if>
                          </c:if>
              </c:if>
                     

                      
     
         <c:if test="${emp.empname==req.reqby}">
        <c:if test="${req.status=='New'}">
                               <button type="submit"id="button4" class="btn btn-success"onclick="FbotonOn2();"style="visibility:hidden;font-family:Verdana;background-color:#7fdbd4;position:relative;top:2px;left:220px;border-color:white;border-radius:5px"><b>Save</b></button>
                        <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" visibility:visible;font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;hieght:38px;position:relative;top:2px;left:220px;border-radius:5px">
                       </c:if>
                       
                           <c:if test="${req.status=='Reopened'}">
                               <button type="submit" class="btn btn-success"onclick="FbotonOn2()"style=" font-family:Verdana;background-color:#7fdbd4;position:relative;top:2px;left:220px;border-color:white;border-radius:5px"><b>Save</b></button>
                        <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;hieght:38px;position:relative;top:2px;left:220px;border-radius:5px">
                       </c:if>
                            <c:if test="${req.status=='Open'}">
                               <button type="submit" class="btn btn-success"onclick="FbotonOn2()"style=" font-family:Verdana;background-color:#7fdbd4;position:relative;top:2px;left:220px;border-color:white;border-radius:5px"><b>Save</b></button>
                        <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;hieght:38px;position:relative;top:2px;left:220px;border-radius:5px">
                       </c:if>
                               <c:if test="${req.status=='Completed'}">
                               <button type="submit"id="button3" class="btn btn-success"onclick="FbotonOn2()"style=" visibility:hidden;font-family:Verdana;background-color:#7fdbd4;position:relative;top:2px;left:220px;border-color:white;border-radius:5px"><b>Save</b></button>
                        <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;hieght:38px;position:relative;top:2px;left:220px;border-radius:5px">
                       </c:if>
                       
                          <c:if test="${req.status=='Reverted'}">
                               <button type="submit"id="button5" class="btn btn-success"onclick="FbotonOn2()"style="visibility:hidden; font-family:Verdana;background-color:#7fdbd4;position:relative;top:2px;left:220px;border-color:white;border-radius:5px"><b>Save</b></button>
                        <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" visibility:visible;font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;hieght:38px;position:relative;top:2px;left:220px;border-radius:5px">
                       </c:if>
                               <c:if test="${req.status=='Rejected'}">
                             
                        <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" visibility:visible;font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;hieght:38px;position:relative;top:2px;left:220px;border-radius:5px">
                       </c:if>
                                  
                                               <c:if test="${req.status=='Cancelled'}">
                             
                        <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" visibility:visible;font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;hieght:38px;position:relative;top:2px;left:220px;border-radius:5px">
                       </c:if>
                                  
                            <c:if test="${req.status=='Closed'}">
                             
                        <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" visibility:visible;font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;hieght:38px;position:relative;top:2px;left:220px;border-radius:5px">
                       </c:if>
                                  <c:if test="${req.status=='Accepted'}">
                             
                        <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" visibility:visible;font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;hieght:38px;position:relative;top:2px;left:220px;border-radius:5px">
                       </c:if>
                       <c:if test="${req.status=='New'}">
                        <c:if test="${req.status=='Reverted'}">
                        <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;hieght:38px;position:relative;top:2px;left:220px;border-radius:5px">
                       </c:if>
                       </c:if>
                       </c:if>
                          <c:if test="${emp.empname==req.authperson}">
                             <c:if test="${req.status!='Cancelled'}">
        <button type="submit" id="button1" class="btn btn-success"onclick="FbotonOn2()"style="visibility:hidden; font-family:Verdana;background-color:#7fdbd4;position:relative;top:2px;left:220px;border-color:white;border-radius:5px"><b>Save</b></button>
                        <input type="button"class="btn btn-success"value="Back" onclick="history.back(-1)"style="visibility:visible;font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;hieght:38px;position:relative;top:2px;left:220px;border-radius:5px">
                       </c:if>
                        <c:if test="${req.status=='Cancelled'}">
                         <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;hieght:38px;position:relative;top:2px;left:220px;border-radius:5px">
                        </c:if>
                       </c:if>
                            <c:if test="${emp.empname==req.assnto}">
                             <c:if test="${req.status=='Accepted'}">
        <button type="submit" id="button2"class="btn btn-success"onclick="FbotonOn2()"style="visibility:hidden; font-family:Verdana;background-color:#7fdbd4;position:relative;top:2px;left:220px;border-color:white;border-radius:5px"><b>Save</b></button>
                        <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;hieght:38px;position:relative;top:2px;left:220px;border-radius:5px">
                       </c:if>
                        <c:if test="${req.status=='Completed'}">
                         <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;hieght:38px;position:relative;top:2px;left:220px;border-radius:5px">
                        </c:if>
                             <c:if test="${req.status=='Reverted'}">
                         <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;hieght:38px;position:relative;top:2px;left:220px;border-radius:5px">
                        </c:if>
                            <c:if test="${req.status=='Rejected'}">
                         <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;hieght:38px;position:relative;top:2px;left:220px;border-radius:5px">
                        </c:if>
                           <c:if test="${emp.empname!=req.assnto}">
                            <c:if test="${emp.empname!=req.reqby}">
                            <c:if test="${emp.empname!=req.authperson}">
                           <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;hieght:38px;position:relative;top:2px;left:220px;border-radius:5px">
                           <fieldset class="form-group"style="font-size:14px;position:relative;bottom:120px">
                            <label style="color:grey"><b>Status</b></label> <input type="text"readonly="readonly" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="20" style="height:26px;font-size:10pt;text-transform:uppercase;position:relative;left:140px;font-size:10pt" value="<c:out value='${req.status}' />" class="form-control" name="status" required="required">
                        </fieldset>
                          </c:if>
                          </c:if>
                          </c:if>
                       </c:if>
                       
                        </form>
                    </div>
                </div>
            </div>
            </font>
          <center>  <p id="texto"></p></center>
        </body>

        </html>

<script>

function changeFunc($i) {
 debugger;
   

     var txt =  document.getElementById('authperson');
     
     var strSplit=$i.value.split('/');
     txt.value = strSplit[1];
     var txt2 =  document.getElementById('assnto');
     var strSplit2=$i.value.split('/',4);
 txt2.value=strSplit2[3];

     
}



function addDate(){
date = new Date();
var month = ("0" +(date.getMonth()+1)).slice(-2);
var day = ("0"+date.getDate()).slice(-2);
var year = date.getFullYear();

if (document.getElementById('datetext').value == ''){
document.getElementById('datetext').value = month + '/' +day + '/' + year;
}
}
function addDate2(){
	date = new Date();
	var month = ("0" +(date.getMonth()+1)).slice(-2);
	var day = ("0"+date.getDate()).slice(-2);
	var year = date.getFullYear();

	if (document.getElementById('datetext2').value == ''){
	document.getElementById('datetext2').value = month + '/' + day + '/' + year;
	}
	
	}
function addDate3(){
	date = new Date();
	var month = ("0" +(date.getMonth()+1)).slice(-2);
	var day = ("0"+date.getDate()).slice(-2);
	var year = date.getFullYear();

	if (document.getElementById('datetext3').value == ''){
	document.getElementById('datetext3').value = month + '/' + day+ '/' + year;
	}
	
	}
</script>
<script>
var userselect=document.getElementById('input');
</script>
<script >


var userselect2=document.getElementById('input2');
</script>
<script >


var userselect3=document.getElementById('input3');
</script>
<script>
var userselect4=document.getElementById('assnto2');
</script>
<script>
var userselect5=document.getElementById('input4');
</script>
<script>
var userselect6=document.getElementById('input5');
</script>
<script>
var userselect7=document.getElementById('input6');
</script>
<script>
var userselect8=document.getElementById('button1');
</script>
<script>
var userselect9=document.getElementById('button2');
</script>
<script>
var userselect10=document.getElementById('button3');
</script>
<script>
var userselect11=document.getElementById('button4');
</script>
<script>
var userselect12=document.getElementById('button5');
</script>
<script>
var userselect13=document.getElementById('input7');
</script>
       <center><script type="text/javascript">
function FbotonOn2() {

;
        document.getElementById('texto').innerHTML = "Data Added Succesfullly ";
       
}

function openNav() {
 document.getElementById("mySidenav").style.width = "250px";
}

/* Set the width of the side navigation to 0 */
function closeNav() {
 document.getElementById("mySidenav").style.width = "0px";
}
</script></center>
