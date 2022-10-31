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
<font face="Verdana" >


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
                  
                        <li><a href="<%=request.getContextPath()%>/usermaster?empname=<c:out value='${emp.empname}' />" class="nav-link"style="color:white;padding:10px;position:relative;top:-8px;right:20px"><b>Register Form</b></a></li>
            
                          
            
                        <li><a href="<%=request.getContextPath()%>/Authorisationmaster?empname=<c:out value='${emp.empname}' />" class="nav-link"style="color:white;padding:10px;position:relative;top:-6px;right:20px"><b>Authorisation Master</b></a></li>
                  
                       
                        
                            <li><a href="<%=request.getContextPath()%>/req?empname=<c:out value='${emp.empname}' />" class="nav-link"style="color:white;padding:10px;position:relative;top:-4px;right:20px"><b>Requirement(s)</b></a></li> 
                             <li><a href="<%=request.getContextPath()%>/filterform?empname=<c:out value='${emp.empname}' />" class="nav-link"style="color:white;padding:10px;position:relative;top:-2px;right:20px"><b>Report</b></a></li> 
                           <li><a href="<%=request.getContextPath()%>/loginpage" class="nav-link"style="color:white;padding:10px;position:relative;top:0px;right:20px"><b>Logout</b></a></li>
   <li><a  class="nav-link"style="position:relative;top:-325px;right:-150px;color:white" onclick="closeNav() "><b>X</b></a></li>
   
   
       
                        
                           </ul>
                    </div>
                    </div>
           
      
        
         
             
      </header> 
           
         
         
           
           
           
            <br>
            <div class="container col-md-5" style="width:600px;position:relative;right:60px;border-width:5px">
                <div class="shadow-lg p-3 mb-5 bg-white rounded" style="width:800px;border-width:5px">
                    <div class="card-body" style="width:600px;">
                   
                        <c:if test="${usermaster!= null}">
                            <form action="updateUM?empname=<c:out value='${emp.empname}' />" method="post">
                        </c:if>
                        <c:if test="${usermaster == null}">
                            <form action="insertUM?empname=<c:out value='${emp.empname}' />" method="post">
                        </c:if>
<form style="width:800px;position:relative;left:220px">
                        <caption>
                               <h2 style="font-size:18px;position:relative;left:200px;bottom:20px">
                                <c:if test="${usermaster!= null}">
                                    <b>Register</b>
                                </c:if>
                                <c:if test="${usermaster == null}">
                                    <b>Register</b>
                                </c:if>
                            </h2>
                        </caption>
                        <c:if test="${usermaster != null}">
                            <input type="hidden" name="id" value="<c:out value='${usermaster.id}' />" />
                        </c:if>

                       
<c:if test="${usermaster==null }">
                     
 
 <fieldset class="form-group"style="font-size:14px">
                            <label style="color:grey"><b> Name</b></label> <input type="text"onkeyup="this.value=this.value.toUpperCase();" class="normal" size="20" maxlength="20" style="height:26px;font-size:10pt;text-transform:uppercase ;position:relative;left:14px"value="<c:out value='${usermaster.loginname}' />" class="form-control" name="loginname" required="required">
                        </fieldset>
                           <fieldset class="form-group"style="font-size:14px">
                            <label style="color:grey"><b>User Name</b></label> <input style="font-size:10pt;position:relative;left:50px;"type="text" onkeyup="this.value=this.value.toUpperCase();" class="normal" size="50" maxlength="60" style="height:26px;text-transform:uppercase;position:relative;left:20px "value="<c:out value='${usermaster.empname}' />" class="form-control" name="empname2" required="required">
                        </fieldset>
                        <fieldset class="form-group"style="font-size:14px">
                            <label style="color:grey"><b>Password</b></label> <input type="text" class="normal" size="20" maxlength="10" style="height:26px;font-size:10pt;position:relative;left:70px "value="<c:out value='${usermaster.passwordd}' />" class="form-control" name="passwordd" required="required">
                        </fieldset>
                                               <fieldset class="form-group"style="font-size:14px">
                            <label style="color:grey"><b>eMail Id</b></label> <input type="text" class="normal" size="50" maxlength="60" style="height:26px;font-size:10pt;position:relative;left:82px "value="<c:out value='${usermaster.emailid}' />" class="form-control" name="emailid" required="required">
                        </fieldset>
                          <fieldset class="form-group"style="font-size:14px">
    <label style="color:grey"><b>User Type</b></label>
       <select id="user" name="user"  style="font-size:10pt;position:relative;left:73px;width:80px" >
       
       
   
       
       <option value= Admin >                  Clinic                   </option>
        <option value= User >                  Doctor                   </option>
        <option value= Admin >                 Patient
       
 
       
        </select>
 
</fieldset>

 </c:if>
<c:if test="${usermaster!=null }">
                   <fieldset class="form-group"style="font-size:14px">
                            <label style="color:grey"><b> Name</b></label> <input type="text"onkeyup="this.value=this.value.toUpperCase();" class="normal" size="20" maxlength="20" style="height:26px;font-size:10pt;text-transform:uppercase ;position:relative;left:14px"value="<c:out value='${usermaster.loginname}' />" class="form-control" name="loginname" required="required">
                        </fieldset>
                           <fieldset class="form-group"style="font-size:14px">
                            <label style="color:grey"><b>User  Name</b></label> <input "type="text" onkeyup="this.value=this.value.toUpperCase();" class="normal" size="50" maxlength="60" style="height:26px;font-size:10pt;text-transform:uppercase;position:relative;left:50px"value="<c:out value='${usermaster.empname}' />" class="form-control" name="empname2" required="required">
                        </fieldset>
                     <fieldset class="form-group"style="font-size:14px">
                            <label style="color:grey"><b>Password</b></label> <input type="text" class="normal" size="20" maxlength="10" style="height:26px;font-size:10pt;position:relative;left:70px "value="<c:out value='${usermaster.passwordd}' />" class="form-control" name="passwordd" required="required">
                        </fieldset>
                       
     <fieldset class="form-group"style="font-size:14px">
                            <label style="color:grey"><b>eMail Id</b></label> <input type="text" class="normal" size="50" maxlength="60" style="height:26px;font-size:10pt;position:relative;left:82px "value="<c:out value='${usermaster.emailid}' />" class="form-control" name="emailid" required="required">
                        </fieldset>
                       
                       <fieldset class="form-group"style="font-size:14px">
    <label style="color:grey"><b>User Type</b></label>
       <select id="user" name="user"  style="font-size:10pt;position:relative;left:68px;width:80px" >
       
       
       
     <option  value="<c:out value='${usermaster.user}'/>" selected="selected">${usermaster.user} </option>
       
      
         
       <option value= Admin >                  Clinic                   </option>
        <option value= User >                  Doctor                   </option>
        <option value= Admin >                 Patient </option>
       
       
 
       
        </select>
 
</fieldset>
                         <fieldset class="form-group"style="font-size:14px">
                        <c:if test="${usermaster.ehide=='Yes'}">
                        <input type="hidden" value="<c:out value='No'/>" class="form-control" name="ehide">
                         <label style="color:grey"><b>Hide</b></label> <input type="checkbox" onkeyup="this.value=this.value.toUpperCase();"style="width:15px;hieght:15px;position:relative;bottom:38px;left:153px" value="<c:out value='Yes' />" class="form-control" name="ehide" checked>
                         
              </c:if>
               <c:if test="${usermaster.ehide=='No'}">
                        <label style="color:grey"><b>Hide</b></label> <input type="checkbox"onkeyup="this.value=this.value.toUpperCase();" style="width:15px;hieght:15px;position:relative;bottom:38px;left:153px" value="<c:out value='Yes' />" class="form-control" name="ehide">
                         <input type="hidden" value="<c:out value='No'/>" class="form-control" name="ehide">
                        </c:if>
                        </fieldset> </c:if>


                       
                     
<c:if test="${usermaster!=null }">
                        <%-- <label>Hide</label> <input type="checkbox" style="width:15px;hieght:15px;position:relative;bottom:38px;left:45px" value="<c:out value='Yes' />" class="form-control" name="hide">
                         --%>
                      <button type="submit" class="btn btn-success"onclick="FbotonOn2()"style=" font-family:Verdana;background-color:#7fdbd4;position:relative;top:2px;left:180px;border-color:white;border-radius:5px"><b>Save</b></button>
                        <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;hieght:38px;position:relative;top:2px;left:270px;border-radius:5px">
                       
              <a href="deleteUM?id=<c:out value='${usermaster.id}' />&empname=<c:out value='${emp.empname}' />"onclick="return confirm('Are you sure? You want to delete this record?This action cannot be undone and you will be unable to recover the data.')"class="btn btn-success" class="btn btn-success"style=" font-family:Verdana;height:38px;left:110px;top:4px;border-radius:5px;background-color:#7fdbd4;border-color:#4CAF50;border:2px;color:white;position:relative;padding:5px;border-radius:5px"><b>Delete</b></a>
      </c:if>
     
                         
       <c:if test="${usermaster==null }">
                        <button type="submit" class="btn btn-success"onclick="FbotonOn2()"style=" font-family:Verdana;background-color:#7fdbd4;position:relative;top:2px;left:220px;border-color:white;border-radius:5px"><b>Save</b></button>
                        <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;hieght:38px;position:relative;top:2px;left:220px;border-radius:5px">
                        <fieldset class="form-group" style="font-size:14px">
                       
               
      </c:if>                    
                   
                        </form>
                    </div>
                </div>
            </div>
            </font>
     
        </body>

        </html>
       
       
       
       
                <center><script type="text/javascript">
function FbotonOn() {

 
        document.getElementById('texto').innerHTML = "Updated Succesfullly ";
       
}
</script></center>


<center><script type="text/javascript">
var a=[];
function FbotonOn2() {

 
        document.getElementById('texto').innerHTML = "Data Added Succesfullly ";
       
}
function openNav() {
 document.getElementById("mySidenav").style.width = "250px";
}

/* Set the width of the side navigation to 0 */
function closeNav() {
 document.getElementById("mySidenav").style.width = "0";
}
</script></center>