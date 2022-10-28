package statusmasterr;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.Statement;

import statusmaster.model.AuthMaster;
import statusmaster.model.ReqForm;
import statusmaster.model.Statusmaster;
import statusmaster.model.UserMaster;
/**
 * AbstractDAO.java This DAO class provides CRUD database operations for the
 * table statusmaster in the database.
 * 
 *
 *
 */
public class StatusmasterDAO {
	
	 private static String jdbcURL = "jdbc:mysql://127.0.0.1:3306/DBRTSS";
	 private static String jdbcUserstatusname = "root"; 
	 private static String jdbcPassword = "nandiniS@2";
	 
	
	/*
	 * private static String jdbcURL =
	 * "jdbc:mysql://localhost:3306/dbrtss?useSSL=false"; private static String
	 * jdbcUserstatusname = "root"; private static String jdbcPassword =
	 * "Abhilash@123";
	 */
	
    
    private static final String INSERT_statusmaster_SQL = "INSERT INTO statusmaster" + "  (statusname,hide) VALUES " +
        " (?, ?);";

    private static final String SELECT_USER_BY_ID = "select id,statusname,hide from statusmaster where id =?";
    private static final String SELECT_ALL_statusmaster = "select * from statusmaster";
    private static final String DELETE_statusmaster_SQL = "delete from statusmaster where id = ?;";
    private static final String UPDATE_statusmaster_SQL = "update statusmaster set statusname = ?,hide= ? where id = ?;";
    
    
    private static final String INSERT_usermaster_SQL = "INSERT INTO usermasterr" + "  (empname,ehide,loginname,passwordd,user,emailid) VALUES " +
            " (?, ?,?,?,?,?);";

        private static final String SELECT_from_usermaster = "select eid,empname,ehide,loginname,passwordd,emailid,user,ConDate,MonDate from usermasterr where eid =?";
        private static final String SELECT_ALL_usermaster = "select * from usermasterr order by empname";
        private static final String DELETE_usermaster_SQL = "delete from usermasterr where eid = ?;";
        private static final String UPDATE_usermaster_SQL = "update usermasterr set empname = ?,ehide= ?,loginname= ?,passwordd= ?,emailid= ?,user= ? where eid = ?;";
        private static final String INSERT_authorisation_SQL = "INSERT INTO authorisationmaster" + "  (reqFor,active,username,emailid,contactperson,cemailid) VALUES " +
                " (?, ?,?,?,?,?);";

            private static final String SELECT_from_authorisationmaster = "select id,reqFor,active,username,emailid,cemailid,contactperson,ConDate,MonDate from authorisationmaster where id =?";
            private static final String SELECT_ALL_authorisationmaster = "select * from authorisationmaster order by username";
            private static final String DELETE_authorisationmaster_SQL = "delete from authorisationmaster where id = ?;";
            private static final String UPDATE_authorisationmaster_SQL = "update authorisationmaster set reqFor = ?,active= ?,username=?,emailid=?,contactperson=?,cemailid=? where id = ?;";
private static final String SELECT_EMAIL="select emailid from usermasterr where empname=?;";
    public StatusmasterDAO() {}

    protected static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUserstatusname, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }
    public boolean validate1(Statusmaster login) throws ClassNotFoundException {
        boolean status = false;
        try (Connection connection = getConnection();
        		PreparedStatement preparedStatement = connection.prepareStatement("select * from usermasterr where empname = ? and passwordd = ? and ehide=? and user=?"))
         {
				

				 
				 
                preparedStatement.setString(1, login.getempname());
                preparedStatement.setString(2, login.getPasswordd());
                preparedStatement.setString(3, "No");
                preparedStatement.setString(4, "Admin");
                System.out.println(preparedStatement);
                ResultSet rs2 = preparedStatement.executeQuery();
                status = rs2.next();

            } catch (SQLException e) {
                // process sql exception
                printSQLException(e);
            }
            return status;
        }
    public boolean validate2(Statusmaster login) throws ClassNotFoundException {
        boolean status = false;
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement("select * from usermasterr where empname = ? and passwordd = ? and ehide=? and user=?"))
         {
				

				 
				 
                preparedStatement.setString(1, login.getempname());
                preparedStatement.setString(2, login.getPasswordd());
                preparedStatement.setString(3, "No");
                preparedStatement.setString(4, "User");
                System.out.println(preparedStatement);
                ResultSet rs2 = preparedStatement.executeQuery();
                status = rs2.next();

            } catch (SQLException e) {
                // process sql exception
                printSQLException(e);
            }
            return status;
        }
    public boolean validate3(Statusmaster login) throws ClassNotFoundException {
        boolean status = false;
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement("select * from usermasterr where empname = ? and user=?"))
         {
				

				 
				 
                preparedStatement.setString(1, login.getempname());
                preparedStatement.setString(2, "User");
            
                System.out.println(preparedStatement);
                ResultSet rs2 = preparedStatement.executeQuery();
                status = rs2.next();

            } catch (SQLException e) {
                // process sql exception
                printSQLException(e);
            }
            return status;
        }
    public static void insertStatus(Statusmaster st) throws SQLException {
        System.out.println(INSERT_statusmaster_SQL);
        // try-with-resource statement will auto close the connection.
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_statusmaster_SQL)) {
        	String status=st.getstatusname();
        	String statusname=st.getstatusname();
        	Statement stmt=connection.createStatement();
        	ResultSet rs=stmt.executeQuery("select statusname from statusmaster where statusname='"+statusname+"'");
        	int count=0;
        	while(rs.next()) {
        		count++;
        	}
        	
        	if(count>0) {
        		System.out.println("statusname is duplicate");
        	}
        	else {
			  preparedStatement.setString(1, status);
			  preparedStatement.setString(2, "NO");
			 
			
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        }} catch (SQLException e) {
            printSQLException(e);
        }
    }
    
    public static void insertUser(Statusmaster st) throws SQLException {
        System.out.println(INSERT_usermaster_SQL);
        // try-with-resource statement will auto close the connection.
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_usermaster_SQL)) {
        	String employee=st.getempname();
      
        	Statement stmt=connection.createStatement();
        	ResultSet rs=stmt.executeQuery("select empname from usermasterr where empname='"+employee+"'");
        	int count=0;
        	while(rs.next()) {
        		count++;
        	}
        	
        	if(count>0) {
        		System.out.println("employee name  is duplicate");
        	}
        	else {
    
        	
			  preparedStatement.setString(1, st.getempname());
			  preparedStatement.setString(2, "No");
			  preparedStatement.setString(3, st.getLoginname());
			  preparedStatement.setString(4, st.getPasswordd());
			  preparedStatement.setString(5, st.getUser());
			  preparedStatement.setString(6, st.getEmailid());
			  
			 
				/*
				 * preparedStatement.setString(1, "abc"); preparedStatement.setString(2, "yes");
				 */
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } }catch (SQLException e) {
            printSQLException(e);
        }
    }
    public static void insertAuthorisation(AuthMaster authorisation) throws SQLException {
        System.out.println(INSERT_authorisation_SQL);
        // try-with-resource statement will auto close the connection.
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_authorisation_SQL)) {
        	String reqfor=authorisation.getReqFor();
      
        	Statement stmt=connection.createStatement();
      
           	ResultSet rs=stmt.executeQuery("select * from authorisationmaster where reqfor='"+reqfor+"' AND active='Yes'");
        	int count=0;
        
        	while(rs.next()) {
        		count++;
        	}
       
        	if(count>0) {
        		System.out.println("requirement  name  is duplicate");
        	}
        	else {
    
        	
			  preparedStatement.setString(1, authorisation.getReqFor());
			  preparedStatement.setString(2, "Yes");
			  preparedStatement.setString(3, authorisation.getUsername());
			  preparedStatement.setString(4, authorisation.getemailid());
			  preparedStatement.setString(5, authorisation.getContactperson());
			  preparedStatement.setString(6, authorisation.getCemailid());
			 
				/*
				 * preparedStatement.setString(1, "abc"); preparedStatement.setString(2, "yes");
				 */
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } }catch (SQLException e) {
            printSQLException(e);
        }
    }
    public static void insertReqForm(ReqForm req) throws SQLException {
        System.out.println("INSERT INTO req" + "  (reqby,reqdate,reqfor,authperson,reqdetails) VALUES " +
                " (?, ?,?,?,?);");
        // try-with-resource statement will auto close the connection.
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO req" + "  (reqby,reqdate,reqfor,authperson,reqdetails,status,assnto) VALUES " +
                " (?, ?,?,?,?,?,?);")) {
        
    
        	
			  preparedStatement.setString(1, req.getReqby());
			  preparedStatement.setString(2, req.getReqdate());
			  preparedStatement.setString(3, req.getReqfor());
			  preparedStatement.setString(4, req.getAuthperson());
			  preparedStatement.setString(5, req.getReqdetails());
			  preparedStatement.setString(6, req.getStatus());
			  preparedStatement.setString(7, req.getAssnto());
				/*
				 * preparedStatement.setString(1, "abc"); preparedStatement.setString(2, "yes");
				 */
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }}
    
    public Statusmaster selectemp(String empname) {
        Statusmaster emp = null;
            // Step 1: Establishing a Connection
            try (Connection connection = getConnection();
                // Step 2:Create a statement using connection object
                PreparedStatement preparedStatement = connection.prepareStatement("select * from usermasterr where empname=?");) {
                preparedStatement.setString(1, empname);               
                
               System.out.println(preparedStatement);
                // Step 3: Execute the query or update query
                ResultSet rs = preparedStatement.executeQuery();

                // Step 4: Process the ResultSet object.
                while (rs.next()) {
                
                 
            int eid=rs.getInt("eid");
                    String ehide = rs.getString("ehide");
                    String user=rs.getString("user");
                    String loginname = rs.getString("loginname");
                    String passwordd = rs.getString("passwordd");
                    String emailid = rs.getString("emailid");
              
               
                    emp= new Statusmaster(eid,empname,ehide,loginname,passwordd,emailid,user);
                
                }
            } catch (SQLException e) {
                printSQLException(e);
            }
            return emp;}
    public ReqForm selectreq(int id) {
        ReqForm rf = null;
            // Step 1: Establishing a Connection
            try (Connection connection = getConnection();
                // Step 2:Create a statement using connection object
                PreparedStatement preparedStatement = connection.prepareStatement("select * from req where id=?");) {
                preparedStatement.setInt(1, id);
               
                
               System.out.println(preparedStatement);
                // Step 3: Execute the query or update query
                ResultSet rs = preparedStatement.executeQuery();

                // Step 4: Process the ResultSet object.
                while (rs.next()) {
                
                 
            String reqby=rs.getString("reqby");
                    String reqdate = rs.getString("reqdate");
                    String reqfor = rs.getString("reqfor");
                    String authperson = rs.getString("authperson");
                    String reqdetails = rs.getString("reqdetails");
                    String status = rs.getString("status");
                
                    String assnto = rs.getString("assnto");
                    String authpersonremarks= rs.getString("authpersonremarks");
                    String accdate= rs.getString("accdate");
                    String assnfromremarks= rs.getString("assnfromremarks");
                    String assntodate= rs.getString("assntodate");
                    String assnfrom= rs.getString("assnfrom");
           rf= new ReqForm(id,reqby,reqdate,reqfor,authperson,reqdetails,status,assnto,authpersonremarks,accdate,assnfromremarks,assntodate,assnfrom);
                
                }
            } catch (SQLException e) {
                printSQLException(e);
            }
            return rf;}
   
    public Statusmaster selectstatus(int id) {
    Statusmaster st = null;
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);) {
            preparedStatement.setInt(1, id);
           
            
           System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
            
                String statusname = rs.getString("statusname");
                String hide = rs.getString("hide");
                st = new Statusmaster(id,statusname,hide);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return st;
    }
    public Statusmaster selectUser(int id) {
        Statusmaster usermaster = null;
            // Step 1: Establishing a Connection
            try (Connection connection = getConnection();
                // Step 2:Create a statement using connection object
                PreparedStatement preparedStatement = connection.prepareStatement(SELECT_from_usermaster);) {
                preparedStatement.setInt(1, id);
               
                
               System.out.println(preparedStatement);
                // Step 3: Execute the query or update query
                ResultSet rs = preparedStatement.executeQuery();

                // Step 4: Process the ResultSet object.
                while (rs.next()) {
                
                    String empname = rs.getString("empname");
                    String ehide = rs.getString("ehide");
                    String loginname = rs.getString("loginname");
                    String passwordd = rs.getString("passwordd");
                    String emailid = rs.getString("emailid");
                    String user=rs.getString("user");
             
                    usermaster= new Statusmaster(id,empname,ehide,loginname,passwordd,emailid,user);
                }
            } catch (SQLException e) {
                printSQLException(e);
            }
            return usermaster;
        }
    public AuthMaster selectAuthorisation(int id) {
        AuthMaster authorisation = null;
            // Step 1: Establishing a Connection
            try (Connection connection = getConnection();
                // Step 2:Create a statement using connection object
                PreparedStatement preparedStatement = connection.prepareStatement(SELECT_from_authorisationmaster);) {
                preparedStatement.setInt(1, id);
               
                
               System.out.println(preparedStatement);
                // Step 3: Execute the query or update query
                ResultSet rs = preparedStatement.executeQuery();

                // Step 4: Process the ResultSet object.
                while (rs.next()) {
                
                    String reqFor = rs.getString("reqFor");
                    String active = rs.getString("active");
                    String username = rs.getString("username");
                    String emailid = rs.getString("emailid");
                    String contactperson = rs.getString("contactperson");
                    String cemailid = rs.getString("cemailid");
                    String ConDate = rs.getDate("ConDate").toString();
                    String MonDate = rs.getDate("MonDate").toString();
                    authorisation= new AuthMaster(id,reqFor,active,username,emailid,contactperson,cemailid,ConDate,MonDate);
                }
            } catch (SQLException e) {
                printSQLException(e);
            }
            return authorisation;
        }

    public AuthMaster selectAuthor(String username) {
        AuthMaster authorisation = null;
            // Step 1: Establishing a Connection
            try (Connection connection = getConnection();
                // Step 2:Create a statement using connection object
                PreparedStatement preparedStatement = connection.prepareStatement(    "select id,reqFor,active,username,emailid,cemailid,contactperson,ConDate,MonDate from authorisationmaster where username =?");) {
                preparedStatement.setString(1, username);
               
                
               System.out.println(preparedStatement);
                // Step 3: Execute the query or update query
                ResultSet rs = preparedStatement.executeQuery();

                // Step 4: Process the ResultSet object.
                while (rs.next()) {
                int id=rs.getInt("id");
                    String reqFor = rs.getString("reqFor");
                    String active = rs.getString("active");
               
                    String emailid = rs.getString("emailid");
                    String contactperson = rs.getString("contactperson");
                    String cemailid = rs.getString("cemailid");
                    String ConDate = rs.getDate("ConDate").toString();
                    String MonDate = rs.getDate("MonDate").toString();
                    authorisation= new AuthMaster(id,reqFor,active,username,emailid,contactperson,cemailid,ConDate,MonDate);
                }
            } catch (SQLException e) {
                printSQLException(e);
            }
            return authorisation;
        }
    
    public String selectEmail(String  username) {
        String emailid= null;
            // Step 1: Establishing a Connection
            try (Connection connection = getConnection();
                // Step 2:Create a statement using connection object
                PreparedStatement preparedStatement = connection.prepareStatement(SELECT_EMAIL);) {
                preparedStatement.setString(1, username);
               
                
               System.out.println(preparedStatement);
                // Step 3: Execute the query or update query
                ResultSet rs = preparedStatement.executeQuery();

                // Step 4: Process the ResultSet object.
                while (rs.next()) {
                
             
                    emailid = rs.getString("emailid");
                  
                }
            } catch (SQLException e) {
                printSQLException(e);
            }
            return emailid;
        }
    public static List < Statusmaster > selectAllstatusmaster()  {

        // using try-with-resources to avoid closing resources (boiler plate code)
        List < Statusmaster > statusmaster = new ArrayList < > ();
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_statusmaster);) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int id=rs.getInt("id");
                String statusname = rs.getString("statusname");
                String hide = rs.getString("hide");
               
                statusmaster.add(new Statusmaster(id, statusname, hide));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return statusmaster;
    }
    public  List < Statusmaster > selectAllusermaster()  {
        List < Statusmaster > usermasterr = new ArrayList < > ();
        try (Connection connection = getConnection();     
            PreparedStatement preparedStatement = connection.prepareStatement("select * from usermasterr order by eid DESC");) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id=rs.getInt("eid");
                String empname = rs.getString("empname");
                String ehide = rs.getString("ehide");
                String loginname = rs.getString("loginname");
                String passwordd = rs.getString("passwordd");
                String user = rs.getString("user");
                String emailid = rs.getString("emailid");
             
                Statusmaster u1= new Statusmaster(id, empname, ehide,loginname,passwordd,user,emailid);
                usermasterr.add(u1);
                
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return usermasterr;}
    
    
    
    public  ArrayList<UserMaster>  selectAllusermaster1()  {
    	ArrayList < UserMaster > usermasterr = new ArrayList < > ();
        try (Connection connection = getConnection();     
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_usermaster);) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id=rs.getInt("eid");
                String empname = rs.getString("empname");
                String ehide = rs.getString("ehide");
                String loginname = rs.getString("loginname");
                String passwordd = rs.getString("passwordd");
              
                String emailid = rs.getString("emailid");
                String ConDate = rs.getDate("ConDate").toString();
                String MonDate = rs.getDate("MonDate").toString();    
                UserMaster  u1= new UserMaster();
                u1.setUserid(id);
                u1.setEmpname(empname);
                u1.setLoginname(loginname);
                u1.setEmailid(emailid);
                u1.setPassword(passwordd);
          
                usermasterr.add(u1);
                
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return usermasterr;}
    public  ArrayList < AuthMaster> selectAllauthormaster1()  {
        ArrayList < AuthMaster > auth = new ArrayList < > ();
        try (Connection connection = getConnection();     
            PreparedStatement preparedStatement = connection.prepareStatement("select * from authorisationmaster where active='Yes'");) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id=rs.getInt("id");
                String reqFor = rs.getString("reqFor");
          
                String emailid = rs.getString("emailid");
                String username = rs.getString("username");
                String cemailid = rs.getString("cemailid");
                String contactperson = rs.getString("contactperson");
                 
                AuthMaster A1=new AuthMaster();
                A1.setId(id);
                A1.setUsername(username);
                A1.setReqFor(reqFor);
                A1.setemailid(emailid);
                A1.setContactperson(contactperson);
                A1.setCemailid(cemailid);
           
                
                auth.add(A1);
                
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return auth;}
    
    public  List < AuthMaster> selectAllauthormaster()  {
        List < AuthMaster > usermasterr = new ArrayList < > ();
        try (Connection connection = getConnection();     
            PreparedStatement preparedStatement = connection.prepareStatement("select * from authorisationmaster order by id DESC");) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id=rs.getInt("id");
                String reqFor = rs.getString("reqFor");
                String active = rs.getString("active");
                String username = rs.getString("username");
                String emailid = rs.getString("emailid");
                String contactperson = rs.getString("contactperson");
                String cemailid = rs.getString("cemailid");
                String ConDate = rs.getDate("ConDate").toString();
                String MonDate = rs.getDate("MonDate").toString();    
                usermasterr.add(new AuthMaster(id, reqFor,active,username,emailid,contactperson,cemailid,ConDate,MonDate));
                
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return usermasterr;}
    
    public  List < ReqForm> selectAllreq()  {
        List < ReqForm > req = new ArrayList < > ();
        try (Connection connection = getConnection();     
            PreparedStatement preparedStatement = connection.prepareStatement("select * from req  order by id DESC ");) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id=rs.getInt("id");
                String reqby = rs.getString("reqby");
                String reqfor = rs.getString("reqfor");
                String reqdate = rs.getString("reqdate");
                String reqdetails= rs.getString("reqdetails");
                String authperson = rs.getString("authperson");
                String status=rs.getString("status");
                String accdate=rs.getString("accdate");
                String assnto=rs.getString("assnto");
                String assntodate=rs.getString("assntodate");
                req.add(new ReqForm (id, reqby,reqdate,reqfor,reqdetails,authperson,status,accdate,assnto,assntodate));
                
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return req;}
    public  List < ReqForm> selectAllreq2(String empname)  {
        List < ReqForm > req = new ArrayList < > ();
        try (Connection connection = getConnection();     
            PreparedStatement preparedStatement = connection.prepareStatement("select * from req where reqby=?or authperson=? or assnto =? order by id DESC ");) {
        	   preparedStatement.setString(1, empname); 
        	   preparedStatement.setString(2, empname);
        	   preparedStatement.setString(3, empname);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id=rs.getInt("id");
                String reqby = rs.getString("reqby");
                String reqfor = rs.getString("reqfor");
                String reqdate = rs.getString("reqdate");
                String reqdetails= rs.getString("reqdetails");
                String authperson = rs.getString("authperson");
                String status=rs.getString("status");
                String accdate=rs.getString("accdate");
                String assnto=rs.getString("assnto");
                String assntodate=rs.getString("assntodate");
                req.add(new ReqForm (id, reqby,reqdate,reqfor,reqdetails,authperson,status,accdate,assnto,assntodate));
                
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return req;}
    public  List < ReqForm> selectNewreq()  {
        List < ReqForm > req = new ArrayList < > ();
        try (Connection connection = getConnection();    
            PreparedStatement preparedStatement = connection.prepareStatement("select * from req where status = 'New' or status = 'Open'or status = 'Reopened'  order by id DESC ");) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id=rs.getInt("id");
                String reqby = rs.getString("reqby");
                String reqfor = rs.getString("reqfor");
                String reqdate = rs.getString("reqdate");
                String reqdetails= rs.getString("reqdetails");
                String authperson = rs.getString("authperson");
                String status=rs.getString("status");
                String accdate=rs.getString("accdate");
                String assnto=rs.getString("assnto");
                String assntodate=rs.getString("assntodate");
                req.add(new ReqForm (id, reqby,reqdate,reqfor,reqdetails,authperson,status,accdate,assnto,assntodate));
               
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return req;}
    
  
    public  List < ReqForm> selectNewreq2(String empname)  {
        List < ReqForm > req = new ArrayList < > ();
        try (Connection connection = getConnection();    
            PreparedStatement preparedStatement = connection.prepareStatement("select * from req where (status = 'New' or status = 'Open'or status = 'Reopened') and (reqby=?or authperson=? or assnto =?) order by id DESC ");) {
     	   preparedStatement.setString(1, empname); 
    	   preparedStatement.setString(2, empname);
    	   preparedStatement.setString(3, empname);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id=rs.getInt("id");
                String reqby = rs.getString("reqby");
                String reqfor = rs.getString("reqfor");
                String reqdate = rs.getString("reqdate");
                String reqdetails= rs.getString("reqdetails");
                String authperson = rs.getString("authperson");
                String status=rs.getString("status");
                String accdate=rs.getString("accdate");
                String assnto=rs.getString("assnto");
                String assntodate=rs.getString("assntodate");
                req.add(new ReqForm (id, reqby,reqdate,reqfor,reqdetails,authperson,status,accdate,assnto,assntodate));
               
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return req;}

 

   
    public  List < ReqForm> selectRevertedreq()  {
        List < ReqForm > req = new ArrayList < > ();
        try (Connection connection = getConnection();    
            PreparedStatement preparedStatement = connection.prepareStatement("select * from req where status ='Reverted' order by id DESC ");) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id=rs.getInt("id");
                String reqby = rs.getString("reqby");
                String reqfor = rs.getString("reqfor");
                String reqdate = rs.getString("reqdate");
                String reqdetails= rs.getString("reqdetails");
                String authperson = rs.getString("authperson");
                String status=rs.getString("status");
                req.add(new ReqForm (id, reqby,reqdate,reqfor,reqdetails,authperson,status));
               
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return req;}
   
    public  List < ReqForm> selectRevertedreq2(String empname)  {
        List < ReqForm > req = new ArrayList < > ();
        try (Connection connection = getConnection();    
            PreparedStatement preparedStatement = connection.prepareStatement("select * from req where (status = 'Reverted') and (reqby=?or authperson=? or assnto =?)  order by id DESC ");) {
            preparedStatement.setString(1, empname);
            preparedStatement.setString(2, empname);
            preparedStatement.setString(3, empname);
        System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id=rs.getInt("id");
                String reqby = rs.getString("reqby");
                String reqfor = rs.getString("reqfor");
                String reqdate = rs.getString("reqdate");
                String reqdetails= rs.getString("reqdetails");
                String authperson = rs.getString("authperson");
                String status=rs.getString("status");
                req.add(new ReqForm (id, reqby,reqdate,reqfor,reqdetails,authperson,status));
               
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return req;}
   
    public  List < ReqForm> selectAcceptedreq()  {
        List < ReqForm > req = new ArrayList < > ();
        try (Connection connection = getConnection();    
            PreparedStatement preparedStatement = connection.prepareStatement("select * from req where status = 'Accepted' order by id DESC ");) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id=rs.getInt("id");
                String reqby = rs.getString("reqby");
                String reqfor = rs.getString("reqfor");
                String reqdate = rs.getString("reqdate");
                String reqdetails= rs.getString("reqdetails");
                String authperson = rs.getString("authperson");
                String status=rs.getString("status");
                req.add(new ReqForm (id, reqby,reqdate,reqfor,reqdetails,authperson,status));
               
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return req;}
   
    public  List < ReqForm> selectAcceptedreq2(String empname)  {
        List < ReqForm > req = new ArrayList < > ();
        try (Connection connection = getConnection();    
            PreparedStatement preparedStatement = connection.prepareStatement("select * from req where( status = 'Accepted') and (reqby=?or authperson=? or assnto =?)  order by id DESC ");) {
            preparedStatement.setString(1, empname);
            preparedStatement.setString(2, empname);
            preparedStatement.setString(3, empname);
        System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id=rs.getInt("id");
                String reqby = rs.getString("reqby");
                String reqfor = rs.getString("reqfor");
                String reqdate = rs.getString("reqdate");
                String reqdetails= rs.getString("reqdetails");
                String authperson = rs.getString("authperson");
                String status=rs.getString("status");
                req.add(new ReqForm (id, reqby,reqdate,reqfor,reqdetails,authperson,status));
               
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return req;}


    public  List < ReqForm> selectCompletedreq()  {
        List < ReqForm > req = new ArrayList < > ();
        try (Connection connection = getConnection();    
            PreparedStatement preparedStatement = connection.prepareStatement("select * from req where status = 'Completed' order by id DESC ");) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id=rs.getInt("id");
                String reqby = rs.getString("reqby");
                String reqfor = rs.getString("reqfor");
                String reqdate = rs.getString("reqdate");
                String reqdetails= rs.getString("reqdetails");
                String authperson = rs.getString("authperson");
                String status=rs.getString("status");
                req.add(new ReqForm (id, reqby,reqdate,reqfor,reqdetails,authperson,status));
               
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return req;}

    public  List < ReqForm> selectar()  {
        List < ReqForm > req = new ArrayList < > ();
        try (Connection connection = getConnection();    
            PreparedStatement preparedStatement = connection.prepareStatement("select * from req where status = 'Closed'or status = 'Rejected'or status = 'Cancellled' order by id DESC ");) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id=rs.getInt("id");
                String reqby = rs.getString("reqby");
                String reqfor = rs.getString("reqfor");
                String reqdate = rs.getString("reqdate");
                String reqdetails= rs.getString("reqdetails");
                String authperson = rs.getString("authperson");
                String status=rs.getString("status");
                req.add(new ReqForm (id, reqby,reqdate,reqfor,reqdetails,authperson,status));
               
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return req;}
    public  List < ReqForm> selectar2(String empname)  {
        List < ReqForm > req = new ArrayList < > ();
        try (Connection connection = getConnection();    
            PreparedStatement preparedStatement = connection.prepareStatement("select * from req where (status = 'Closed'or status = 'Rejected'or status = 'Cancellled') and (reqby=?or authperson=? or assnto =?)  order by id DESC ");) {
        	 preparedStatement.setString(1, empname);
             preparedStatement.setString(2, empname);
             preparedStatement.setString(3, empname);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id=rs.getInt("id");
                String reqby = rs.getString("reqby");
                String reqfor = rs.getString("reqfor");
                String reqdate = rs.getString("reqdate");
                String reqdetails= rs.getString("reqdetails");
                String authperson = rs.getString("authperson");
                String status=rs.getString("status");
                req.add(new ReqForm (id, reqby,reqdate,reqfor,reqdetails,authperson,status));
               
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return req;}
    public  List < ReqForm> selectCompletedreq2(String empname)  {
        List < ReqForm > req = new ArrayList < > ();
        try (Connection connection = getConnection();    
            PreparedStatement preparedStatement = connection.prepareStatement("select * from req where (status = 'Completed') and (reqby=?or authperson=? or assnto =?)  order by id DESC ");) {
            preparedStatement.setString(1, empname);
            preparedStatement.setString(2, empname);
            preparedStatement.setString(3, empname);
        System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id=rs.getInt("id");
                String reqby = rs.getString("reqby");
                String reqfor = rs.getString("reqfor");
                String reqdate = rs.getString("reqdate");
                String reqdetails= rs.getString("reqdetails");
                String authperson = rs.getString("authperson");
                String status=rs.getString("status");
                req.add(new ReqForm (id, reqby,reqdate,reqfor,reqdetails,authperson,status));
               
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return req;}
   
   
   

    public  List < ReqForm> selectCancelledreq()  {
        List < ReqForm > req = new ArrayList < > ();
        try (Connection connection = getConnection();    
            PreparedStatement preparedStatement = connection.prepareStatement("select * from req where status = 'Cancelled' order by id DESC ");) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id=rs.getInt("id");
                String reqby = rs.getString("reqby");
                String reqfor = rs.getString("reqfor");
                String reqdate = rs.getString("reqdate");
                String reqdetails= rs.getString("reqdetails");
                String authperson = rs.getString("authperson");
                String status=rs.getString("status");
                req.add(new ReqForm (id, reqby,reqdate,reqfor,reqdetails,authperson,status));
               
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return req;}
   
    public  List < ReqForm> selectCancelledreq2(String empname)  {
        List < ReqForm > req = new ArrayList < > ();
        try (Connection connection = getConnection();    
            PreparedStatement preparedStatement = connection.prepareStatement("select * from req where status = 'Cancelled' and (reqby=?or authperson=? or assnto =?)  order by id DESC ");) {
            preparedStatement.setString(1, empname);
            preparedStatement.setString(2, empname);
            preparedStatement.setString(3, empname);
        System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id=rs.getInt("id");
                String reqby = rs.getString("reqby");
                String reqfor = rs.getString("reqfor");
                String reqdate = rs.getString("reqdate");
                String reqdetails= rs.getString("reqdetails");
                String authperson = rs.getString("authperson");
                String status=rs.getString("status");
                req.add(new ReqForm (id, reqby,reqdate,reqfor,reqdetails,authperson,status));
               
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return req;}
   

    public  List < ReqForm> selectRejectedreq()  {
        List < ReqForm > req = new ArrayList < > ();
        try (Connection connection = getConnection();    
            PreparedStatement preparedStatement = connection.prepareStatement("select * from req where status = 'Rejected' order by id DESC ");) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id=rs.getInt("id");
                String reqby = rs.getString("reqby");
                String reqfor = rs.getString("reqfor");
                String reqdate = rs.getString("reqdate");
                String reqdetails= rs.getString("reqdetails");
                String authperson = rs.getString("authperson");
                String status=rs.getString("status");
                req.add(new ReqForm (id, reqby,reqdate,reqfor,reqdetails,authperson,status));
               
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return req;}
   
    public  List < ReqForm> selectRejectedreq2(String empname)  {
        List < ReqForm > req = new ArrayList < > ();
        try (Connection connection = getConnection();    
            PreparedStatement preparedStatement = connection.prepareStatement("select * from req where status = 'Rejected' and (reqby=?or authperson=? or assnto =?)  order by id DESC ");) {
            preparedStatement.setString(1, empname);
            preparedStatement.setString(2, empname);
            preparedStatement.setString(3, empname);
        System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id=rs.getInt("id");
                String reqby = rs.getString("reqby");
                String reqfor = rs.getString("reqfor");
                String reqdate = rs.getString("reqdate");
                String reqdetails= rs.getString("reqdetails");
                String authperson = rs.getString("authperson");
                String status=rs.getString("status");
                req.add(new ReqForm (id, reqby,reqdate,reqfor,reqdetails,authperson,status));
               
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return req;}
   

    public  List < ReqForm> selectClosedreq()  {
        List < ReqForm > req = new ArrayList < > ();
        try (Connection connection = getConnection();    
            PreparedStatement preparedStatement = connection.prepareStatement("select * from req where status = 'Closed' order by id DESC ");) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id=rs.getInt("id");
                String reqby = rs.getString("reqby");
                String reqfor = rs.getString("reqfor");
                String reqdate = rs.getString("reqdate");
                String reqdetails= rs.getString("reqdetails");
                String authperson = rs.getString("authperson");
                String status=rs.getString("status");
                req.add(new ReqForm (id, reqby,reqdate,reqfor,reqdetails,authperson,status));
               
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return req;}
   
    public  List < ReqForm> selectClosedreq2(String empname)  {
        List < ReqForm > req = new ArrayList < > ();
        try (Connection connection = getConnection();    
            PreparedStatement preparedStatement = connection.prepareStatement("select * from req where status = 'Closed' and (reqby=?or authperson=? or assnto =?)  order by id DESC ");) {
            preparedStatement.setString(1, empname);
            preparedStatement.setString(2, empname);
            preparedStatement.setString(3, empname);
        System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id=rs.getInt("id");
                String reqby = rs.getString("reqby");
                String reqfor = rs.getString("reqfor");
                String reqdate = rs.getString("reqdate");
                String reqdetails= rs.getString("reqdetails");
                String authperson = rs.getString("authperson");
                String status=rs.getString("status");
                req.add(new ReqForm (id, reqby,reqdate,reqfor,reqdetails,authperson,status));
               
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return req;}
    public  List < ReqForm> selectreq2(String status2,String status3,String status4,String status5,String status6,String status7,String status8,String status9,String status10,String status11,String start,String end)  {
        List < ReqForm > req = new ArrayList < > ();
        try (Connection connection = getConnection();     
            PreparedStatement preparedStatement = connection.prepareStatement("select * from req where status=? or status=? or status=? or status=? or status=? or status=? or status=? or status=? or status=?  or status=? and reqdate between?and?order by id DESC ");) {
        	   preparedStatement.setString(1,status2); 
        	   preparedStatement.setString(2,status3); 
        	   preparedStatement.setString(3,status4); 
        	   preparedStatement.setString(4,status5); 
        	   preparedStatement.setString(5,status6); 
        	   preparedStatement.setString(6,status7); 
        	   preparedStatement.setString(7,status8);
        	   preparedStatement.setString(8,status9);
        	   preparedStatement.setString(9,status10);
        	   preparedStatement.setString(10,status11);
        	
        	   preparedStatement.setString(11,start); 
        	   preparedStatement.setString(12,end); 
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id=rs.getInt("id");
                String reqby = rs.getString("reqby");
                String status = rs.getString("status");
                String reqfor = rs.getString("reqfor");
                String reqdate = rs.getString("reqdate");
                String reqdetails= rs.getString("reqdetails");
                String authperson = rs.getString("authperson");
                String accdate = rs.getString("accdate");
                String assnto = rs.getString("assnto");
                String assntodate = rs.getString("assntodate");
                req.add(new ReqForm (id, reqby,reqdate,reqfor,reqdetails,authperson,status,accdate,assnto,assntodate));
                
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return req;}
    public  List < ReqForm> selectreq3(String status,String date)  {
        List < ReqForm > req = new ArrayList < > ();
        try (Connection connection = getConnection();     
            PreparedStatement preparedStatement = connection.prepareStatement("select * from req where status=? and reqdate=?order by id DESC ");) {
        	   preparedStatement.setString(1,status); 
        	   preparedStatement.setString(2,date); 
    
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id=rs.getInt("id");
                String reqby = rs.getString("reqby");
                String reqfor = rs.getString("reqfor");
                String reqdate = rs.getString("reqdate");
                String reqdetails= rs.getString("reqdetails");
                String authperson = rs.getString("authperson");
              
                req.add(new ReqForm (id, reqby,reqdate,reqfor,reqdetails,authperson,status));
                
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return req;}
    public static boolean deleteStatus(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_statusmaster_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }
    public static boolean deleteUser(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_usermaster_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    } 
        public static boolean deleteauthor(int id) throws SQLException {
            boolean rowDeleted;
            try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_authorisationmaster_SQL);) {
                statement.setInt(1, id);
                rowDeleted = statement.executeUpdate() > 0;
            }
            return rowDeleted;
    }
    public static boolean updateStatus (Statusmaster st) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_statusmaster_SQL);) {
        	
        
            statement.setString(1, st.getstatusname());
            statement.setString(2, st.gethide());
            statement.setInt(3,st.getId());
            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }
    public static boolean updateUser (Statusmaster usermaster) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_usermaster_SQL);) {
     	   System.out.println(statement);
        	 
            statement.setString(1, usermaster.getempname());
            statement.setString(2, usermaster.getEhide());
            statement.setString(3, usermaster.getLoginname());
            statement.setString(4, usermaster.getPasswordd());
            statement.setString(5, usermaster.getEmailid());
            statement.setString(6, usermaster.getUser());
            statement.setInt(7,usermaster.getId());
            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }
    
    public static boolean updateauthor(AuthMaster authorisation) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_authorisationmaster_SQL);) {
        	   System.out.println(statement);
        	 
            statement.setString(1, authorisation.getReqFor());
            statement.setString(2, authorisation.getActive());
            statement.setString(3, authorisation.getUsername());
            statement.setString(4, authorisation.getemailid());
            statement.setString(5, authorisation.getContactperson());
            statement.setString(6, authorisation.getCemailid());
            statement.setInt(7,authorisation.getId());
            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    public static boolean updatereq(ReqForm req) throws SQLException {
    	 
        boolean rowUpdated;
       
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement("update req set reqby = ?,reqdate= ?,reqfor=?,authperson=?,reqdetails=?,status=?,assnto=?,authpersonremarks=?,accdate=?,assnfromremarks=?,assntodate=?,assnfrom=? where id = ?;");) {
        	   System.out.println(statement);
        	
            statement.setString(1, req.getReqby());
            statement.setString(2, req.getReqdate());
            statement.setString(3, req.getReqfor());
            statement.setString(4, req.getAuthperson());
            statement.setString(5,req.getReqdetails());
            statement.setString(6,req.getStatus());
            statement.setString(7,req.getAssnto());
            statement.setString(8,req.getAuthpersonremarks());
            statement.setString(9,req.getAccdate());
            statement.setString(10,req.getAssnfromremarks());
            statement.setString(11,req.getAssntodate());
            statement.setString(12,req.getAssnfrom());
            statement.setInt(13,req.getId());
            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    private static void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}