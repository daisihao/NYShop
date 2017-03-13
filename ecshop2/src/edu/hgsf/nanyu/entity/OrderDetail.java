package edu.hgsf.nanyu.entity;

import java.io.Serializable;

public class OrderDetail implements Serializable {
	private static final long serialVersionUID = 5181834122678818053L;
	private int orderdetail_id;		//订单详细ID
	private String orders_num;			//订单编号
	private int product_id;			//产品ID
	private int product_count;		//产品数量

	public OrderDetail() {
		super();
	}

	public OrderDetail(int orderdetail_id, String orders_num, int product_id,
			int product_count) {
		super();
		this.orderdetail_id = orderdetail_id;
		this.orders_num = orders_num;
		this.product_id = product_id;
		this.product_count = product_count;
	}

	public int getOrderdetail_id() {
		return orderdetail_id;
	}

	public void setOrderdetail_id(int orderdetail_id) {
		this.orderdetail_id = orderdetail_id;
	}

	public String getorders_num() {
		return orders_num;
	}

	public void setorders_num(String orders_num) {
		this.orders_num = orders_num;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public int getProduct_count() {
		return product_count;
	}

	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}
}
