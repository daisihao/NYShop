package edu.hgsf.nanyu.view;

public class Product_Comment_SearchVO {
      private String account;
      private String comment_date;
      private String comment_produte;
      private int product_id;
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getComment_date() {
		return comment_date;
	}
	public void setComment_date(String comment_date) {
		this.comment_date = comment_date;
	}
	public String getComment_produte() {
		return comment_produte;
	}
	public void setComment_produte(String comment_produte) {
		this.comment_produte = comment_produte;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public Product_Comment_SearchVO(String account, String comment_date,
			String comment_produte, int product_id) {
		super();
		this.account = account;
		this.comment_date = comment_date;
		this.comment_produte = comment_produte;
		this.product_id = product_id;
	}
	public Product_Comment_SearchVO() {
		super();
	}
	
      
}
