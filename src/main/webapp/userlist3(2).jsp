<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
        <html>

        <head>
            <title> Requirement Management</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>
<font face="Verdana">
            <header>
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
                        <li><a href="<%=request.getContextPath()%>/list" class="nav-link"style="color:white;padding:30px;position:relative;top:30px;right:20px">Status Master</a></li>
                        
                
                  
                        <li><a href="<%=request.getContextPath()%>/usermaster" class="nav-link"style="color:white;padding:30px;position:relative;top:60px;right:20px">Usermaster</a></li>
            
                          
            
                        <li><a href="<%=request.getContextPath()%>/Authorisationmaster" class="nav-link"style="color:white;padding:30px;position:relative;top:90px;right:20px">Authorisationmaster</a></li>
                  
                        <li><a href="<%=request.getContextPath()%>/loginpage" class="nav-link"style="color:white;padding:30px;position:relative;top:120px;right:20px"><b>Logout</b></a></li>
     <li><a  class="nav-link"style="position:relative;bottom:360px;left:140px;color:white" onclick="closeNav() "><b>X</b></a></li>
                        
                           </ul>
                    </div>
                    </div>
            </header>
            <br>

            <div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">
                    <h3 class="text-center"><b>Requirement List</b> </h3>
                    <hr>
                    <div class="container text-left">

                     <a href="<%=request.getContextPath()%>/newauthor2" class="btn btn-success"style=" font-family:Verdana;background-color:#7fdbd4;border-color:#4CAF50;position:relative;top:2px;left:150px;border-radius:5px">Add</a>
                    </div>
                    <br>
                    <table id="user" class="table table-bordered"style="width:800px;position:relative;left:250px">
                        <thead>
                            <tr>
                        <!--     <th >ID</th> -->
                                <th>Requirement For</th>
                                <th>Active</th>
                                <th>Username</th>
                                <th>Email Id</th>
                             
                               
                            </tr>
                        </thead>
                        <tbody>
                            <!--   for (Todo todo: todos) {  -->
                            <c:forEach var="authorisation" items="${listAuthor}">

                                <tr>
                         
                                    
                                     <td>
                                         <a href="editAM2?id=<c:out value='${authorisation.id}' />"><c:out value="${authorisation.reqFor}" /></a> &nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                   
                              <td>
                              <c:out value="${authorisation.active}"/>
                              </td>
                                        
                              <td>
                                        <c:out value="${authorisation.username}" />
                                        </td>
                                    
                                         <td>
                                        <c:out value="${authorisation.emailid}" />
                                        
                              
                                </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>

                    </table>
  

   <label style="color:#4CAF50;position:relative;left:800px">Total No of Records:</label>            
 <label style="position:relative;left:810px">${fn:length(listAuthor)}</label>

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