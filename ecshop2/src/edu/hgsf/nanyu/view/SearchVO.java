package edu.hgsf.nanyu.view;

public class SearchVO {
	private String customer_id;
	private String beginDate; 
	private String endDate;
	private String status;
	private String beginnumber;
	private String endnumber;
	
	
	public String getBeginnumber() {
		return beginnumber;
	}
	public void setBeginnumber(String beginnumber) {
		this.beginnumber = beginnumber;
	}
	public String getEndnumber() {
		return endnumber;
	}
	public void setEndnumber(String endnumber) {
		this.endnumber = endnumber;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getBeginDate() {
		return beginDate;
	}
	public void setBeginDate(String beginDate) {
		this.beginDate = beginDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public SearchVO(String customer_id, String beginDate, String endDate) {
		super();
		this.customer_id = customer_id;
		this.beginDate = beginDate;
		this.endDate = endDate;
	}
	
	public SearchVO(String customer_id, String beginDate, String endDate,
			String status) {
		super();
		this.customer_id = customer_id;
		this.beginDate = beginDate;
		this.endDate = endDate;
		this.status = status;
	}
	public SearchVO() {
		super();
		// TODO Auto-generated constructor stub
	}

}
