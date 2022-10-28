package statusmaster.model;

import java.util.ArrayList;

public class AuthMaster {
	ArrayList<UserMaster> userList;
	ArrayList<AuthMaster> AuthList;
	
	public ArrayList<UserMaster> getUserList() {
		return userList;
	}
	public void setUserList(ArrayList<UserMaster> userList) {
		this.userList = userList;
	}
	public ArrayList<AuthMaster> getAuthList() {
		return AuthList;
	}
	public void setAuthList(ArrayList<AuthMaster> AuthList) {
	this.AuthList=AuthList;
	}
	int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getReqFor() {
		return reqFor;
	}
	public void setReqFor(String reqFor) {
		this.reqFor = reqFor;
	}
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getemailid() {
		return emailId;
	}
	public void setemailid(String emailId) {
		this.emailId = emailId;
	}
	String reqFor,active,username,emailId;
	public String getConDate() {
		return ConDate;
	}
	public void setConDate(String conDate) {
		ConDate = conDate;
	}
	public String getMonDate() {
		return MonDate;
	}
	public void setMonDate(String monDate) {
		MonDate = monDate;
	}
	private String ConDate;
	private String MonDate;
	private String contactperson;
	public String getContactperson() {
		return contactperson;
	}
	public void setContactperson(String contactperson) {
		this.contactperson = contactperson;
	}
	public String getCemailid() {
		return cemailid;
	}
	public void setCemailid(String cemailid) {
		this.cemailid = cemailid;
	}
	private String cemailid;
	
	 public AuthMaster(int id,String reqFor, String active,String username,String emailid,String contactperson,String cemailid,String ConDate,String MonDate) {
	        super();
	        this.id=id;
	        this.reqFor=reqFor;
	        this.active=active;
	        this.username=username;
	        this.emailId=emailid;
	        this.contactperson=contactperson;
	        this.cemailid=cemailid;
	        this.ConDate=ConDate;
	        this.MonDate=MonDate;
	       
	    }
	
	    
	public AuthMaster() {
		// TODO Auto-generated constructor stub
	}
	public AuthMaster(int id, String reqFor, String active, String username, String emailid,String contactperson,String cemailid) {
		// TODO Auto-generated constructor stub
		
		   super();
	        this.id=id;
	        this.reqFor=reqFor;
	        this.active=active;
	        this.username=username;
	        this.emailId=emailid;
	 this.contactperson=contactperson;
	 this.cemailid=cemailid;
	}
	public AuthMaster(String reqFor, String active, String username, String emailid, String contactperson, String cemailid) {
	    this.reqFor=reqFor;
        this.active=active;
        this.username=username;
        this.emailId=emailid;
        this.contactperson=contactperson;
        this.cemailid=cemailid;
		
		// TODO Auto-generated constructor stub
	}
	
	

}
