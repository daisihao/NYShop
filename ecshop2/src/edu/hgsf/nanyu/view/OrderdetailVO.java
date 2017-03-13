package edu.hgsf.nanyu.view;

public class OrderdetailVO {
	private String orderdetail_id;
	private String orders_num;
	private String product_id;
	private String product_count;
	
	public OrderdetailVO() {
		super();
	}
	public OrderdetailVO(String orderdetail_id, String orders_num,
			String product_id, String product_count) {
		super();
		this.orderdetail_id = orderdetail_id;
		this.orders_num = orders_num;
		this.product_id = product_id;
		this.product_count = product_count;
	}
	public String getOrderdetail_id() {
		return orderdetail_id;
	}
	public void setOrderdetail_id(String orderdetail_id) {
		this.orderdetail_id = orderdetail_id;
	}
	public String getorders_num() {
		return orders_num;
	}
	public void setorders_num(String orders_num) {
		this.orders_num = orders_num;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public String getProduct_count() {
		return product_count;
	}
	public void setProduct_count(String product_count) {
		this.product_count = product_count;
	}
	
	
}
