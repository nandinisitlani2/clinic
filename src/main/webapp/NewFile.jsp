<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
 
                 
           
             
     
  
   
            <br>
            <div class="container col-md-5"
                style="width:600px;position:relative;right:60px;border-width:5px">
<div class="shadow-lg p-3 mb-5 bg-white rounded" style="width:800px;border-width:5px">
<div class="card-body" style="width:600px;">
                 
                        <c:if test="${authorisation!= null}">
                            <form action="updateAM?empname=<c:out value='${emp.empname}'/>" method="post">
                        </c:if>
                        <c:if test="${authorisation == null}">
                            <form action="insertAM?empname=<c:out value='${emp.empname}'/>" method="post">
                        </c:if>
                        <form style=width:800px;position:relative;left:200px>
                        <caption>
                              <h2 style="font-size:20px;position:relative;left:180px;bottom:20px">
                                <c:if test="${authorisation!= null}">
                                    <b>Authorization Master</b>
                                </c:if>
                                <c:if test="${authorisation == null}">
                                    <b> Authorization Master</b>
                                </c:if>
                            </h2>
                        </caption>
                        <c:if test="${authorisation!= null}">
                            <input type="hidden" name="id" value="<c:out value='${authorisation.id}' />" />
                        </c:if>
     
                       
<c:if test="${authorisation==null }">

                                 <fieldset class="form-group"style="font-size:14px">
    <label style="color:grey"> <b>Requirement For</b> <label>
       <select id="reqFor" name="reqFor"  style="height:26px;font-size:10pt;position:relative; left:22px; width:136px" >
       <option>select</option>
            <option value= Hardware > Hardware</option>
        <option value= Software> Software</option>
         <option value= Office_Utilities> Office Utilities</option>
       
        </select>
 
</fieldset>
       



<fieldset style="position:relative;bottom:8px;font-size:14px">
    <label style="color:grey"><b> Authorized Person</b><label>
       <select id="username" name="username"  onchange="changeFunc(this)" style="height:26px;position:relative;left:13px;font-size:10pt;width:130px" >
       <option> select</option>
       
       <c:forEach var="authuser" items="${author.getUserList()}">
     
       <option value="${authuser.empname}/${authuser.emailid}" >${authuser.empname}</option>
       
       
       </c:forEach>
       
        </select>
       
     
</fieldset>
<%--
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
</fieldset>    --%>
                                <fieldset id="email"class="form-group"style="font-size:14px">
                            <label style="color:grey"><b>eMail Id</b></label> <input id="emaill" type="text"onkeyup="this.value=this.value.toUpperCase();" class="normal" size="50" maxlength="50" style="height:26px;font-size:10pt;text-transform:uppercase;position:relative;left:90px;"value="<c:out value='${authorisation.emailId}' />" class="form-control" name="emailid" required="required">
                        </fieldset>
                 
                 
                 
                 <fieldset style="position:relative;bottom:8px;font-size:14px"">
    <label style="color:grey"><b>Contact Person</b><label>
       <select id="contactperson" name="contactperson" value="<c:out value='${authorisation.contactperson}' />" onchange="changeFunc3(this)" style="height:26px;font-size:10pt;position:relative;left:38px;width:130px" >
       
             <option> select</option>
       <c:forEach var="authuser" items="${author.getUserList()}">
       
       <option value="${authuser.empname}/${authuser.emailid}" >${authuser.empname}</option>
       
       
       </c:forEach>
       
        </select>
       
     
</fieldset>
<%--
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
</fieldset>    --%>
                                <fieldset id="cemail"class="form-group"style="font-size:14px">
                            <label style="color:grey"><b>eMail Id</b></label> <input id="cemaill" type="text"onkeyup="this.value=this.value.toUpperCase();" class="normal" size="50" maxlength="50" style="height:26px;font-size:10pt;text-transform:uppercase;position:relative;left:85px;"value="<c:out value='${authorisation.cemailId}' />" class="form-control" name="cemailid" required="required">
                        </fieldset>
 </c:if>
<c:if test="${authorisation!= null }">
     <fieldset style="position:relative;bottom:8px;font-size:14px"">
    <label style="color:grey"><b> Requirement For</b><label>
       <select id="username" name="reqFor"  onchange="changeFunc(this)" style="height:26px;position:relative;left:29px;font-size:10pt;width:130px" >
       
            <option  value="<c:out value='${authorisation.reqFor}'/>" selected="selected">${authorisation.reqFor} </option>
   
       
       <option value= Hardware > Hardware</option>
        <option value= Software> Software</option>
         <option value= Office_Utilities> Office Utilities</option>
       
       
 
       
        </select>
 
</fieldset>
                     
   <fieldset style="position:relative;bottom:8px;font-size:14px"">
    <label style="color:grey"><b> Authorized Person</b><label>
       <select id="username" name="username"  onchange="changeFunc2(this)" style="height:26px;position:relative;left:13px;font-size:10pt;width:130px" >
       <option> </option>
        <option  value="<c:out value='${authorisation.username}'/>" selected="selected">${authorisation.username} </option>
       <c:forEach var="authuser" items="${author.getUserList()}">
       
       <option value="${authuser.empname}/${authuser.emailid}" >${authuser.empname}</option>
       
       
       </c:forEach>
       
        </select>
       
     
</fieldset>

                        <fieldset class="form-group"style="position:relative;top:10px;font-size:14px">
                            <label style="color:grey"><b>eMail Id</b></label> <input type="text" id="email2"onkeyup="this.value=this.value.toUpperCase();" class="normal" size="50" maxlength="50" style="height:26px;text-transform:uppercase;font-size:10pt;text-transform:uppercase;position:relative;left:90px; "value="<c:out value='${authorisation.emailid}' />" class="form-control" name="emailid" required="required">
                        </fieldset>
                        <br>
                                        
                 <fieldset style="position:relative;bottom:8px;font-size:14px">
    <label style="color:grey"><b>Contact Person</b><label>
       <select id="contactperson" name="contactperson" value="<c:out value='${authorisation.contactperson}' />" onchange="changeFunc4(this)" style="height:26px;font-size:10pt;position:relative;left:38px;width:130px" >
       
       
       <option  value="<c:out value='${authorisation.contactperson}'/>" selected="selected">${authorisation.contactperson} </option>
       <c:forEach var="authuser" items="${author.getUserList()}">
       
       <option value="${authuser.empname}/${authuser.emailid}" >${authuser.empname}</option>
       
       
       </c:forEach>
       
        </select>
       
     
</fieldset>
      <fieldset class="form-group"style="font-size:14px">
                            <label style="color:grey"><b>eMail Id</b></label> <input  id="cemail2"type="text"onkeyup="this.value=this.value.toUpperCase();" class="normal" size="50" maxlength="50" style="height:26px;text-transform:uppercase;font-size:10pt;position:relative;left:85px;"value="<c:out value='${authorisation.cemailid}' />" class="form-control" name="cemailid" required="required">
                        </fieldset>
                        
                 
                         <fieldset class="form-group"style="font-size:14px">
                        <c:if test="${authorisation.active=='Yes'}">
                        <input type="hidden" value="<c:out value='No'/>" class="form-control" name="active">
                         <label style="color:grey"><b>Active</b></label> <input type="checkbox" onkeyup="this.value=this.value.toUpperCase();"style="width:15px;hieght:15px;position:relative;bottom:28px;left:155px;font-size:10pt;" value="<c:out value='Yes' />" class="form-control" name="active" checked>
                         
              </c:if>
               <c:if test="${authorisation.active=='No'}">
                        <label style="color:grey;position:relative;top:10px"><b>Active</b></label> <input type="checkbox"onkeyup="this.value=this.value.toUpperCase();" style="font-size:10pt;width:15px;hieght:15px;position:relative;bottom:28px;left:155px" value="<c:out value='Yes' />" class="form-control" name="active">
                         <input type="hidden" value="<c:out value='No'/>" class="form-control" name="active">
                        </c:if>
                        </fieldset>
</c:if>


                       
                     
<c:if test="${authorisation!=null }">
                        <%-- <label>Active</label> <input type="checkbox" style="width:15px;hieght:15px;position:relative;bottom:38px;left:45px" value="<c:out value='Yes' />" class="form-control" name="hide">
                         --%>
                      <button type="submit" class="btn btn-success"onclick="FbotonOn2()"style=" font-family:Verdana;background-color:#7fdbd4;position:relative;top:2px;left:180px;border-color:white;border-radius:5px"><b>Save</b></button>
                        <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;hieght:38px;position:relative;top:2px;left:275px;border-radius:5px">
                       
              <a href="deleteAM?id=<c:out value='${authorisation.id}' />&empname=<c:out value='${emp.empname}' />"class="btn btn-success"onclick="return confirm('Are you sure? You want to delete this record?This action cannot be undone and you will be unable to recover the data.')"class="btn btn-success" class="btn btn-success"style=" font-family:Verdana;height:38px;left:110px;top:2px;border-radius:5px;background-color:#7fdbd4;border-color:#4CAF50;border:2px;width=55px;color:white;position:relative;border-radius:5px"><b>Delete</b></a>
      </c:if>
     
                       
       <c:if test="${authorisation==null }">
                        <button type="submit" class="btn btn-success"onclick="FbotonOn2()"style=" font-family:Verdana;background-color:#7fdbd4;border-color:white;border-radius:5px;position:relative;top:2px;left:220px"><b>Save</b></button>
                        <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;position:relative;top:40px;width=55px;hieght:38px;position:relative;top:2px;left:220px;border-radius:5px">
                        <fieldset class="form-group">
                       
               
      </c:if>                    
                        </fieldset>
                        </form>
                    </div>
                </div>
            </div>
            </font>
             <center>  <p id="texto"></p></center>
</BODY>
</HTML>

<script type="text/javascript">
function changeFunc($i) {
 debugger;
   

     var txt =  document.getElementById('emaill');

     var strSplit=$i.value.split('/');
     txt.value = strSplit[1];
    
     
   }
function changeFunc2($i) {
 debugger;
   

     var txt2 =  document.getElementById('email2');
     var strSplit2=$i.value.split('/');
     txt2.value = strSplit2[1];


     
  }

function changeFunc3($i) {
debugger;
 

    var txt3 =  document.getElementById('cemaill');
    var strSplit3=$i.value.split('/');
    txt3.value = strSplit3[1];

   

   
 }
function changeFunc4($i) {
	debugger;
	 

	    var txt4 =  document.getElementById('cemail2');
	    var strSplit4=$i.value.split('/');
	    txt4.value = strSplit4[1];


	   
	 }
  </script>


<script type="text/javascript">
function showdv()
{



var e = document.getElementById("username");
var result = e.options[e.selectedIndex].text;
<%
try{
//Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection connection =
     DriverManager.getConnection
        ("jdbc:mysql://127.0.0.1:3306/DBRTS","root","Sakshisql@08");
%>


var e = document.getElementById("username");
var result = e.options[e.selectedIndex].text;

<%
   Statement statement = connection.createStatement() ;
   String result =request.getParameter("username");
   String  query="select emailid from usermaster where empname='"+result+"'";
   resultset =statement.executeQuery(query) ;
   String email=resultset.getString(1);
%>



 

<%
//**Should I input the codes here?**
    }
    catch(Exception e)
    {
         out.println("wrong entry"+e);
    }
%>



document.getElementById("email").style.display='block';
document.getElementById("emaill").value=email

}


</script>





                <center><script type="text/javascript">
function FbotonOn() {

 
        document.getElementById('texto').innerHTML = "Updated Succesfullly ";
       
}
</script></center>


<center><script type="text/javascript">
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