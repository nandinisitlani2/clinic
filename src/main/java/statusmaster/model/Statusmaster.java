package statusmaster.model;

/**
 * statusmaster.java
 * This is a model class represents a statusmaster entity
 * @author Ramesh Fadatare
 *
 */

public class Statusmaster {
	
		protected int id;
		    protected String empname;
		

			protected String empname2;
		    public String ehide;

		    protected String loginname;

		    protected String passwordd;
		    public String getUser() {
				return user;
			}

			public void setUser(String user) {
				this.user = user;
			}

			protected String user;
		    protected String emailid;
		    

		    protected String ConDate;

		    protected String MonDate;
		    
			protected int amid;
			   protected String reqFor;
			   protected String username;
			   protected String active;


		   

		    



    protected String statusname;
    public String hide;

   
    public Statusmaster() {}

    public Statusmaster(int id,String statusname, String hide) {
        super();
        this.id=id;
        this.statusname = statusname;
        this.hide = hide;
       
        
    }
    
    public Statusmaster(int id,String empname, String ehide,String loginname,String passwordd,String emailid,String user) {
        super();
        this.id=id;
        this.empname = empname;
        this.ehide = ehide;
    
        this.loginname=loginname;
        this.passwordd=passwordd;
        this.emailid=emailid;
        this.user=user;
       
    }

 
 
    public Statusmaster(String reqFor, String active,String username,String emailid) {
        super();
        
        this.reqFor=reqFor;
        this.active=active;
        this.username=username;
        this.emailid=emailid;
      
    }
    public Statusmaster(int amid,String reqFor, String active,String username,String emailid) {
        super();
        this.amid=amid  ;
        this.reqFor=reqFor;
        this.active=active;
        this.username=username;
        this.emailid=emailid;
      
    }
    public Statusmaster(String empname, String ehide ,String loginname,String passwordd,String emailid,String user) {
        super();
        this.empname = empname;
        this.ehide = ehide;
        this.loginname=loginname;
        this.passwordd=passwordd;
    
        this.emailid=emailid;
        this.user=user;
    }
   
   
    public String getLoginname() {
		return loginname;
	}

	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}

	public String getPasswordd() {
		return passwordd;
	}

	public void setPasswordd(String passwordd) {
		this.passwordd = passwordd;
	}

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
   
    public String getempname() {
        return empname;
    }
    public void setempname(String empname) {
        this.empname = empname;
    }

   

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
     
 int  totalrow=this.getTotalRows();
    public Statusmaster(String statusname, String hide) {
        super();
        this.statusname = statusname;
        this.hide = hide;
        
        
    }
   
    
   
	
    public Statusmaster(int id, String empname, String ehide, String loginname, String passwordd,
			String emailid, String conDate, String monDate) {
    	
        this.id=id;
        this.empname = empname;
        this.ehide = ehide; 
        this.loginname=loginname;
        this.passwordd=passwordd;
  
        this.emailid=emailid;
        this.ConDate=ConDate;
        this.MonDate=MonDate;
	}
	public int getEId() {
        return id;
    }
    public void setEId(int id) {
        this.id = id;
    }
    
    public String getstatusname() {
        return statusname;
    }
    public void setstatusname(String statusname) {
        this.statusname = statusname;
    }
    public String gethide() {
        return hide;
    }
    public void sethide(String hide) {
        this.hide = hide;
    }
    public String getEhide() {
        return ehide;
    }
    public void setEhide(String ehide) {
        this.ehide = ehide;
    }
   public int getTotalRows() {
	   return totalrow;
   }
   
   public int getAmid() {
		return amid;
	}

	public void setAmid(int amid) {
		this.amid = amid;
	}

	public String getRequirementfor() {
		return reqFor;
	}

	public void setRequirementfor(String reqFor) {
		this.reqFor = reqFor;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}


    } 

