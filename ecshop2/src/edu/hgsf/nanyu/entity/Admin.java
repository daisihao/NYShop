package edu.hgsf.nanyu.entity;

import java.io.Serializable;
import java.sql.Date;

public class Admin implements Serializable {
	private static final long serialVersionUID = 4386841929930298907L;
	private int adminID;			//管理员id
	private String userName;        //管理员用户名
	private String pwd;   			//管理员密码
	private String mobilePhone;     //管理员手机号
	private String loginDate;         //管理员最后一次登录时间
	public int getAdminID() {
		return adminID;
	}
	public void setAdminID(int adminID) {
		this.adminID = adminID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getMobilePhone() {
		return mobilePhone;
	}
	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}
	public String getLoginDate() {
		return loginDate;
	}
	public void setLoginDate(String loginDate) {
		this.loginDate = loginDate;
	}
	public Admin(int adminID, String userName, String pwd, String mobilePhone,
			String loginDate) {
		super();
		this.adminID = adminID;
		this.userName = userName;
		this.pwd = pwd;
		this.mobilePhone = mobilePhone;
		this.loginDate = loginDate;
	}
	public Admin() {
		super();
	}
}
