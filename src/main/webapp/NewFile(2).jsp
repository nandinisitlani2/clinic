<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<HTML>
<HEAD>
   
            <title>Requirement Management Application</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</HEAD>

<BODY>
<font face="Verdana" >


            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #7fdbd4">
                    <div>
                        <a href="https://www.javaguides.net" class="navbar-brand"style="color:white"> Requirement tracking system</a>
                    </div>

                    <ul class="navbar-nav">
                     
                     
                          <li><a href="<%=request.getContextPath()%>/Authorisationmaster2" class="nav-link"><b>Authorisationmaster</b></a></li>
                             <li><a href="<%=request.getContextPath()%>/loginpage" class="nav-link"style="positon:relative;left:480px">Logout</a></li>
                        
                    </ul>
                </nav>
            </header>
            <br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">
                  
                        <c:if test="${authorisation!= null}">
                            <form action="updateAM2" method="post">
                        </c:if>
                        <c:if test="${authorisation == null}">
                            <form action="insertAM2" method="post">
                        </c:if>
                        <form>
                        <caption>
                            <h2 style="font-size:20px;">
                                <c:if test="${authorisation!= null}">
                                    Edit Requirement
                                </c:if>
                                <c:if test="${authorisation == null}">
                                    Add New Requirementt
                                </c:if>
                            </h2>
                        </caption>
                        <c:if test="${authorisation!= null}">
                            <input type="hidden" name="id" value="<c:out value='${authorisation.id}' />" />
                        </c:if>
      
                        
<c:if test="${authorisation==null }"> 
                                 <fieldset class="form-group">
    <label> Requirement <label>
       <select id="reqFor" name="reqFor"  style="position:relative;left:50px" >
       
       
   
       
       <option value= Hardware > Hardware</option> 
        <option value= Software> Software</option> 
         <option value= Office_Utilities> Office Utilities</option> 
       
       
  
       
        </select>
  
</fieldset>
        
<%-- <%
    try{
//Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection connection = 
         DriverManager.getConnection
            ("jdbc:mysql://127.0.0.1:3306/DBRTSS","root","nandiniS@2");

       Statement statement = connection.createStatement() ;

       resultset =statement.executeQuery("select * from usermasterr") ;
%>

<fieldset>
    <label> Username<label>
       <select id="username" name="username"  onchange="showdv();" style="position:relative;right:40px" value="<c:out value='${authorisation.username}' />">
        <%  while(resultset.next()){ %>
            <option><%= resultset.getString(4)%></option>
           
        <% } %>
        </select>
        
      
</fieldset> --%>



<fieldset>
    <label> Username<label>
       <select id="username" name="username"  onchange="changeFunc(this)" style="position:relative;left:50px" >
       
       
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
                                <fieldset id="email"class="form-group">
                            <label>Email-Id</label> <input id="emaill" type="text"onkeyup="this.value=this.value.toUpperCase();" class="normal" size="35" maxlength="20" style="text-transform:uppercase;position:relative;left:50px "value="<c:out value='${authorisation.emailId}' />" class="form-control" name="emailid" required="required">
                        </fieldset>
                  
 </c:if>
<c:if test="${authorisation!= null }">
                    <fieldset class="form-group">
    <label> Requirement <label>
       <select id="reqFor" name="reqFor"  style="position:relative;left:50px" >
       
       
   
       
       <option value= Hardware > Hardware</option> 
        <option value= Software> Software</option> 
         <option value= Office_Utilities> Office Utilities</option> 
       
       
  
       
        </select>
  
</fieldset>
                     
     <%--                  <%
    try{
//Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection connection = 
         DriverManager.getConnection
            ("jdbc:mysql://127.0.0.1:3306/DBRTSS","root","nandiniS@2");

       Statement statement = connection.createStatement() ;

       resultset =statement.executeQuery("select * from usermasterr") ;
%> --%>

<fieldset>
  <fieldset>
    <label> Username<label>
       <select id="username" name="username"value="<c:out value='${authorisation.username}' />"  onchange="changeFunc2(this)" style="position:relative;left:50px" >
       
       
       <c:forEach var="authuser" items="${author.getUserList()}">
       
       <option value="${authuser.userid}/${authuser.emailid}"  >${authuser.empname}</option> 
       
       
       </c:forEach>
       
        </select>
  
</fieldset>

<%-- <%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
</fieldset> --%>
                        <fieldset class="form-group">
                            <label>Email-Id</label> <input type="text" id="email2"onkeyup="this.value=this.value.toUpperCase();" class="normal" size="35" maxlength="20" style="text-transform:uppercase;position:relative;left:50px "value="<c:out value='${authorisation.emailid}' />" class="form-control" name="emailid" required="required">
                        </fieldset>
                       
                           <fieldset class="form-group">
                        
                        <c:if test="${authorisation.active=='YES'}">
                        <input type="hidden" value="<c:out value='NO'/>" class="form-control" name="active">
                         <label>Active</label> <input type="checkbox" onkeyup="this.value=this.value.toUpperCase();"style="width:15px;hieght:15px;position:relative;bottom:38px;left:108px" value="<c:out value='YES' />" class="form-control" name="active" checked>
                         
              </c:if>
               <c:if test="${authorisation.active=='NO'}">
                        <label>Active</label> <input type="checkbox"onkeyup="this.value=this.value.toUpperCase();" style="width:15px;hieght:15px;position:relative;bottom:38px;left:108px" value="<c:out value='YES' />" class="form-control" name="active">
                         <input type="hidden" value="<c:out value='NO'/>" class="form-control" name="active">
                        </c:if>
                        </fieldset>
</c:if>


                        
                      
<c:if test="${authorisation!=null }">
                        <%-- <label>Active</label> <input type="checkbox" style="width:15px;hieght:15px;position:relative;bottom:38px;left:45px" value="<c:out value='Yes' />" class="form-control" name="hide">
                         --%>
                        <button type="submit" class="btn btn-success"onclick="FbotonOn()" style="background-color:#7fdbd4; border-color:white;position:relative;top:2px;left:10px;border-radius:5px">Update</button>
                        <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" font-family:Verdana;background-color:#7fdbd4;border-color:white;color:white;width=55px;height:38px;position:relative;top:2px;left:10px;border-radius:5px">
                        <fieldset class="form-group">

              <a href="deleteAM?id=<c:out value='${authorisation.id}' />"onclick="return confirm('Are you sure? You want to delete this record?This action cannot be undone and you will be unable to recover the data.')"class="btn btn-success" style=" font-family:Verdana;height:38px;border-radius:5px;background-color:#7fdbd4;border-color:#4CAF50;border:2px;color:white;position:relative;padding:7px;bottom:35px;left:175px;border-radius:5px">Delete</a>
      </c:if>
      
                       
       <c:if test="${authorisation==null }">
                        <button type="submit" class="btn btn-success"onclick="FbotonOn2()"style=" font-family:Verdana;background-color:#7fdbd4;border-color:white;border-radius:5px;position:relative;top:40px">Save</button>
                        <input type="button" class="btn btn-success"value="Back" onclick="history.back(-1)"style=" font-family:Verdana;background-color:#7fdbd4;border-color:white;border-width:2px;color:white;position:relative;top:40px;width=55px;hieght:38px;position:relative;bottom:2px;left:10px;border-radius:5px">
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
        ("jdbc:mysql://127.0.0.1:3306/DBRTSS","root","nandiniS@2");
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
</script></center>