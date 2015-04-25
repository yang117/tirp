package entity;

public class Admin {
	private int id;
	private String adminName;
	private String apassword;
	public Admin() {
		super();
	}
	public void setId(int SId)
	{
		id=SId;
	}
	public int getId()
	{
		return id;
	}
	public void setAdminName(String name)
	{
		adminName=name;
	}
	public String getAdminName()
	{
		return adminName;
	}
	public void setApassword(String pwd)
	{
		apassword=pwd;
	}
	public String getApassword()
	{
		return apassword;
	}
	public Admin(int id, String adminName, String apassword) {
		super();
		this.id = id;
		this.adminName = adminName;
		this.apassword = apassword;
	}
	
}
