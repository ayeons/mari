package com.eee.mari.admin;

public class AdminDTO {
	private String userid;
	private String name;
	private String passwd;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	@Override
	public String toString() {
		return "AdminDTO [userid=" + userid + ", name=" + name + ", passwd=" + passwd + "]";
	}
	
	
	

}
