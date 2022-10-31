package statusmaster.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import statusmaster.model.AuthMaster;
import statusmaster.model.ReqForm;
import statusmaster.model.Statusmaster;
import statusmaster.model.UserMaster;
import statusmasterr.StatusmasterDAO;

/**
 * ControllerServlet.java
 * This servlet acts as a page controller for the application, handling all
 * requests from the Statusmaster.
 * @email Ramesh Fadatare
 */

@WebServlet("/")
public class StatusmasterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L ;
    private StatusmasterDAO statusmasterdao;

    public void init() {
        statusmasterdao = new StatusmasterDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        doGet(request, response);
        String action = request.getServletPath();
        try {
            switch (action) {
    case "/selectreq":
        selectreq (request, response);
        break; }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
    

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
                case "/new":
                    showNewForm(request, response);
                    break;
                case "/submitreqform":
                    submitReqForm(request, response);
                    break;
                case "/login":
                    login(request, response);
                    break;
                case "/reqform":
                    reqform(request, response);
                    break;
                case "/loginpage":
                    loginpage(request, response);
                    break;
                case "/newusermaster":
                    showNewusermasterForm(request, response);
                    break;
                case "/newauthor":
                    showNewauthorisationmasterForm(request, response);
                    break;
                case "/newauthor2":
                    showNewauthorisationmasterForm2(request, response);
                    break;
                case "/insert":
                    insertStatusmaster(request, response);
                    break;
                case "/insertUM":
                    insertUsermaster(request, response);
                    break;
                case "/insertAM":
                    insertAuthor(request, response);
                    break;
/*
* case "/insertAM2": insertAuthor2(request, response); break;
*/
                case "/delete":
               
                    deleteStatusmaster(request, response);
                    break;

   case "/deleteUM":
               
                    deleteUsermaster(request, response);
                    break;
   case "/deleteAM":
   
       deleteAuthor(request, response);
       break;
   case "/deleteAM2":
 
       deleteAuthor2(request, response);
       break;  case "/edit":
                    showEditForm(request, response);
                    break;
                case "/email":
                    email(request, response);
                    break;
                case "/editUM":
                    usereditform(request, response);
                    break;
                case "/editAM":
                    authoreditform(request, response);
                    break;
                case "/editAM2":
                    authoreditform2(request, response);
                    break;
                case "/editreq":
                    editreq(request, response);
                    break;
                case "/update":
                    updateStatusmaster(request, response);
                    break;
                case "/updateUM":
                    updateUsermaster(request, response);
                    break;
                case "/updateAM":
                    updateAuthor(request, response);
                    break;
                case "/updateAM2":
                    updateAuthor2(request, response);
                    break;
                case "/updatereq":
                    updatereq(request, response);
                    break;
                case "/list":
                    listStatusmaster(request, response);
                    break;
                case "/usermaster":
                    listUsermaster(request, response);
                    break;
                   
                case "/Authorisationmaster":
                    listAuthor(request, response);
                    break;  
                case "/Authorisationmaster2":
                    listAuthor2 (request, response);
                    break;
                case "/req":
                    listreq (request, response);
                    break;
                case "/selectreq":
                    selectreq (request, response);
                    break;
                case "/exporttoexcel":
                    exporttoexcel (request, response);
                    break;
                case "/filterform":
                    filterform (request, response);
                    break;
                case "/newreq":
                    listnewreq(request, response);
                    case "/dashboard":
                    dashboard(request, response);
                    case "/revertedreq":
                    listrevertedreq(request, response);
                    case "/acceptedreq":
                    listacceptedreq(request, response);
                    case "/completedreq":
                    listcompletedreq(request, response);
                    case "/archivedreq":
                    listarchivedreq(request, response);
            
                default:
                    loginpage(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        } catch (ClassNotFoundException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
    }
    private void listnewreq(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException, ClassNotFoundException {
 
    	String empname=request.getParameter("empname");
        Statusmaster existinguser = statusmasterdao.selectemp(empname);
   
    
        Statusmaster login = new Statusmaster();
       
        login.setempname(empname);
        if (statusmasterdao.validate3(login)) {
            //HttpSession session = request.getSession();
            // session.setAttribute("username",username);
       
              List < ReqForm > listreq =   statusmasterdao.selectNewreq2(empname);
       request.setAttribute("listreq", listreq);
       request.setAttribute("emp", existinguser);
         RequestDispatcher dispatcher = request.getRequestDispatcher("reqlist.jsp");
     
 
       
         dispatcher.forward(request, response);
       
       
       
       
       
        }
        else { 
        	List < ReqForm > listreq =   statusmasterdao.selectNewreq();
            request.setAttribute("listreq", listreq);

            request.setAttribute("emp", existinguser);
               RequestDispatcher dispatcher = request.getRequestDispatcher("reqlist.jsp");
               
               dispatcher.forward(request, response);
       	 
            }
  
        

    
   
 

}
    
    private void listrevertedreq(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException, ClassNotFoundException {
     
     	String empname=request.getParameter("empname");
        Statusmaster existinguser = statusmasterdao.selectemp(empname);
   
    
        Statusmaster login = new Statusmaster();
       
        login.setempname(empname);
        if (statusmasterdao.validate3(login)) {
            //HttpSession session = request.getSession();
            // session.setAttribute("username",username);
       
              List < ReqForm > listreq =   statusmasterdao.selectRevertedreq2(empname);
       request.setAttribute("listreq", listreq);
       request.setAttribute("emp", existinguser);
         RequestDispatcher dispatcher = request.getRequestDispatcher("reqlist.jsp");
     
 
       
         dispatcher.forward(request, response);
       
       
       
       
       
        }
        else { 
        	List < ReqForm > listreq =   statusmasterdao.selectRevertedreq();
            request.setAttribute("listreq", listreq);

            request.setAttribute("emp", existinguser);
               RequestDispatcher dispatcher = request.getRequestDispatcher("reqlist.jsp");
               
               dispatcher.forward(request, response);
       	 
            }

  
        


}

    private void listacceptedreq(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException, ClassNotFoundException {

  
    	String empname=request.getParameter("empname");
        Statusmaster existinguser = statusmasterdao.selectemp(empname);
   
    
        Statusmaster login = new Statusmaster();
       
        login.setempname(empname);
        if (statusmasterdao.validate3(login)) {
            //HttpSession session = request.getSession();
            // session.setAttribute("username",username);
       
              List < ReqForm > listreq =   statusmasterdao.selectAcceptedreq2(empname);
       request.setAttribute("listreq", listreq);
       request.setAttribute("emp", existinguser);
         RequestDispatcher dispatcher = request.getRequestDispatcher("reqlist.jsp");
     
 
       
         dispatcher.forward(request, response);
       
       
       
       
       
        }
        else { 
        	List < ReqForm > listreq =   statusmasterdao.selectAcceptedreq();
            request.setAttribute("listreq", listreq);

            request.setAttribute("emp", existinguser);
               RequestDispatcher dispatcher = request.getRequestDispatcher("reqlist.jsp");
               
               dispatcher.forward(request, response);
       	 
            }
  
        

}

    private void listcompletedreq(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException, ClassNotFoundException {
      
  
    	String empname=request.getParameter("empname");
        Statusmaster existinguser = statusmasterdao.selectemp(empname);
   
    
        Statusmaster login = new Statusmaster();
       
        login.setempname(empname);
        if (statusmasterdao.validate3(login)) {
            //HttpSession session = request.getSession();
            // session.setAttribute("username",username);
       
              List < ReqForm > listreq =   statusmasterdao.selectCompletedreq2(empname);
       request.setAttribute("listreq", listreq);
       request.setAttribute("emp", existinguser);
         RequestDispatcher dispatcher = request.getRequestDispatcher("reqlist.jsp");
     
 
       
         dispatcher.forward(request, response);
       
       
       
       
       
        }
        else { 
        	List < ReqForm > listreq =   statusmasterdao.selectCompletedreq();
            request.setAttribute("listreq", listreq);

            request.setAttribute("emp", existinguser);
               RequestDispatcher dispatcher = request.getRequestDispatcher("reqlist.jsp");
               
               dispatcher.forward(request, response);
       	 
            }
  
        

}
    private void     listarchivedreq(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException, ClassNotFoundException {
      
  
    	String empname=request.getParameter("empname");
        Statusmaster existinguser = statusmasterdao.selectemp(empname);
   
    
        Statusmaster login = new Statusmaster();
       
        login.setempname(empname);
        if (statusmasterdao.validate3(login)) {
            //HttpSession session = request.getSession();
            // session.setAttribute("username",username);
       
              List < ReqForm > listreq =   statusmasterdao.selectar2(empname);
       request.setAttribute("listreq", listreq);
       request.setAttribute("emp", existinguser);
         RequestDispatcher dispatcher = request.getRequestDispatcher("reqlist.jsp");
     
 
       
         dispatcher.forward(request, response);
       
       
       
       
       
        }
        else { 
        	List < ReqForm > listreq =   statusmasterdao.selectar();
            request.setAttribute("listreq", listreq);

            request.setAttribute("emp", existinguser);
               RequestDispatcher dispatcher = request.getRequestDispatcher("reqlist.jsp");
               
               dispatcher.forward(request, response);
       	 
            }
  
        

}




    public void login(HttpServletRequest request, HttpServletResponse response)
       throws SQLException, IOException, ServletException, ClassNotFoundException {
    final String empname = request.getParameter("empname");
        String passwordd = request.getParameter("passwordd");
        Statusmaster login = new Statusmaster();
       
        login.setempname(empname);
        login.setPasswordd(passwordd);

       
            if (statusmasterdao.validate1(login)) {
                //HttpSession session = request.getSession();
                // session.setAttribute("username",username);
             
           
           
           Statusmaster existinguser = statusmasterdao.selectemp(empname);
           List < ReqForm > listreq =   statusmasterdao.selectAllreq();
           request.setAttribute("listreq", listreq);
           request.setAttribute("emp", existinguser);
           RequestDispatcher dispatcher = request.getRequestDispatcher("dashboard.jsp");
     
       
           AuthMaster auth = new AuthMaster();
           ArrayList<AuthMaster>Authlist = statusmasterdao.selectAllauthormaster1();
           auth.setAuthList(Authlist);
           request.setAttribute("auth",auth);
       
     
           dispatcher.forward(request, response);
         
           dispatcher.forward(request, response);
           
           
           
            }
            else if (statusmasterdao.validate2(login)) {
                //HttpSession session = request.getSession();
                // session.setAttribute("username",username);
             Statusmaster existinguser = statusmasterdao.selectemp(empname);
                  List < ReqForm > listreq =   statusmasterdao.selectAllreq2(empname);
           request.setAttribute("listreq", listreq);
           request.setAttribute("emp", existinguser);
             RequestDispatcher dispatcher = request.getRequestDispatcher("dashboard.jsp");
         
     
           
             dispatcher.forward(request, response);
           
           
           
           
           
            }
            else {
             response.sendRedirect("loginunsuccess.jsp");
/* HttpSession session = request.getSession(); */
                //session.setAttribute("user", username);
                //response.sendRedirect("login.jsp");
            }
       
        }
    private void loginpage(HttpServletRequest request, HttpServletResponse response)
       throws SQLException, IOException, ServletException {
     
           RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
           dispatcher.forward(request, response);
       }
    private void dashboard(HttpServletRequest request, HttpServletResponse response)
    	       throws SQLException, IOException, ServletException {
   	 final String empname = request.getParameter("empname");
     Statusmaster existinguser = statusmasterdao.selectemp(empname);

    
     request.setAttribute("emp", existinguser);
    	           RequestDispatcher dispatcher = request.getRequestDispatcher("dashboard.jsp");
    	           dispatcher.forward(request, response);
    	       }
    private void filterform(HttpServletRequest request, HttpServletResponse response)
    	       throws SQLException, IOException, ServletException {
    	 final String empname = request.getParameter("empname");
         Statusmaster existinguser = statusmasterdao.selectemp(empname);
    
        
         request.setAttribute("emp", existinguser);
    	           RequestDispatcher dispatcher = request.getRequestDispatcher("filterform.jsp");
    	           dispatcher.forward(request, response);
    	       }
    private void reqform(HttpServletRequest request, HttpServletResponse response)
       throws SQLException, IOException, ServletException {
   
    final String empname = request.getParameter("empname");
        Statusmaster existinguser = statusmasterdao.selectemp(empname);
   
       
        request.setAttribute("emp", existinguser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("reqform.jsp");
   
        AuthMaster auth = new AuthMaster();
        ArrayList<AuthMaster>Authlist = statusmasterdao.selectAllauthormaster1();
        auth.setAuthList(Authlist);
        request.setAttribute("auth",auth);
       
       
           dispatcher.forward(request, response);
       }
    private void selectreq(HttpServletRequest request, HttpServletResponse response)
    	       throws SQLException, IOException, ServletException {
    	 final String empname = request.getParameter("empname");
     
    	    final String status2 = request.getParameter("status2");
    	    final String status3 = request.getParameter("status3");
    	    final String status4 = request.getParameter("status4");
    	    final String status5 = request.getParameter("status5");
    	    final String status6 = request.getParameter("status6");
    	    final String status7 = request.getParameter("status7");
    	    final String status8 = request.getParameter("status8");
    	    final String status9 = request.getParameter("status9");
    	    final String status10 = request.getParameter("status10");
    	    final String status11 = request.getParameter("status11");
    	
    	    final String date = request.getParameter("date");
    	   
              String[] strSplit =  date.split(" - ",2);	
        			String  start   = strSplit[0];
        			String  end   = strSplit[1];
            List < ReqForm > listreq =   statusmasterdao.selectreq2(status2,status3,status4,status5,status6,status7,status8,status9,status10,status11,start,end);
            request.setAttribute("listreq", listreq);
            request.setAttribute("status2", status2);
            request.setAttribute("status3", status3);
            request.setAttribute("status4", status4);
            request.setAttribute("status5", status5);
            request.setAttribute("status6", status6);
            request.setAttribute("status7", status7);
            request.setAttribute("status8", status8);
            request.setAttribute("status9", status9);
            request.setAttribute("status10", status10);
            request.setAttribute("status11", status11);
       
            request.setAttribute("date",date);
            Statusmaster existinguser = statusmasterdao.selectemp(empname);
            
            
            request.setAttribute("emp", existinguser);
              RequestDispatcher dispatcher = request.getRequestDispatcher("reqreport.jsp");
              dispatcher.forward(request, response);
          
      
            
            
    	       }
  
    private void exporttoexcel(HttpServletRequest request, HttpServletResponse response)
 	       throws SQLException, IOException, ServletException {
 	 final String empname = request.getParameter("empname");
  
 	    final String status2 = request.getParameter("status2");
 	   final String status3 = request.getParameter("status3");
 	  final String status4 = request.getParameter("status4");
 	  final String status5 = request.getParameter("status5");
 	  final String status6 = request.getParameter("status6");
 	  final String status7 = request.getParameter("status7");
	  final String status8 = request.getParameter("status8");
	  final String status9 = request.getParameter("status9");
	  final String status10 = request.getParameter("status10");
	  final String status11 = request.getParameter("status11");
	
 	    final String date = request.getParameter("date");
 	   
           String[] strSplit =  date.split(" - ",2);	
     			String  start   = strSplit[0];
     			String  end   = strSplit[1];
         List < ReqForm > listreq =   statusmasterdao.selectreq2(status2,status3,status4,status5,status6,status7,status8,status9,status10,status11,start,end);
         request.setAttribute("listreq", listreq);
     
         Statusmaster existinguser = statusmasterdao.selectemp(empname);
         
         RequestDispatcher dispatcher = request.getRequestDispatcher("excelreport.jsp");
         request.setAttribute("emp", existinguser);
         
           
       
   
         
           dispatcher.forward(request, response);
 	       }
    private void listUsermaster(HttpServletRequest request, HttpServletResponse response)
       throws SQLException, IOException, ServletException {
    final String empname = request.getParameter("empname");
        Statusmaster existinguser = statusmasterdao.selectemp(empname);
   
       
        request.setAttribute("emp", existinguser);
           List < Statusmaster > listUsermaster =   statusmasterdao.selectAllusermaster();
           request.setAttribute("listUsermaster", listUsermaster);
           RequestDispatcher dispatcher = request.getRequestDispatcher("userlist2.jsp");
           dispatcher.forward(request, response);
       }

    private void listStatusmaster(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        List < Statusmaster > listStatusmaster = StatusmasterDAO.selectAllstatusmaster();
        request.setAttribute("listStatusmaster", listStatusmaster);
        RequestDispatcher dispatcher = request.getRequestDispatcher("userlist.jsp");
        dispatcher.forward(request, response);
    }
    private void listAuthor(HttpServletRequest request, HttpServletResponse response)
       throws SQLException, IOException, ServletException {
    final String empname = request.getParameter("empname");
        Statusmaster existinguser = statusmasterdao.selectemp(empname);
   
       
        request.setAttribute("emp", existinguser);
           List < AuthMaster > listAuthor =   statusmasterdao.selectAllauthormaster();
           request.setAttribute("listAuthor", listAuthor);
           RequestDispatcher dispatcher = request.getRequestDispatcher("userlist3.jsp");
           dispatcher.forward(request, response);
       }
    private void listAuthor2(HttpServletRequest request, HttpServletResponse response)
       throws SQLException, IOException, ServletException {
    final String empname = request.getParameter("empname");
        Statusmaster existinguser = statusmasterdao.selectemp(empname);
   
       
        request.setAttribute("emp", existinguser);
           List < AuthMaster > listAuthor =   statusmasterdao.selectAllauthormaster2();
           request.setAttribute("listAuthor", listAuthor);
           RequestDispatcher dispatcher = request.getRequestDispatcher("userlist3.jsp");
           dispatcher.forward(request, response);
       }
    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
       throws ServletException, IOException {
    final String empname = request.getParameter("empname");
        Statusmaster existinguser = statusmasterdao.selectemp(empname);
   
       
        request.setAttribute("emp", existinguser);
           RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
           dispatcher.forward(request, response);
       }
    private void showNewusermasterForm(HttpServletRequest request, HttpServletResponse response)
       throws ServletException, IOException {
    final String empname = request.getParameter("empname");
        Statusmaster existinguser = statusmasterdao.selectemp(empname);
   
       
        request.setAttribute("emp", existinguser);
           RequestDispatcher dispatcher = request.getRequestDispatcher("userform2.jsp");
           dispatcher.forward(request, response);
       }
    private void showNewauthorisationmasterForm(HttpServletRequest request, HttpServletResponse response)
       throws ServletException, IOException {
    final String empname = request.getParameter("empname");
        Statusmaster existinguser = statusmasterdao.selectemp(empname);
   
       
        request.setAttribute("emp", existinguser);
           RequestDispatcher dispatcher = request.getRequestDispatcher("NewFile.jsp");
           AuthMaster auth = new AuthMaster();
           ArrayList<UserMaster> urerList  =  statusmasterdao.selectAllusermaster1();
           auth.setUserList(urerList);
           request.setAttribute("author", auth);
           dispatcher.forward(request, response);}
   
   
           private void showNewauthorisationmasterForm2(HttpServletRequest request, HttpServletResponse response)
               throws ServletException, IOException {
            final String empname = request.getParameter("empname");
               Statusmaster existinguser = statusmasterdao.selectemp(empname);
           
             
               request.setAttribute("emp", existinguser);
                   RequestDispatcher dispatcher = request.getRequestDispatcher("NewFile(2).jsp");
                   AuthMaster auth = new AuthMaster();
                   ArrayList<UserMaster> urerList  =  statusmasterdao.selectAllusermaster1();
                   auth.setUserList(urerList);
                   request.setAttribute("author", auth);
                   dispatcher.forward(request, response);
       }
       private void showEditForm(HttpServletRequest request, HttpServletResponse response)
       throws SQLException, ServletException, IOException {
        final String empname = request.getParameter("empname");
           Statusmaster existinguser = statusmasterdao.selectemp(empname);
       
         
           request.setAttribute("emp", existinguser);
        int id = Integer.parseInt(request.getParameter("id"));
           Statusmaster existingstatus = statusmasterdao.selectstatus(id);
           RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
           request.setAttribute("st", existingstatus);
         
            dispatcher.forward(request, response);

       }
       private void usereditform(HttpServletRequest request, HttpServletResponse response)
           throws SQLException, ServletException, IOException {
        final String empname = request.getParameter("empname");
           Statusmaster existinguser = statusmasterdao.selectemp(empname);
       
         
           request.setAttribute("emp", existinguser);
            int id = Integer.parseInt(request.getParameter("id"));
               Statusmaster existinguser2 = statusmasterdao.selectUser(id);
           
               RequestDispatcher dispatcher = request.getRequestDispatcher("userform2.jsp");
               request.setAttribute("usermaster", existinguser2);
             
               dispatcher.forward(request, response);

           }
       private void authoreditform(HttpServletRequest request, HttpServletResponse response)
           throws SQLException, ServletException, IOException {
        final String empname = request.getParameter("empname");
           Statusmaster existinguser = statusmasterdao.selectemp(empname);
       
         
           request.setAttribute("emp", existinguser);
            int id = Integer.parseInt(request.getParameter("id"));
           
             AuthMaster author =
                 statusmasterdao.selectAuthorisation(id);
           
AuthMaster auth=new AuthMaster();
ArrayList<UserMaster> urerList = statusmasterdao.selectAllusermaster1();
auth.setUserList(urerList);
   request.setAttribute("authorisation",author);
   
               request.setAttribute("author",auth);
             
               
               RequestDispatcher dispatcher = request.getRequestDispatcher("NewFile.jsp");
           
             
               dispatcher.forward(request, response);

           }
       private void authoreditform2(HttpServletRequest request, HttpServletResponse response)
           throws SQLException, ServletException, IOException {
        final String empname = request.getParameter("empname");
           Statusmaster existinguser = statusmasterdao.selectemp(empname);
       
         
           request.setAttribute("emp", existinguser);
            int id = Integer.parseInt(request.getParameter("id"));
             AuthMaster author =
                 statusmasterdao.selectAuthorisation(id);
AuthMaster auth=new AuthMaster();
ArrayList<UserMaster> urerList = statusmasterdao.selectAllusermaster1();
auth.setUserList(urerList);
   request.setAttribute("authorisation",author);
               request.setAttribute("author",auth);
               RequestDispatcher dispatcher = request.getRequestDispatcher("NewFile(2).jsp");
           
             
               dispatcher.forward(request, response);

           }
       private void listreq(HttpServletRequest request, HttpServletResponse response)
           throws SQLException, IOException, ServletException, ClassNotFoundException {
    	   String empname=request.getParameter("empname");
           Statusmaster existinguser = statusmasterdao.selectemp(empname);
      
       
           Statusmaster login = new Statusmaster();
          
           login.setempname(empname);
           if (statusmasterdao.validate3(login)) {
               //HttpSession session = request.getSession();
               // session.setAttribute("username",username);
          
                 List < ReqForm > listreq =   statusmasterdao.selectAllreq2(empname);
          request.setAttribute("listreq", listreq);
          request.setAttribute("emp", existinguser);
            RequestDispatcher dispatcher = request.getRequestDispatcher("reqlist.jsp");
        
    
          
            dispatcher.forward(request, response);
          
          
          
          
          
           }
           else { 
                
                  List < ReqForm > listreq =   statusmasterdao.selectAllreq();
                  request.setAttribute("listreq", listreq);
                  RequestDispatcher dispatcher = request.getRequestDispatcher("reqlist.jsp"); 
                  request.setAttribute("emp", existinguser);
              
                  dispatcher.forward(request, response);}}
    
           
      
       
       private void editreq(HttpServletRequest request, HttpServletResponse response)
	    	    throws SQLException, ServletException, IOException {
	    	final String empname = request.getParameter("empname");
	    	final String username = request.getParameter("username");
	        Statusmaster existinguser = statusmasterdao.selectemp(empname);
		     
	        AuthMaster existingauthor = statusmasterdao.selectAuthor(username);
	     
	  
	    	    	int id = Integer.parseInt(request.getParameter("id"));
	    	   
	    	    	  ReqForm req = statusmasterdao.selectreq(id);
	    	    
	    
	    	    	
						    request.setAttribute("req",req);
						    request.setAttribute("auth2", existingauthor);
						
					        AuthMaster auth = new AuthMaster();
			    	        ArrayList<AuthMaster>Authlist = statusmasterdao.selectAllauthormaster1();
			    	        auth.setAuthList(Authlist);
			    	        request.setAttribute("auth",auth);
	    	    	    
	    	        RequestDispatcher dispatcher = request.getRequestDispatcher("reqform.jsp");
	    	        request.setAttribute("emp", existinguser);
	    	     
	    	       
	    	        dispatcher.forward(request, response);

	    	    }
       
       private void email(HttpServletRequest request, HttpServletResponse response)
           throws SQLException, ServletException, IOException {
           String username= request.getParameter("username");
               String email = statusmasterdao.selectEmail(username);
         
               request.setAttribute("authorisation.emailid",email);
             
             

           }
    private void insertStatusmaster(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
    final String empname = request.getParameter("empname");
        Statusmaster existinguser = statusmasterdao.selectemp(empname);
   
       
        request.setAttribute("emp", existinguser);
        String statusname = request.getParameter("statusname");
        String hide = request.getParameter("hide");
        Statusmaster newstatus = new Statusmaster(statusname,hide);
        StatusmasterDAO.insertStatus(newstatus);
        response.sendRedirect("list");}
        private void submitReqForm(HttpServletRequest request, HttpServletResponse response)
           throws SQLException, IOException, ServletException, ClassNotFoundException {
          String reqby = request.getParameter("reqby");
           String reqdate= request.getParameter("reqdate").toString();
           String reqfor = request.getParameter("reqfor");
           String[] strSplit =  reqfor.split("/");
			
     			String  spltreqfor   = strSplit[0];
           String authperson=request.getParameter("authperson");
           String reqdetails=request.getParameter("reqdetails");
           String status= request.getParameter("status");
     
   
           ReqForm newform = new ReqForm(reqby, reqdate,  spltreqfor, authperson, reqdetails, status);
           StatusmasterDAO.insertReqForm(newform);
           String empname=request.getParameter("empname");
           Statusmaster existinguser = statusmasterdao.selectemp(empname);
      
       
           Statusmaster login = new Statusmaster();
          
           login.setempname(empname);
           if (statusmasterdao.validate3(login)) {
               //HttpSession session = request.getSession();
               // session.setAttribute("username",username);
          
                 List < ReqForm > listreq =   statusmasterdao.selectAllreq2(empname);
          request.setAttribute("listreq", listreq);
          request.setAttribute("emp", existinguser);
            RequestDispatcher dispatcher = request.getRequestDispatcher("reqlist.jsp");
        
    
          
            dispatcher.forward(request, response);
          
          
          
          
          
           }
           else { 
                
                  List < ReqForm > listreq =   statusmasterdao.selectAllreq();
                  request.setAttribute("listreq", listreq);
                  RequestDispatcher dispatcher = request.getRequestDispatcher("reqlist.jsp"); 
                  request.setAttribute("emp", existinguser);
              
                  dispatcher.forward(request, response);}}
    
         
             
 
    private void insertUsermaster(HttpServletRequest request, HttpServletResponse response)
       throws SQLException, IOException, ServletException {

   
       
     
           String empname2 = request.getParameter("empname2");
         
          String ehide=request.getParameter("ehide");
          String loginname=request.getParameter("loginname");
           String passwordd = request.getParameter("passwordd");
     
           String emailid= request.getParameter("emailid");
           String user = request.getParameter("user");
           Statusmaster newuser = new Statusmaster(empname2,ehide,loginname,passwordd,emailid,user);
           StatusmasterDAO.insertUser(newuser);
           final String empname = request.getParameter("empname");
           Statusmaster existinguser = statusmasterdao.selectemp(empname);
       
         
           request.setAttribute("emp", existinguser);
               List < Statusmaster > listUsermaster =   statusmasterdao.selectAllusermaster();
               request.setAttribute("listUsermaster", listUsermaster);
               RequestDispatcher dispatcher = request.getRequestDispatcher("userlist2.jsp");
               dispatcher.forward(request, response);
 
       }
    private void insertAuthor(HttpServletRequest request, HttpServletResponse response)
       throws SQLException, IOException, ServletException {
    	 String reqFor = request.getParameter("reqFor");
	        String active= request.getParameter("active");
	        String username = request.getParameter("username");
//	        String[] strSplit =  username.split("/");
//			
//			String  spltusername   = strSplit[0];
	        String emailid= request.getParameter("emailid");
//	        String contactperson = request.getParameter("contactperson");
//         String[] strcontactperson =  contactperson.split("/");
//			String  spltcontactperson   = strcontactperson[0];
	       
	        AuthMaster newauthor = new AuthMaster(reqFor,active,username,emailid);
	        StatusmasterDAO.insertAuthorisation(newauthor);
	    	final String empname = request.getParameter("empname");
	        Statusmaster existinguser = statusmasterdao.selectemp(empname);
		     
	       
	        request.setAttribute("emp", existinguser);
	        List < AuthMaster > listAuthor =   statusmasterdao.selectAllauthormaster();
	        request.setAttribute("listAuthor", listAuthor);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("userlist3.jsp");
	        dispatcher.forward(request, response);
		
    	
    	
    	
       }

/*
* private void insertAuthor2(HttpServletRequest request, HttpServletResponse
* response) throws SQLException, IOException { final String empname =
* request.getParameter("empname"); Statusmaster existinguser =
* statusmasterdao.selectemp(empname);
*
*
* request.setAttribute("emp", existinguser); String reqFor =
* request.getParameter("reqFor"); String active=
* request.getParameter("active"); String username =
* request.getParameter("username"); String emailid=
* request.getParameter("emailid"); AuthMaster newauthor = new
* AuthMaster(reqFor,active,username,emailid);
* StatusmasterDAO.insertAuthorisation(newauthor);
* response.sendRedirect("Authorisationmaster2");
*/
   
    private void updateStatusmaster(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
    final String empname = request.getParameter("empname");
        Statusmaster existinguser = statusmasterdao.selectemp(empname);
   
       
        request.setAttribute("emp", existinguser);
    int id = Integer.parseInt(request.getParameter("id"));
        String statusname = request.getParameter("statusname");
        String hide = request.getParameter("hide");
       
        Statusmaster book = new Statusmaster(id,statusname,hide);
        StatusmasterDAO.updateStatus(book);
        response.sendRedirect("list");
    }
    private void updateUsermaster(HttpServletRequest request, HttpServletResponse response)
       throws SQLException, IOException, ServletException {



        int id = Integer.parseInt(request.getParameter("id"));
           String empname2 = request.getParameter("empname2");
           String ehide = request.getParameter("ehide");
           String loginname = request.getParameter("loginname");
           String passwordd = request.getParameter("passwordd");
           String emailid = request.getParameter("emailid");
           String user = request.getParameter("user");
           Statusmaster book = new Statusmaster(id,empname2,ehide,loginname,passwordd,emailid,user);
           StatusmasterDAO.updateUser(book);
           final String empname = request.getParameter("empname");
           Statusmaster existinguser = statusmasterdao.selectemp(empname);
       
         
           request.setAttribute("emp", existinguser);
               List < Statusmaster > listUsermaster =   statusmasterdao.selectAllusermaster();
               request.setAttribute("listUsermaster", listUsermaster);
               RequestDispatcher dispatcher = request.getRequestDispatcher("userlist2.jsp");
               dispatcher.forward(request, response);
       
       }
    private void updateAuthor(HttpServletRequest request, HttpServletResponse response)
       throws SQLException, IOException, ServletException {
   
        int id = Integer.parseInt(request.getParameter("id"));
           String reqFor = request.getParameter("reqFor");
           String active = request.getParameter("active");
           String username = request.getParameter("username");
	        String[] strSplit =  username.split("/");
			
			String  spltusername   = strSplit[0];
	        String emailid= request.getParameter("emailid");
//	        String contactperson = request.getParameter("contactperson");
//        String[] strcontactperson =  contactperson.split("/");
//			String  spltcontactperson   = strcontactperson[0];
//		       String cemailid= request.getParameter("cemailid");
   
           
           AuthMaster book = new AuthMaster(id,reqFor,active,spltusername,emailid);
           StatusmasterDAO.updateauthor(book);
        final String empname = request.getParameter("empname");
           Statusmaster existinguser = statusmasterdao.selectemp(empname);
       
         
           request.setAttribute("emp", existinguser);
           List < AuthMaster > listAuthor =   statusmasterdao.selectAllauthormaster();
           request.setAttribute("listAuthor", listAuthor);
           RequestDispatcher dispatcher = request.getRequestDispatcher("userlist3.jsp");
           dispatcher.forward(request, response);
       }
    private void updateAuthor2(HttpServletRequest request, HttpServletResponse response)
       throws SQLException, IOException {
    final String empname = request.getParameter("empname");
        Statusmaster existinguser = statusmasterdao.selectemp(empname);
   
       
        request.setAttribute("emp", existinguser);
        int id = Integer.parseInt(request.getParameter("id"));
           String reqFor = request.getParameter("reqFor");
           String active = request.getParameter("active");
           String username = request.getParameter("username");
           String emailid = request.getParameter("emailid");
   
           
           AuthMaster book = new AuthMaster(id,reqFor,active,username,emailid);
           StatusmasterDAO.updateauthor(book);
           response.sendRedirect("Authorisationmaster2");
       }
    private void updatereq(HttpServletRequest request, HttpServletResponse response)
       throws SQLException, IOException,ServletException, ClassNotFoundException {
   
    int id = Integer.parseInt(request.getParameter("id"));
           String reqby = request.getParameter("reqby");
           String reqdate = request.getParameter("reqdate");
           String reqfor = request.getParameter("reqfor");
       
           String[] strSplit =  reqfor.split("/");
			
     			String  spltreqfor   = strSplit[0];
           String authperson = request.getParameter("authperson");
           String reqdetails = request.getParameter("reqdetails");
           String status = request.getParameter("status");
           String assnto = request.getParameter("assnto");
           String authpersonremarks = request.getParameter("authpersonremarks");
           String accdate = request.getParameter("accdate");
           String assnfromremarks = request.getParameter("assnfromremarks");
           String assntodate = request.getParameter("assntodate");
           String assnfrom = request.getParameter("assnfrom");
           ReqForm book = new ReqForm(id,reqby,reqdate,spltreqfor,authperson,reqdetails,status,assnto,authpersonremarks,accdate,assnfromremarks,assntodate,assnfrom);
           StatusmasterDAO.updatereq(book);
           String empname=request.getParameter("empname");
        Statusmaster existinguser = statusmasterdao.selectemp(empname);
   
    
        Statusmaster login = new Statusmaster();
       
        login.setempname(empname);
        if (statusmasterdao.validate3(login)) {
            //HttpSession session = request.getSession();
            // session.setAttribute("username",username);
       
              List < ReqForm > listreq =   statusmasterdao.selectAllreq2(empname);
       request.setAttribute("listreq", listreq);
       request.setAttribute("emp", existinguser);
         RequestDispatcher dispatcher = request.getRequestDispatcher("reqlist.jsp");
     
 
       
         dispatcher.forward(request, response);
       
       
       
       
       
        }
        else { 
             
               List < ReqForm > listreq =   statusmasterdao.selectAllreq();
               request.setAttribute("listreq", listreq);
               RequestDispatcher dispatcher = request.getRequestDispatcher("reqlist.jsp"); 
               request.setAttribute("emp", existinguser);
           
               dispatcher.forward(request, response);}}
 
     
     
    
             
           
 
       
    private void deleteStatusmaster(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
    final String empname = request.getParameter("empname");
        Statusmaster existinguser = statusmasterdao.selectemp(empname);
   
       
        request.setAttribute("emp", existinguser);
    int id = Integer.parseInt(request.getParameter("id"));
        statusmasterdao.deleteStatus(id);
         response.sendRedirect("list");

    }
    private void deleteUsermaster(HttpServletRequest request, HttpServletResponse response)
       throws SQLException, IOException {
    final String empname = request.getParameter("empname");
        Statusmaster existinguser = statusmasterdao.selectemp(empname);
   
       
        request.setAttribute("emp", existinguser);
        int id = Integer.parseInt(request.getParameter("id"));
           statusmasterdao.deleteUser(id);
            response.sendRedirect("usermaster");

       }
    private void deleteAuthor(HttpServletRequest request, HttpServletResponse response)
       throws SQLException, IOException {
    final String empname = request.getParameter("empname");
        Statusmaster existinguser = statusmasterdao.selectemp(empname);
   
       
        request.setAttribute("emp", existinguser);
        int id = Integer.parseInt(request.getParameter("id"));
           statusmasterdao.deleteauthor(id);
            response.sendRedirect("Authorisationmaster");

       }private void deleteAuthor2(HttpServletRequest request, HttpServletResponse response)
           throws SQLException, IOException {
        final String empname = request.getParameter("empname");
           Statusmaster existinguser = statusmasterdao.selectemp(empname);
       
         
           request.setAttribute("emp", existinguser);
        int id = Integer.parseInt(request.getParameter("id"));
           statusmasterdao.deleteauthor(id);
            response.sendRedirect("Authorisationmaster2");

       }
   
}