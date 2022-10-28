
 
 <%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   
        <html>

        <head>
       
            <title>Requirement Management Application</title>
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
           <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"><script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
        </head>
       
  <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #7fdbd4;width:1330px;height:55px">
                    <div>
                        <a  class="navbar-brand"style="color:white;font:verdana;font-size:25px"> <b>Requirement Tracking System</b></a>
                               
                    </div>
<div text-center>
<a href="<%=request.getContextPath()%>/dashboard?empname=<c:out value='${emp.empname}' />" class="btn" id="myButton" style="color:white;position:relative;bottom:5px;left:600px;  padding: 12px 16px;
  font-size: 25px;
  cursor: pointer"><i class="fa fa-home"></i></a>

                       
                               <a class="navbar-brand"style="color:white;position:relative;bottom:2px;left:600px"><b>${emp.empname}</b></a>
                    </div>
                     <a href="<%=request.getContextPath()%>/loginpage" class="btn" id="myButton2" style="color:white;position:relative;bottom:5px;left:600px;  padding: 12px 16px;
  font-size: 25px;
  cursor: pointer">
 
<span class="fa-stack fa-1x" style="font-size:15px">
  <i class="fa fa-circle-o fa-stack-2x"></i>
  <i class="fa fa-power-off fa-stack-1x "></i>
  </span>
  </a>
  </nav>
  <script>  
function verifyAnswer() {  
    //disable all the checkbox button

     document.getElementById("New").disabled = false;  
      document.getElementById("Open").disabled= false;  
      document.getElementById("Accepted").disabled = false;  
      document.getElementById("Reverted").disabled = false;  
      document.getElementById("Completed").disabled= false;  
      document.getElementById("Reopened").disabled = false;
   
      document.getElementById("Cancelled").disabled= false;  
      document.getElementById("Rejected").disabled = false;
      document.getElementById("Closed").disabled = false;
   
    //get the value if radiobox is checked  
    var dev = document.getElementById("ALL").checked;  
    if (dev == true) {  
    //enable all the radio button  

        document.getElementById("New").checked = true;  
  
        document.getElementById("Open").checked = true;  
        document.getElementById("Accepted").checked = true;
        document.getElementById("Reverted").checked = true;  
        document.getElementById("Completed").checked= true;  
        document.getElementById("Reopened").checked = true;
        document.getElementById("Reverted").checked = true;  
        document.getElementById("Completed").checked= true;  

        document.getElementById("Cancelled").checked= true;  
        document.getElementById("Rejected").checked = true;
        document.getElementById("Closed").checked = true;
      
   }  
    
    var dev = document.getElementById("ALL").checked;  
    if (dev == false) {  
    //enable all the radio button  

        document.getElementById("New").checked = false;  
  
        document.getElementById("Open").checked = false;  
        document.getElementById("Accepted").checked = false;
        document.getElementById("Reverted").checked = false;  
        document.getElementById("Completed").checked= false;  
        document.getElementById("Reopened").checked = false;
        document.getElementById("Reverted").checked = false;  
        document.getElementById("Completed").checked= false;  
     
        document.getElementById("Cancelled").checked = false;  
        document.getElementById("Rejected").checked= false;  
        document.getElementById("Closed").checked = false;
       
   }  
     
}  

</script>

        <body onload="addDate();">

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
                      
                                                        <li><a href="<%=request.getContextPath()%>/filterform?empname=<c:out value='${emp.empname}' />" class="nav-link"style="color:white;padding:10px;position:relative;top:4px;right:20px"><b>Report</b></a></li> 
                                                             <li><a href="<%=request.getContextPath()%>/loginpage" class="nav-link"style="color:white;padding:10px;position:relative;top:8px;right:20px"><b>Logout</b></a></li>
 
      <li><a  class="nav-link"style="position:relative;top:-245px;right:-150px;color:white" onclick="closeNav() "><b>X</b></a></li>
   
       
                        
                           </ul>
                    </div>
                    </div>
</header>
</c:if>
            <br>
           
            <div class="container col-md-5" style="width:450px;position:relative;right:60px;border-width:5px">
                <div class="shadow-lg p-3 mb-5 bg-white rounded" style="width:600px;border-width:5px">
                    <div class="card-body" style="width:600px;">
                   <form action="selectreq?empname=<c:out value='${emp.empname}' />"  method="post">
                            <input type="hidden" name="id" value="<c:out value='${req.id}' />">
                        <caption>
                             <h2 style="font-size:20px;position:relative;left:190px;bottom:20px">
                         
                             
                                   <b> Filter(s)</b>
                           
                            </h2>
                           

                     <fieldset class="form-group"style="font-size:14px">
                              <p style="color:grey;"><b>Date Range</b></p>
                              <div>
<input id="reportrange"name="date" style="background: #fff; cursor: pointer; padding: 0px 6px; border: 1px solid grey; width: 40%">
    <i class="fa fa-calendar" ></i>&nbsp;
    <span></span> <i class="fa fa-caret-down"></i>
</div>
</fieldset>
<fieldset class="form-group"style="font-size:10px;position:relative;bottom:15px">
                        
<label><i>MM/DD/YYYY</i></label>
 
</fieldset>
<br>
             

                     <fieldset class="form-group"style="font-size:14px;position:relative;bottom:45px">
               
                            <p style="color:grey;"><b>Status</b></p>
                         
                           
                            <input type="checkbox" class="normal"  onchange = "verifyAnswer()" style="font-size:10pt;position:relative"id="ALL"class="form-control" checked="checked" name="status1"> <label style="font-size:10pt">All</label>
                         
                           <input type="checkbox" class="normal" style="font-size:10pt;position:relative;left:80px"value="New" id="New" class="form-control"checked="checked" name="status2"> <label style="font-size:10pt;position:relative;left:80px">New</label>
                       <input type="checkbox" class="normal" style="font-size:10pt;position:relative; left:160px"value="Open" id="Open"class="form-control"checked="checked" name="status3"> <label style="font-size:10pt;position:relative;left:160px"> Open</label>
                                              <input type="checkbox" class="normal" style="font-size:10pt;position:relative; left:240px"value="Accepted" id="Accepted" checked="checked"class="form-control" name="status11"> <label style="font-size:10pt;position:relative;left:240px">Accepted</label>
                                              <br>
                                          
                                               <input type="checkbox" class="normal" style="font-size:10pt;position:relative;left:0px"value="Reverted" id="Reverted"checked="checked" class="form-control" name="status4"> <label style="font-size:10pt;position:relative;left:0px" >Reverted</label>
                                            
                                                 
                                                                     <input type="checkbox" class="normal" style="font-size:10pt;position:relative; left:36px"checked="checked"value="Completed" id="Completed" class="form-control" name="status5"> <label style="font-size:10pt;position:relative; left:36px">Completed</label>
                                                                     
                                                                     <input type="checkbox" class="normal" checked="checked"style="font-size:10pt;position:relative; left:74px"value="Reopened" id="Reopened"class="form-control" name="status6"> <label style="font-size:10pt;position:relative;left:74px">Re-Open</label>
                                                                     
                                         <input type="checkbox" class="normal" style="font-size:10pt;position:relative; left:130px"value="Cancelled"id="Cancelled" checked="checked"class="form-control" name="status8"> <label style="font-size:10pt;position:relative;left:130px">Cancelled</label>
                                         <br>
<input type="checkbox" class="normal" style="font-size:10pt;position:relative; left:0px"value="Rejected"id="Rejected" class="form-control"checked="checked" name="status9"> <label style="font-size:10pt;position:relative;left:0px">Rejected</label>
<input type="checkbox" class="normal" style="font-size:10pt;position:relative; left:38px"value="Closed"id="Closed" class="form-control" checked="checked"name="status10"> <label style="font-size:10pt;position:relative;left:38px">Closed</label>
 
                       <button type="submit" class="btn btn-success"onclick="FbotonOn2()"style="font-family:Verdana;background-color:#7fdbd4;position:relative;top:40px;right:40px;border-color:white;border-radius:5px"><b>Apply</b></button>
                        <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" font-weight:bold;font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;hieght:38px;position:relative;top:40px;left:-10px;border-radius:5px">
                       
           
                       
                       </fieldset>
                         
                       
                       
                     
         
   

                        </form>
                    </div>
                </div>
            </div>
            </font>
          <center>  <p id="texto"></p></center>
        </body>

        </html>


<script type="text/javascript">
$(function() {

    var start = moment().subtract(29, 'days');
    var end = moment();

    function cb(start, end) {
        $('#reportrange span').html(start.format('D/MMMM,YYYY')+'-'+end.format('D/MMMM,YYYY'));
    }

    $('#reportrange').daterangepicker({
        startDate: start,
        endDate: end,
        ranges: {
           'Today': [moment(), moment()],
           'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
           'Last 7 Days': [moment().subtract(6, 'days'), moment()],
           'Last 30 Days': [moment().subtract(29, 'days'), moment()],
           'This Month': [moment().startOf('month'), moment().endOf('month')],
           'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        }
    }, cb);

    cb(start, end);

});
</script>
       <center><script type="text/javascript">
function FbotonOn2() {

;
        document.getElementById('texto').innerHTML = "Filter(s) Added Succesfullly ";
       
}

function openNav() {
 document.getElementById("mySidenav").style.width = "250px";
}

/* Set the width of the side navigation to 0 */
function closeNav() {
 document.getElementById("mySidenav").style.width = "0";
}
</script></center>