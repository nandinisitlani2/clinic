package statusmaster.model;

public class ReqForm {

	int id;
	
   public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getReqby() {
		return reqby;
	}

	public void setReqby(String reqby) {
		this.reqby = reqby;
	}

	public String getReqdate() {
		return reqdate;
	}

	public void setReqdate(String reqdate) {
		this.reqdate = reqdate;
	}

	public String getReqfor() {
		return reqFor;
	}

	public void setReqfor(String reqFor) {
		this.reqFor = reqFor;
	}

	public String getAuthperson() {
		return authperson;
	}

	public void setAuthperson(String authperson) {
		this.authperson = authperson;
	}

	public String getReqdetails() {
		return reqdetails;
	}

	public void setReqdetails(String reqdetails) {
		this.reqdetails = reqdetails;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getAccdate() {
		return accdate;
	}

	public void setAccdate(String accdate) {
		this.accdate = accdate;
	}

	public String getAssnto() {
		return assnto;
	}

	public void setAssnto(String assnto) {
		assnto = assnto;
	}

	public String getAssntodate() {
		return assntodate;
	}

	public void setAssntodate(String assntodate) {
		this.assntodate = assntodate;
	}

	public String getAssnfrom() {
		return assnfrom;
	}

	public void setAssnfrom(String assnfrom) {
		assnfrom = assnfrom;
	}

	public String getAssnfromremarks() {
		return assnfromremarks;
	}

	public void setAssnfromremarks(String assnfromremarks) {
		this.assnfromremarks = assnfromremarks;
	}

	public String getAuthpersonremarks() {
		return authpersonremarks;
	}

	public void setAuthpersonremarks(String authpersonremarks) {
		authpersonremarks = authpersonremarks;
	}

String reqby;
   String reqdate;
    String reqFor;
   String authperson;
    String reqdetails;
  String  status;


String accdate;
	String assnto;
String assntodate;
String assnfrom;
String assnfromremarks;

String authpersonremarks;


public ReqForm(String reqby, String reqdate, String reqFor, String authperson,String reqdetails,String status,String assnto,String authpersonremarks,String accdate) {

   this.reqby=reqby;
   this.reqdate=reqdate;
   this.reqFor=reqFor;
   this.authperson=authperson;
   this.reqdetails=reqdetails;
   this.status=status;
   this.assnto=assnto;
	this.authpersonremarks= authpersonremarks;
	
	
	this.accdate=accdate;// TODO Auto-generated constructor stub
}

public ReqForm(String reqby, String reqdate, String reqFor, String authperson,String reqdetails,String status) {

	   this.reqby=reqby;
	   this.reqdate=reqdate;
	   this.reqFor=reqFor;
	   this.authperson=authperson;
	   this.reqdetails=reqdetails;
	   this.status=status;
	  
		// TODO Auto-generated constructor stub
	}
public ReqForm(int id,String reqby, String reqdate, String reqFor, String authperson,String reqdetails,String status,String assnto,String authpersonremarks,String accdate,String assnfromremarks,String assntodate,String assnfrom) {
	this.id=id;
	   this.reqby=reqby;
	   this.reqdate=reqdate;
	   this.reqFor=reqFor;
	   this.authperson=authperson;
	   this.reqdetails=reqdetails;
	   this.status=status;
	   this.assnto=assnto;
		this.authpersonremarks= authpersonremarks;
		this.accdate=accdate;
		this.assnfromremarks=assnfromremarks;
		this.assntodate=assntodate;
		this.assnfrom=assnfrom;
	   // TODO Auto-generated constructor stub
	}
	
public ReqForm(int id,String reqby, String reqdate, String reqFor, String authperson,String reqdetails,String status,String accdate,String assnto,String assntodate) {
	this.id=id;
	   this.reqby=reqby;
	   this.reqdate=reqdate;
	   this.reqFor=reqFor;
	   this.authperson=authperson;
	   this.reqdetails=reqdetails;
	   this.status=status;
	   this.accdate=accdate;
	   this.assnto=assnto;
	   this.assntodate=assntodate;
	   
	   // TODO Auto-generated constructor stub
	}
public ReqForm(int id,String reqby, String reqdate, String reqFor, String authperson,String reqdetails,String status) {
	this.id=id;
	   this.reqby=reqby;
	   this.reqdate=reqdate;
	   this.reqFor=reqFor;
	   this.authperson=authperson;
	   this.reqdetails=reqdetails;
	   this.status=status;}
	
	
}
