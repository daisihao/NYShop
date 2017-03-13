package edu.hgsf.nanyu.entity;

import java.io.Serializable;
import java.sql.Date;

public class ProductComment implements Serializable {
	private static final long serialVersionUID = -722460760782513557L;
	private int comment_id;
	private int product_id;
	private int customer_id;
	private int comment_num;
	private String comment_date;
	private String comment_type;
	private String comment_produte;
	public int getComment_id() {
		return comment_id;
	}
	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}
	public int getComment_num() {
		return comment_num;
	}
	public void setComment_num(int comment_num) {
		this.comment_num = comment_num;
	}
	
	public String getComment_type() {
		return comment_type;
	}
	public void setComment_type(String comment_type) {
		this.comment_type = comment_type;
	}
	public String getComment_produte() {
		return comment_produte;
	}
	public void setComment_produte(String comment_produte) {
		this.comment_produte = comment_produte;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getComment_date() {
		return comment_date;
	}
	public void setComment_date(String comment_date) {
		this.comment_date = comment_date;
	}
	public ProductComment(int comment_id, int product_id, int customer_id,
			int comment_num, String comment_date, String comment_type,
			String comment_produte) {
		super();
		this.comment_id = comment_id;
		this.product_id = product_id;
		this.customer_id = customer_id;
		this.comment_num = comment_num;
		this.comment_date = comment_date;
		this.comment_type = comment_type;
		this.comment_produte = comment_produte;
	}
	public ProductComment() {
		super();
	}
}
