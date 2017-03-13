package edu.hgsf.nanyu.entity;

import java.io.Serializable;
import java.sql.Date;

public class Consignee implements Serializable {
	private static final long serialVersionUID = 2623376681884325764L;
	private int consignee_id;
	private int customer_id;
	private String name;
	private String address;
	private String email;
	private String zipcode;
	private String mobilenum;
	private String phonenum;
	private String signbuilding;
	private String besttime;
	
	public int getConsignee_id() {
		return consignee_id;
	}

	public void setConsignee_id(int consignee_id) {
		this.consignee_id = consignee_id;
	}

	public int getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getMobilenum() {
		return mobilenum;
	}

	public void setMobilenum(String mobilenum) {
		this.mobilenum = mobilenum;
	}

	public String getPhonenum() {
		return phonenum;
	}

	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}

	public String getSignbuilding() {
		return signbuilding;
	}

	public void setSignbuilding(String signbuilding) {
		this.signbuilding = signbuilding;
	}

	public String getBesttime() {
		return besttime;
	}

	public void setBesttime(String besttime) {
		this.besttime = besttime;
	}

	public Consignee(int consignee_id, int customer_id, String name,
			String address, String email, String zipcode, String mobilenum,
			String phonenum, String signbuilding, String besttime) {
		super();
		this.consignee_id = consignee_id;
		this.customer_id = customer_id;
		this.name = name;
		this.address = address;
		this.email = email;
		this.zipcode = zipcode;
		this.mobilenum = mobilenum;
		this.phonenum = phonenum;
		this.signbuilding = signbuilding;
		this.besttime = besttime;
	}

	public Consignee() {
		super();
	}
}
