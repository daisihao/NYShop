package edu.hgsf.nanyu.view;

public class OrdersVO {
	public String getOrders_id() {
		return orders_id;
	}
	public void setOrders_id(String orders_id) {
		this.orders_id = orders_id;
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
	public String getOrders_no() {
		return orders_no;
	}
	public void setOrders_no(String orders_no) {
		this.orders_no = orders_no;
	}
	public String getOrders_time() {
		return orders_time;
	}
	public void setOrders_time(String orders_time) {
		this.orders_time = orders_time;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPaytype() {
		return paytype;
	}
	public void setPaytype(String paytype) {
		this.paytype = paytype;
	}
	public String getOrders_pay() {
		return orders_pay;
	}
	public void setOrders_pay(String orders_pay) {
		this.orders_pay = orders_pay;
	}
	private String orders_id;
	private String consignee_id;
	private String customer_id;
	private String orders_no;
	private String orders_time;
	private String status;
	private String paytype;
	private String orders_pay;
	public OrdersVO(String orders_id, String consignee_id, String customer_id,
			String orders_no, String orders_time, String status,
			String paytype, String orders_pay) {
		super();
		this.orders_id = orders_id;
		this.consignee_id = consignee_id;
		this.customer_id = customer_id;
		this.orders_no = orders_no;
		this.orders_time = orders_time;
		this.status = status;
		this.paytype = paytype;
		this.orders_pay = orders_pay;
	}
	public OrdersVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
