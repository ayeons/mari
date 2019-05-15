package com.eee.mari.member;

import java.util.Date;

public class MemberDTO {
	private int seq;
	private String id;
	private	String pwd;
	private String name;
	private int jumin1;
	private int jumin2;
	private String tel;
	private String mail;
	private Date createdate;
	private Date updatedate;
	private String ua;
	private String useyn;
	
	public MemberDTO(int seq, String id, String pwd, String name, int jumin1, int jumin2, String tel, String mail,
			Date createdate, Date updatedate, String ua, String useyn) {
		super();
		this.seq = seq;
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.jumin1 = jumin1;
		this.jumin2 = jumin2;
		this.tel = tel;
		this.mail = mail;
		this.createdate = createdate;
		this.updatedate = updatedate;
		this.ua = ua;
		this.useyn = useyn;
	}
	
	
	public MemberDTO() {
		super();
	}


	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getJumin1() {
		return jumin1;
	}
	public void setJumin1(int jumin1) {
		this.jumin1 = jumin1;
	}
	public int getJumin2() {
		return jumin2;
	}
	public void setJumin2(int jumin2) {
		this.jumin2 = jumin2;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public Date getCreatedate() {
		return createdate;
	}
	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}
	public Date getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}
	public String getUa() {
		return ua;
	}
	public void setUa(String ua) {
		this.ua = ua;
	}


	public String getUseyn() {
		return useyn;
	}


	public void setUseyn(String useyn) {
		this.useyn = useyn;
	}
	
	
	
}
