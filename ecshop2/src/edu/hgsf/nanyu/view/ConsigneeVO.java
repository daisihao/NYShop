package edu.hgsf.nanyu.view;

public class ConsigneeVO {
	
	
	private String consignee_id;
	private String customer_id;
	private String name;
	private String address;
	private String email;
	private String zipcode;
	private String mobilenum;
	private String phonenum;
	private String signbuilding;
	private String besttime;
		
	public ConsigneeVO() {
		super();
	}
	public ConsigneeVO(String consignee_id, String customer_id, String name,
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
	public String getConsignee_id() {
		return consignee_id;
	}
	public void setConsignee_id(String consignee_id) {
		this.consignee_id = consignee_id;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
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
	
	
}
