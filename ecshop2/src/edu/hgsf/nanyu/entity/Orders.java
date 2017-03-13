package edu.hgsf.nanyu.entity;

import java.io.Serializable;
import java.sql.Date;

public class Orders implements Serializable {
	private static final long serialVersionUID = -168358736319330618L;
	private int orders_id;			//订单ID
	private int consignee_id;		//配送ID
	private int customer_id;		//客户ID
	private String orders_no;		//订单编号
	private Date orders_time;		//订单时间
	private String status;			//订单状态
	private String paytype;			//支付方式
	private double orders_pay;		//支付金额

	public Orders() {
		super();
	}

	public Orders(int orders_id, int consignee_id, int customer_id,
			String orders_no, Date orders_time, String status, String paytype,
			double orders_pay) {
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

	public int getOrders_id() {
		return orders_id;
	}

	public void setOrders_id(int orders_id) {
		this.orders_id = orders_id;
	}

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

	public String getOrders_no() {
		return orders_no;
	}

	public void setOrders_no(String orders_no) {
		this.orders_no = orders_no;
	}

	public Date getOrders_time() {
		return orders_time;
	}

	public void setOrders_time(Date orders_time) {
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

	public double getOrders_pay() {
		return orders_pay;
	}

	public void setOrders_pay(double orders_pay) {
		this.orders_pay = orders_pay;
	}

}
