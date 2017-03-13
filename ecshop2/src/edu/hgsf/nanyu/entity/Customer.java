package edu.hgsf.nanyu.entity;

import java.io.Serializable;
import java.sql.Date;

public class Customer implements Serializable {
	private static final long serialVersionUID = 8896525902073379460L;
	private int customer_id;
	private String account;
	private String realname;
	private String sex;
	private Date birth;
	private String pwd;
	private String pwd_ques;
	private String pwd_ans;
	private String pic;// 图片
	private String mobile;// 手机
	private String telphone;// 电话
	private String qq;
	private String email;
	private int score;// 积分
	private String status;
	private Date regdate;//注册时间
	private Date logindate;//最后一次登录时间
	private String last_ip;//登录IP

	public Customer() {
		super();
		// TODO 自动生成的构造函数存根
	}

	public Customer(int customer_id, String account, String realname,
			String sex, Date birth, String pwd, String pwd_ques,
			String pwd_ans, String pic, String mobile, String telphone,
			String qq, String email, int score, String status, Date regdate,
			Date logindate, String last_ip) {
		super();
		this.customer_id = customer_id;
		this.account = account;
		this.realname = realname;
		this.sex = sex;
		this.birth = birth;
		this.pwd = pwd;
		this.pwd_ques = pwd_ques;
		this.pwd_ans = pwd_ans;
		this.pic = pic;
		this.mobile = mobile;
		this.telphone = telphone;
		this.qq = qq;
		this.email = email;
		this.score = score;
		this.status = status;
		this.regdate = regdate;
		this.logindate = logindate;
		this.last_ip = last_ip;
	}

	public int getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getPwd_ques() {
		return pwd_ques;
	}

	public void setPwd_ques(String pwd_ques) {
		this.pwd_ques = pwd_ques;
	}

	public String getPwd_ans() {
		return pwd_ans;
	}

	public void setPwd_ans(String pwd_ans) {
		this.pwd_ans = pwd_ans;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getTelphone() {
		return telphone;
	}

	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public Date getLogindate() {
		return logindate;
	}

	public void setLogindate(Date logindate) {
		this.logindate = logindate;
	}

	public String getLast_ip() {
		return last_ip;
	}

	public void setLast_ip(String last_ip) {
		this.last_ip = last_ip;
	}

	

}
