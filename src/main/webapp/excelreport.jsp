<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.List" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
   <%@ page import="statusmaster.model.ReqForm" %>
    <%
            List< ReqForm > listreq  = (List<ReqForm>)request.getAttribute("listreq");
                  if (listreq != null) {
                      response.setContentType("application/vnd.ms-excel");
                  
                      response.setHeader("Content-Disposition", "inline; filename="+ "report.xls");
                  }
            for(ReqForm r: listreq){
            %>
           
         <%
            }
            %>
       <html>


         
        <font face="Verdana">

                <div class="container">
                    <h5 class="text-center"><b>Requirement(s)</b> </h5>
           
                    <table id="user" class="table table-bordered"style="width:850px;position:relative;left:190px;top:30px;border:black; border-width:10px; border-style:outset;">
                        <thead style="border:black; border-width:2px; border-style:outset;">
                            <tr   style="border:black; border-width:2px; border-style:outset;font-size:14px">
                   
                        <th > Req No</th>
                                <th>Req By</th>
                                <th>Req Date</th>
                                <th>Req For</th>
                                  <th>Req Details</th>
                                <th>Authperson</th>
                                  <th>Accepted Date</th>
                                 <th>Contact Person</th>
                                  <th>Completed Date</th>
                                  <th>Status</th>
                             
                               
                            </tr>
                        </thead>
                        <tbody style="border:black; border-width:2px; border-style:outset;">
                        
                            <c:forEach var="req" items="${listreq}">

                                <tr style="border:black; border-width:2px; border-style:outset;font-size:12px">
                             
                                     <td>
                                     
                                       <c:out value="Req000${req.id}" />
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



   <label style="color:grey;font-size:12px;position:relative;left:900px;top:30px"><i>Total No of Records:</i></label>            
 <label style="position:relative;font-size:12px;left:910px;top:30px">${fn:length(listreq)}</label>

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
