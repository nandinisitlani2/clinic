<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
     <!DOCTYPE html>
       <html>

      <head>
               <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
           <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
           <style type="text/css">

.pg-normal {
color: white;
font-size: 15px;
cursor: pointer;
background: #7fdbd4;
padding: 2px 4px 2px 4px;
}

.pg-selected {
color: white;
font-size: 15px;
background: grey;
padding: 2px 4px 2px 4px;
}
</style>
<script type="text/javascript">

function Pager(tableName, itemsPerPage) {

this.tableName = tableName;

this.itemsPerPage = itemsPerPage;

this.currentPage = 1;

this.pages = 0;

this.inited = false;

this.showRecords = function(from, to) {

var rows = document.getElementById(tableName).rows;

// i starts from 1 to skip table header row

for (var i = 1; i < rows.length; i++) {

if (i < from || i > to)

rows[i].style.display = 'none';

else

rows[i].style.display = '';

}

}

this.showPage = function(pageNumber) {

if (! this.inited) {

alert("not inited");

return;

}

var oldPageAnchor = document.getElementById('pg'+this.currentPage);

oldPageAnchor.className = 'pg-normal';

this.currentPage = pageNumber;

var newPageAnchor = document.getElementById('pg'+this.currentPage);

newPageAnchor.className = 'pg-selected';

var from = (pageNumber - 1) * itemsPerPage + 1;

var to = from + itemsPerPage - 1;

this.showRecords(from, to);

}

this.prev = function() {

if (this.currentPage > 1)

this.showPage(this.currentPage - 1);

}

this.next = function() {

if (this.currentPage < this.pages) {

this.showPage(this.currentPage + 1);

}

}

this.init = function() {

var rows = document.getElementById(tableName).rows;

var records = (rows.length - 1);

this.pages = Math.ceil(records / itemsPerPage);

this.inited = true;

}

this.showPageNav = function(pagerName, positionId) {

if (! this.inited) {

alert("not inited");

return;

}

var element = document.getElementById(positionId);

var pagerHtml = '<span onclick="' + pagerName + '.prev();" class="pg-normal"> « Previous</span> ';

for (var page = 1; page <= this.pages; page++)

pagerHtml += '<span id="pg' + page + '" class="pg-normal" onclick="' + pagerName + '.showPage(' + page + ');">' + page + '</span> ';

pagerHtml += '<span onclick="'+pagerName+'.next();" class="pg-normal"> Next »</span>';

element.innerHTML = pagerHtml;


}

}

</script>
        </head>
       

                   
                  <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #7fdbd4;width:1300px;height:55px">
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
                     <a href="<%=request.getContextPath()%>/reqform?empname=<c:out value='${emp.empname}' />"class="btn btn-success"style="background-color:#7fdbd4;border-color:white;border-radius:5px;position:relative;left:285px;top:-10px"><b>New</b></a>
           

                <div class="container">
                    <h5 style="position:relative;top:-40px"class="text-center"><b>Requirement(s)</b> </h5>
                    <hr style="position:relative;top:-40px">
                   

   <label style="color:grey;font-size:12px;position:relative;left:900px;top:-80px"><i>Total No of Records:</i></label>            
 <label style="position:relative;font-size:12px;left:910px;top:-80px">${fn:length(listreq)}</label>
                  
                    <table id="tablepaging" class="table table-bordered"style="width:900px;position:relative;left:180px;top:-80px">
                        <thead>
                            <tr style="font-size:14px;width:100px;height:30px;">
                        <!--     <th >ID</th> -->
                        <th> Req No</th>
                                <th style="width:100px;">Req By</th>
                                <th>Req Date</th>
                                <th style="width:100px;">Req For</th>
                                  <th>Req Details</th>
                                <th>Authperson</th>
                               
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
                                        <c:out value="${req.status}" />
                                        </td>
                             
                                </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>

                    </table>
                    <label style="color:grey;font-size:12px;position:relative;left:850px;top:50px"><i> No of Records Displayed:</i></label>            
 <label style="position:relative;font-size:12px;left:870px;top:50px">${fn:length(listreq)}</label>
                    <div id="pageNavPosition" style="padding-top: 20px" align="center">

 </div>

                   
 
<script type="text/javascript"><!--
var pager = new Pager('tablepaging', 5);
pager.init();
pager.showPageNav('pager', 'pageNavPosition');
pager.showPage(1);
</script>



                </div>
            </div>
            </font>
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