package com.offcn.bean;

import java.io.Serializable;

public class OneUser implements Serializable {
	private String phoneid;
	private String uname;
	private String upwd;
	private String ucrDate;  //创建用户时间
	public String getPhoneid() {
		return phoneid;
	}
	public void setPhoneid(String phoneid) {
		this.phoneid = phoneid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	public String getUcrDate() {
		return ucrDate;
	}
	public void setUcrDate(String ucrDate) {
		this.ucrDate = ucrDate;
	}
	@Override
	public String toString() {
		return "OneUser [phoneid=" + phoneid + ", uname=" + uname + ", upwd=" + upwd + ", ucrDate=" + ucrDate + "]";
	}
	
	
}
