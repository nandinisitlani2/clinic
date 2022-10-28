<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
        
            <title>Requirement Management Application</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

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
                        <li><a href="<%=request.getContextPath()%>/list" class="nav-link"style="color:white;position:relative;top:30px;right:20px">Status Master</a></li>
                        
                
                  
                        <li><a href="<%=request.getContextPath()%>/usermaster" class="nav-link"style="color:white;padding:10px;position:relative;top:50px;right:20px">Usermaster</a></li>
            
                          
            
                        <li><a href="<%=request.getContextPath()%>/Authorisationmaster" class="nav-link"style="color:white;padding:10px;position:relative;top:70px;right:20px">Authorisationmaster</a></li>
                  
                        
                          <li><a href="<%=request.getContextPath()%>/reqform" class="nav-link"style="color:white;padding:10px;position:relative;top:90px;right:20px">Requirement form</a></li> 
                            <li><a href="<%=request.getContextPath()%>/loginpage" class="nav-link"style="color:white;padding:10px;position:relative;top:120px;right:20px">Logout</a></li>
  <li><a  class="nav-link"style="position:relative;top:-240px;right:-150px;color:white" onclick="closeNav() "><b>X</b></a></li>s
   
       
                        
                           </ul>
                    </div>
                    </div>
           
      </header>
            <br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">
                        <c:if test="${st!= null}">
                            <form action="update" method="post">
                        </c:if>
                        <c:if test="${st == null}">
                            <form action="insert" method="post">
                        </c:if>

                        <caption>
                            <h2 style="font-size:20px;">
                                <c:if test="${st!= null}">
                                    Edit Status 
                                </c:if>
                                <c:if test="${st == null}">
                                    Add New Status
                                </c:if>
                            </h2>
                        </caption>
                        <c:if test="${st != null}">
                            <input type="hidden" name="id" value="<c:out value='${st.id}' />" />
                        </c:if>
           
                        
<c:if test="${st==null }"> 
                        <fieldset class="form-group">
                            <label>Status Name</label> <input type="text" onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="20" style="text-transform:uppercase "value="<c:out value='${st.statusname}' />" class="form-control" name="statusname" required="required">
                        </fieldset>
 </c:if>
<c:if test="${st!=null }">
                        <fieldset class="form-group">
                            <label>Status Name</label> <input type="text"onkeyup="this.value=this.value.toUpperCase();"class="normal" size="20" maxlength="20" style="text-transform:uppercase" value="<c:out value='${st.statusname}' />" class="form-control" name="statusname" required="required">
                        </fieldset> 
                        
                        <fieldset class="form-group">
                        
                        <c:if test="${st.hide=='YES'}">
                         <label>Hide</label> <input type="checkbox" onkeyup="this.value=this.value.toUpperCase();"style="width:15px;hieght:15px;position:relative;bottom:38px;left:108px" value="<c:out value='YES' />" class="form-control" name="hide" checked>
                         <input type="hidden" value="<c:out value='NO'/>" class="form-control" name="hide">
              </c:if>
               <c:if test="${st.hide=='NO'}">
                        <label>Hide</label> <input type="checkbox"onkeyup="this.value=this.value.toUpperCase();" style="width:15px;hieght:15px;position:relative;bottom:38px;left:108px" value="<c:out value='YES' />" class="form-control" name="hide">
                        <input type="hidden" value="<c:out value='NO'/>" class="form-control" name="hide">
                        </c:if>
                        </fieldset>
                        
</c:if>


                        
                      
<c:if test="${st!=null }">
                        <%-- <label>Hide</label> <input type="checkbox" style="width:15px;hieght:15px;position:relative;bottom:38px;left:45px" value="<c:out value='Yes' />" class="form-control" name="hide">
                         --%>
                        <button type="submit" class="btn btn-success"onclick="FbotonOn()" style="background-color:#7fdbd4; border-color:white;position:relative;top:2px;left:10px;border-radius:5px">Update</button>
                        <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" font-family:Verdana;background-color:#7fdbd4;border-color:white;color:white;width=55px;height:38px;position:relative;top:2px;left:10px;border-radius:5px">
                        <fieldset class="form-group">

              <a href="delete?id=<c:out value='${st.id}' />"onclick="return confirm('Are you sure? You want to delete this record?This action cannot be undone and you will be unable to recover the data.')"class="btn btn-success" style=" font-family:Verdana;height:38px;border-radius:5px;background-color:#7fdbd4;border-color:#4CAF50;border:2px;color:white;position:relative;padding:6px;bottom:35px;left:175px;border-radius:5px">Delete</a>
      </c:if>
      
                         
       <c:if test="${st==null }">
                        <button type="submit" class="btn btn-success"onclick="FbotonOn2()"style=" font-family:Verdana;background-color:#7fdbd4;border-color:white;border-radius:5px">Save</button>
                        <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;width=55px;position:relative;bottom:2px;left:10px;border-radius:5px">
                        <fieldset class="form-group">
                       
                
      </c:if>                     
                        </fieldset>
                        </form>
                    </div>
                </div>
            </div>
            </font>
          <center>  <p id="texto"></p></center>
        </body>

        </html>
        
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