package edu.hgsf.nanyu.view;
public class Product_commentVO{
	String comment_id;
    String product_id;
    String customer_id;
    String comment_num;
    String comment_date;
    String comment_type;
    String comment_produte;
	public String getComment_id() {
		return comment_id;
	}
	public void setComment_id(String comment_id) {
		this.comment_id = comment_id;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getComment_num() {
		return comment_num;
	}
	public void setComment_num(String comment_num) {
		this.comment_num = comment_num;
	}
	public String getComment_date() {
		return comment_date;
	}
	public void setComment_date(String comment_date) {
		this.comment_date = comment_date;
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
	public Product_commentVO(String comment_id, String product_id,
			String customer_id, String comment_num, String comment_date,
			String comment_type, String comment_produte) {
		super();
		this.comment_id = comment_id;
		this.product_id = product_id;
		this.customer_id = customer_id;
		this.comment_num = comment_num;
		this.comment_date = comment_date;
		this.comment_type = comment_type;
		this.comment_produte = comment_produte;
	}
	public Product_commentVO() {
		super();
	}

}
